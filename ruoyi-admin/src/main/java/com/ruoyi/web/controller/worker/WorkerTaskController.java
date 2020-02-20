package com.ruoyi.web.controller.worker;/**
 * ClassName: WorkerTaskController <br/>
 * Description: <br/>
 * date: 2020/2/20 15:18<br/>
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
import com.ruoyi.system.domain.WorkerTaskView;
import com.ruoyi.system.service.ITaskService;
import io.swagger.models.auth.In;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2020-02-20 15:18
 **/
@Controller
@RequestMapping("/worker/task")
public class WorkerTaskController extends BaseController {
    String prefix = "worker";
    @Autowired
    ITaskService taskService;

    @GetMapping()
    public String Task() {
        return prefix + "/task";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo List(WorkerTaskView workerTaskView) {
        startPage();
        Long userId = ShiroUtils.getUserId();
        workerTaskView.setWId(userId);
        List<WorkerTaskView> list = taskService.selectWorkerTaskList(workerTaskView);
        return getDataTable(list);
    }

    @GetMapping("change/{completion}/{taskId}")
    public String changePage(@PathVariable Integer completion,@PathVariable String taskId,  ModelMap mmap){
            mmap.put("completion",completion);
            mmap.put("taskId",taskId);
            return prefix+"/change";
    }

    @PostMapping("change")
    @ResponseBody
    public AjaxResult change(String taskId, Integer completion){
        String loginName = ShiroUtils.getLoginName();
        WorkerTaskView workerTaskView = new WorkerTaskView();
        workerTaskView.setUpdateBy(loginName);
        workerTaskView.setTaskId(taskId);
        workerTaskView.setCompletion(completion);
        workerTaskView.setUpdateTime(new Date());
        Integer updateCompletion=taskService.updateCompletion(workerTaskView);
        if(updateCompletion>=1){
            return AjaxResult.success("修改进度成功");
        }else {
            return AjaxResult.error("操作失败");
        }
    }
}
