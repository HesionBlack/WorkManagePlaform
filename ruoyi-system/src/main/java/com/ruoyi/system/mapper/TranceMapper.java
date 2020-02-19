package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.WorkerTaskView;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * ClassName: TranceMapper <br/>
 * Description: <br/>
 * date: 2020/2/19 14:04<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface TranceMapper {
    @Select("SELECT * FROM v_worker_task WHERE wId=#{wId}")
    @Results(id = "SysPetResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
                    @Result(property = "updateBy", column = "update_by"),
                    @Result(property = "createBy", column = "create_by"),
            })
    List<WorkerTaskView> selectTranceBywId(Long wId);
}
