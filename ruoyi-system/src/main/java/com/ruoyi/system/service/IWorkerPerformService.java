package com.ruoyi.system.service;

import com.ruoyi.system.domain.WorkerPerformHistory;

import java.util.List;

/**
 * ClassName: IWorkerPerform <br/>
 * Description: <br/>
 * date: 2020/2/21 7:52<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface IWorkerPerformService {
    List<WorkerPerformHistory> listWorkPerform(Long userId);

    Float finalGrade(Long userId);
}
