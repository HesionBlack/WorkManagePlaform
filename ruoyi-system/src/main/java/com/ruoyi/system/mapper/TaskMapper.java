package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysTask;
import com.ruoyi.system.domain.WorkerTask;
import com.ruoyi.system.domain.WorkerTaskView;
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
    //    @Select("SELECT * FROM sys_task WHERE del_flag='0'")
    @Select({"<script> " +
            "SELECT * FROM sys_task  where del_flag = '0' AND mallocStatu=0 " +
            "<if test=\"name != null and name != ''\">" +
            "AND name LIKE \'%${name}%\'</if>" +
            "<if test=\"params.beginTime != null and params.beginTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &gt;= date_format(#{params.beginTime},'%y%m%d')</if>" +
            "<if test=\"params.endTime != null and params.endTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &lt;= date_format(#{params.endTime},'%y%m%d')</if>" +
            "</script>"})
    @Results(id = "SysTaskResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
                    @Result(property = "createBy", column = "create_by"),
                    @Result(property = "updateBy", column = "update_by"),
            })
    List<SysTask> selectTaskList(SysTask sysTask);

    @Insert("INSERT INTO worker_task VALUES(#{wt.id},#{wt.wId},#{wt.taskId},#{wt.completion},#{wt.createTime},#{wt.createBy},#{wt.updateTime},#{wt.updateBy},#{wt.del_flag}) ")
    Integer applyTo(@Param("wt") WorkerTask wt);

    @Select({"<script> " +
            "SELECT * FROM v_worker_task  where del_flag = '2' AND wId=#{wId}" +
            "<if test=\"name != null and name != ''\">" +
            "AND name LIKE \'%${name}%\'</if>" +
            "<if test=\"params.beginTime != null and params.beginTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &gt;= date_format(#{params.beginTime},'%y%m%d')</if>" +
            "<if test=\"params.endTime != null and params.endTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &lt;= date_format(#{params.endTime},'%y%m%d')</if>" +
            "</script>"})
    @Results(id = "SysWorkerTaskResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
                    @Result(property = "createBy", column = "create_by"),
                    @Result(property = "updateBy", column = "update_by"),
            })
    List<WorkerTaskView> selectWorkerTaskList(WorkerTaskView workerTaskView);

    @Update("UPDATE worker_task SET completion=#{completion},update_by=#{updateBy},update_time=#{updateTime} WHERE id=#{taskId}")
    Integer updateCompletion(WorkerTaskView workerTaskView);

    @Update("UPDATE sys_task SET mallocStatu=1 WHERE id=#{taskId}")
    void updateAllocationStatu(String taskId);
}
