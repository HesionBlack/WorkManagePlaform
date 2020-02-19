package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysUser;

import java.util.List;

/**
 * ClassName: LeaderService <br/>
 * Description: <br/>
 * date: 2020/2/19 8:37<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
public interface ILeaderService {
    List<SysUser> selectWorkerList(SysUser user);
}
