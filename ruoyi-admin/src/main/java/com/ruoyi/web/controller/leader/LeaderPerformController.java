package com.ruoyi.web.controller.leader;/**
 * ClassName: LeaderPerformController <br/>
 * Description: <br/>
 * date: 2020/2/19 19:45<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.WorkerPerformance;
import com.ruoyi.system.domain.WorkerPerformanceView;
import com.ruoyi.system.service.IPerformService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2020-02-19 19:45
 **/
@Controller
@RequestMapping("leader/Performance")
public class LeaderPerformController extends BaseController {
    String prefix = "leader";
    @Autowired
    IPerformService performService;

    @GetMapping("")
    public String perfor() {
        return prefix + "/performance";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(WorkerPerformanceView workerPerformanceView) {
        startPage();
        List<WorkerPerformanceView> list = performService.selectPerformList(workerPerformanceView);
        return getDataTable(list);
    }

    @GetMapping("/Modify/{uId}/{type}")
    public String modify(@PathVariable Long uId, @PathVariable Integer type, ModelMap modelMap) {
        modelMap.put("userId", uId);
        modelMap.put("type", type);
        return prefix + "/Modify";
    }

    @PostMapping("/Modify")
    @ResponseBody
    public AjaxResult modify(WorkerPerformance workerPerformance) {
        String loginName = ShiroUtils.getLoginName();
        Float currentScore = performService.getCurrentScore(workerPerformance.getWId());
        workerPerformance.setUpdateBy(loginName);
        workerPerformance.setUpdateTime(new Date());
        Float afterScore = 0.0f;
        if (workerPerformance.getType() == 0) {
            afterScore = currentScore + workerPerformance.getScore();
        } else {
            afterScore = currentScore - workerPerformance.getScore();
        }
        workerPerformance.setAfterScore(afterScore);
        Integer updatePerform = performService.updatePerform(workerPerformance);
        if (updatePerform >= 1) {
            performService.recordChange(workerPerformance);
            return AjaxResult.success();
        } else {
            return AjaxResult.error("修改绩点失败,请重试!");
        }
    }
}
