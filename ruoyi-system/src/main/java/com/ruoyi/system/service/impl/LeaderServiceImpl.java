package com.ruoyi.system.service.impl;/**
 * ClassName: LeaderServiceImpl <br/>
 * Description: <br/>
 * date: 2020/2/19 8:37<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.system.domain.SysUser;
import com.ruoyi.system.mapper.LeaderMapper;
import com.ruoyi.system.service.ILeaderService;
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
 * @create: 2020-02-19 08:37
 **/
@Service
public class LeaderServiceImpl implements ILeaderService {

    @Autowired
    LeaderMapper leaderMapper;
    @Override
    public List<SysUser> selectWorkerList(SysUser user) {
        return leaderMapper.selectWorkerList(user);
    }
}
