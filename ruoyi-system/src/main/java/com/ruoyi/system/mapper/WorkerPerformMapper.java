package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.WorkerPerformHistory;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * ClassName: WorkerPerformMapper <br/>
 * Description: <br/>
 * date: 2020/2/21 8:00<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface WorkerPerformMapper {
    @Select("SELECT * FROM record_performchange WHERE uId=#{userId}")
    @Results(id = "SysWorkerTaskResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
                    @Result(property = "createBy", column = "create_by"),
                    @Result(property = "updateBy", column = "update_by"),
            })
    List<WorkerPerformHistory> listWorkPerform(Long userId);

    @Select("SELECT perform from worker_performance WHERE wId=#{userId}")
    Float finalGrade(Long userId);
}
