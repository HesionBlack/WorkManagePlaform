package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysTask;
import com.ruoyi.system.domain.WorkerTask;
import com.ruoyi.system.domain.WorkerTaskView;

import java.util.List;

/**
 * ClassName: TaskService <br/>
 * Description: <br/>
 * date: 2020/2/19 11:22<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ITaskService {

    List<SysTask> selectTaskList(SysTask sysTask);

    Integer applyTo(WorkerTask workerTask);

    List<WorkerTaskView> selectWorkerTaskList(WorkerTaskView workerTaskView);

    Integer updateCompletion(WorkerTaskView workerTaskView);
}
