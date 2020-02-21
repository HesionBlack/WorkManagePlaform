package com.ruoyi.system.service.impl;/**
 * ClassName: WorkerPerformServiceImpl <br/>
 * Description: <br/>
 * date: 2020/2/21 7:52<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.WorkerPerformHistory;
import com.ruoyi.system.mapper.WorkerPerformMapper;
import com.ruoyi.system.service.IWorkerPerformService;
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
 * @create: 2020-02-21 07:52
 **/
@Service
public class WorkerPerformServiceImpl implements IWorkerPerformService {
   @Autowired
   WorkerPerformMapper workerPerformMapper;
    @Override
    public List<WorkerPerformHistory> listWorkPerform(Long userId) {
        return workerPerformMapper.listWorkPerform(userId);
    }

    @Override
    public Float finalGrade(Long userId) {
        return workerPerformMapper.finalGrade(userId);
    }
}
