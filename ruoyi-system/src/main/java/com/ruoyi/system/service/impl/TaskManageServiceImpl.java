package com.ruoyi.system.service.impl;/**
 * ClassName: TaskManageServiceImpl <br/>
 * Description: <br/>
 * date: 2020/2/20 20:11<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.exception.BusinessException;
import com.ruoyi.system.domain.SysTask;
import com.ruoyi.system.mapper.TaskManageMapper;
import com.ruoyi.system.service.ITaskManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
 * @create: 2020-02-20 20:11
 **/
@Service
public class TaskManageServiceImpl implements ITaskManageService {
    @Autowired
    TaskManageMapper taskManageMapper;
    @Override
    public List<SysTask> selectTaskList(SysTask sysTask) {
        return taskManageMapper.selectTaskList(sysTask);
    }

    @Override
    public Integer add(SysTask sysTask) {
        sysTask.setId(UUID.randomUUID().toString().substring(0,10));
        sysTask.setCreateTime(new Date());
        sysTask.setMallocStatu(0);
        sysTask.setDel_flag("0");
        return taskManageMapper.add(sysTask);
    }

    @Override
    public SysTask selectTaskById(String id) {
        return taskManageMapper.selectTaskById(id);
    }

    @Override
    public Integer edit(SysTask sysTask) {
        sysTask.setUpdateTime(new Date());
        return taskManageMapper.edit(sysTask);
    }

    @Override
    public Integer remove(String id) {
        if (taskManageMapper.isDistribution(id) > 0)
        {
            throw new BusinessException(String.format("该任务已分配,不能删除"));
        }
        return taskManageMapper.remove(id);
    }
}
