package com.ruoyi.system.service.impl;/**
 * ClassName: TaskServiceImpl <br/>
 * Description: <br/>
 * date: 2020/2/19 11:23<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysTask;
import com.ruoyi.system.domain.WorkerTask;
import com.ruoyi.system.domain.WorkerTaskView;
import com.ruoyi.system.mapper.TaskMapper;
import com.ruoyi.system.service.ITaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2020-02-19 11:23
 **/
@Service
public class TaskServiceImpl implements ITaskService {
    @Autowired
    TaskMapper taskMapper;
    @Override
    public List<SysTask> selectTaskList(SysTask sysTask) {
        return taskMapper.selectTaskList(sysTask);
    }

    @Override
    public Integer applyTo(WorkerTask workerTask) {

        return taskMapper.applyTo(workerTask);
    }

    @Override
    public List<WorkerTaskView> selectWorkerTaskList(WorkerTaskView workerTaskView) {
        return taskMapper.selectWorkerTaskList(workerTaskView);
    }

    @Override
    public Integer updateCompletion(WorkerTaskView workerTaskView) {
        return taskMapper.updateCompletion(workerTaskView);
    }

    @Override
    public void updateAllocationStatu(String taskId) {
        taskMapper.updateAllocationStatu(taskId);
    }
}
