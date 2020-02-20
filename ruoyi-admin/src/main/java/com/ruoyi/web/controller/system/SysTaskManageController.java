package com.ruoyi.web.controller.system;/**
 * ClassName: SysTaskManageController <br/>
 * Description: <br/>
 * date: 2020/2/20 19:45<br/>
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
import com.ruoyi.system.service.ITaskManageService;
import io.swagger.models.auth.In;
import org.aspectj.weaver.loadtime.Aj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2020-02-20 19:45
 **/
@Controller
@RequestMapping("/system/task")
public class SysTaskManageController extends BaseController {
    String prefix = "system/task";
    @Autowired
    ITaskManageService taskManageService;

    @GetMapping()
    public String taskPage() {
        return prefix + "/taskManage";
    }

    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysTask sysTask) {
        startPage();
        List<SysTask> list = taskManageService.selectTaskList(sysTask);
        return getDataTable(list);
    }

    @GetMapping("/add")
    public String addPage() {
        return prefix + "/add";
    }

    @PostMapping("/add")
    @ResponseBody
    public AjaxResult add(SysTask sysTask) {
        sysTask.setCreateBy(ShiroUtils.getLoginName());
        Integer result = taskManageService.add(sysTask);
        if (result > 0) {
            return AjaxResult.success();
        } else {
            return AjaxResult.error("新增失败!请重试");
        }
    }

    @GetMapping("/edit/{id}")
    public String editPage(@PathVariable String id, ModelMap mmap) {
        mmap.put("task",taskManageService.selectTaskById(id));
        return prefix+"/edit";
    }

    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult edit(SysTask sysTask) {
        sysTask.setUpdateBy(ShiroUtils.getLoginName());
        Integer result = taskManageService.edit(sysTask);
        if (result > 0) {
            return AjaxResult.success();
        } else {
            return AjaxResult.error("新增失败!请重试");
        }
    }

    @PostMapping("/remove/{id}")
    @ResponseBody
    public AjaxResult remove(@PathVariable String id){
        Integer remove=taskManageService.remove(id);
        if(remove>0){
            return AjaxResult.success("删除成功!");
        }else {
            return AjaxResult.error("删除失败!");
        }
    }

}
