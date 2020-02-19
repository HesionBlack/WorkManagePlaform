package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysTask;
import com.ruoyi.system.domain.WorkerTask;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * ClassName: TaskMapper <br/>
 * Description: <br/>
 * date: 2020/2/19 11:26<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface TaskMapper {
    @Select("SELECT * FROM sys_task WHERE del_flag='0'")
    @Results(id = "SysTaskResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
            })
    List<SysTask> selectTaskList(SysTask sysTask);

    @Insert("INSERT INTO worker_task VALUES(#{wt.id},#{wt.wId},#{wt.taskId},#{wt.completion},#{wt.createTime},#{wt.createBy},#{wt.updateTime},#{wt.updateBy},#{wt.del_flag}) ")
    Integer applyTo(@Param("wt") WorkerTask wt);
}
