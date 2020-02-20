package com.ruoyi.web.controller.leader;/**
 * ClassName: LeaderWorkerAllocationController <br/>
 * Description: <br/>
 * date: 2020/2/19 10:08<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysTask;
import com.ruoyi.system.domain.WorkerTask;
import com.ruoyi.system.service.ITaskService;
import org.aspectj.weaver.loadtime.Aj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2020-02-19 10:08
 **/
@Controller
@RequestMapping("/leader/allocation")
public class LeaderWorkerAllocationController extends BaseController {
    String prefix  = "leader";

    @Autowired
    ITaskService taskService;
    @GetMapping("{uId}")
    public String allocation(@PathVariable String uId, ModelMap modelMap){
        modelMap.put("uId",uId);
        return prefix+"/allocation";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysTask sysTask) {
        startPage();
        List<SysTask> list = taskService.selectTaskList(sysTask);
        return getDataTable(list);
    }

    @PostMapping("/applyTo")
    @ResponseBody
    public AjaxResult applyTo(WorkerTask workerTask){
        String loginName = ShiroUtils.getLoginName();
        String s = UUID.randomUUID().toString();
        workerTask.setId(s);
        workerTask.setCreateBy(loginName);
        workerTask.setCreateTime(new Date());
        workerTask.setDel_flag("2");
        workerTask.setCompletion(0);
        Integer isApply = taskService.applyTo(workerTask);
        if(isApply >=1){
            taskService.updateAllocationStatu(workerTask.getTaskId());
            return AjaxResult.success();
        }else {
            return AjaxResult.error("分配任务失败，请重试");
        }
    }
}
