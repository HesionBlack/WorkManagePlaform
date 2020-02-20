package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.WorkerPerformance;
import com.ruoyi.system.domain.WorkerPerformanceView;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * ClassName: PerformMapper <br/>
 * Description: <br/>
 * date: 2020/2/19 20:17<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface PerformMapper {
    @Select("SELECT * FROM v_worker_perform")
    @Results(id = "SysPerformResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
                    @Result(property = "userName", column = "user_name"),
            })
    List<WorkerPerformanceView> selectPerformList(WorkerPerformanceView workerPerformanceView);

    @Select("SELECT perform FROM worker_performance WHERE wId = #{userId}")
    Float getCurrentScore(Long userId);

    @Update("UPDATE worker_performance SET perform=#{afterScore},updateby=#{updateBy},update_time=#{updateTime} WHERE wId=#{wId}")
    Integer updatePerform(WorkerPerformance workerPerformance);

    @Insert("INSERT INTO record_performChange VALUE(REPLACE(UUID(), '-', ''),#{wId},#{reason},#{score},#{type},#{updateBy},#{updateTime})")
    void recordChange(WorkerPerformance workerPerformance);
}
