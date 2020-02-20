package com.ruoyi.system.service.impl;/**
 * ClassName: PerformServiceImpl <br/>
 * Description: <br/>
 * date: 2020/2/19 20:16<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.WorkerPerformance;
import com.ruoyi.system.domain.WorkerPerformanceView;
import com.ruoyi.system.mapper.PerformMapper;
import com.ruoyi.system.service.IPerformService;
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
 * @create: 2020-02-19 20:16
 **/
@Service
public class PerformServiceImpl implements IPerformService {
    @Autowired
    PerformMapper performMapper;
    @Override
    public List<WorkerPerformanceView> selectPerformList(WorkerPerformanceView workerPerformanceView) {
        return performMapper.selectPerformList(workerPerformanceView);
    }

    @Override
    public Float getCurrentScore(Long userId) {
        return performMapper.getCurrentScore(userId);
    }

    @Override
    public Integer updatePerform(WorkerPerformance workerPerformance) {
        return performMapper.updatePerform(workerPerformance);
    }

    @Override
    public void recordChange(WorkerPerformance workerPerformance) {
        performMapper.recordChange(workerPerformance);
    }
}
