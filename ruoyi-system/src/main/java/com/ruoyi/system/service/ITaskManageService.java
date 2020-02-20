package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysTask;

import java.util.List;

/**
 * ClassName: TaskManageService <br/>
 * Description: <br/>
 * date: 2020/2/20 20:10<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ITaskManageService {
    List<SysTask> selectTaskList(SysTask sysTask);

    Integer add(SysTask sysTask);

    SysTask selectTaskById(String id);

    Integer edit(SysTask sysTask);

    Integer remove(String id);
}
