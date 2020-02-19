package com.ruoyi.system.service.impl;/**
 * ClassName: TranceServiceImpl <br/>
 * Description: <br/>
 * date: 2020/2/19 13:46<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.WorkerTaskView;
import com.ruoyi.system.mapper.TranceMapper;
import com.ruoyi.system.service.ITranceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2020-02-19 13:46
 **/
@Service
public class TranceServiceImpl implements ITranceService {
    @Autowired
    TranceMapper tranceMapper;

    @Override
    public List<WorkerTaskView> selectTranceBywId(Long wId) {
        return tranceMapper.selectTranceBywId(wId);
    }
}
