package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysTask;
import com.ruoyi.system.domain.WorkerTask;
import com.ruoyi.system.domain.WorkerTaskView;

import java.util.List;

/**
 * ClassName: TranceService <br/>
 * Description: <br/>
 * date: 2020/2/19 13:46<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ITranceService {
    List<WorkerTaskView> selectTranceBywId(Long wId);
}
