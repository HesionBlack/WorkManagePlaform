package com.ruoyi.web.controller.leader;/**
 * ClassName: LeaderWorkerTranceController <br/>
 * Description: <br/>
 * date: 2020/2/19 13:40<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.system.domain.WorkerTaskView;
import com.ruoyi.system.service.ITranceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2020-02-19 13:40
 **/
@Controller
@RequestMapping("/leader/trance")
public class LeaderWorkerTranceController extends BaseController {
    String prefix = "leader";
    @Autowired
    ITranceService tranceService;
    @GetMapping("{wId}")
    public String trance(@PathVariable Long wId, ModelMap mmap){
        mmap.put("wId",wId);
        return prefix+"/trance";
    }

    @PostMapping("list/{wId}")
    @ResponseBody
    public TableDataInfo tranceList(@PathVariable Long wId){
        startPage();
        List<WorkerTaskView> list = tranceService.selectTranceBywId(wId);
        return getDataTable(list);
    }
}
