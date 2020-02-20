package com.ruoyi.system.service;

import com.ruoyi.system.domain.WorkerPerformance;
import com.ruoyi.system.domain.WorkerPerformanceView;

import java.util.List;

/**
 * ClassName: PerformService <br/>
 * Description: <br/>
 * date: 2020/2/19 20:15<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface IPerformService {
    List<WorkerPerformanceView> selectPerformList(WorkerPerformanceView workerPerformanceView);

    Float getCurrentScore(Long userId);

    Integer updatePerform(WorkerPerformance workerPerformance);

    void recordChange(WorkerPerformance workerPerformance);
}
