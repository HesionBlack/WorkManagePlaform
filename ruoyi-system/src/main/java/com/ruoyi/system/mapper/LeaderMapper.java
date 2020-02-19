package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * ClassName: LeaderMapper <br/>
 * Description: <br/>
 * date: 2020/2/19 8:38<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface LeaderMapper {

    List<SysUser> selectWorkerList(SysUser user);
}
