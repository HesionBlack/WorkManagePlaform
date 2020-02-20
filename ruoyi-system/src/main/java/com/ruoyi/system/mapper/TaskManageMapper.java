package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysTask;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * ClassName: TaskManageMapper <br/>
 * Description: <br/>
 * date: 2020/2/20 20:12<br/>
 *
 * @author Hesion<br />
 * @since JDK 1.8
 */
@Mapper
public interface TaskManageMapper {
    @Select({"<script> " +
            "SELECT * FROM sys_task  where del_flag = '0'" +
            "<if test=\"name != null and name != ''\">" +
            "AND name LIKE \'%${name}%\'</if>" +
            "<if test=\"params.beginTime != null and params.beginTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &gt;= date_format(#{params.beginTime},'%y%m%d')</if>" +
            "<if test=\"params.endTime != null and params.endTime != ''\">" +
            "AND date_format(createTime,'%y%m%d') &lt;= date_format(#{params.endTime},'%y%m%d')</if>" +
            "</script>"})
    @Results(id = "SysTaskManageResult",
            value = {
                    @Result(property = "createTime", column = "create_time"),
                    @Result(property = "updateTime", column = "update_time"),
                    @Result(property = "updateBy", column = "update_by"),
                    @Result(property = "createBy", column = "create_by"),
            })
    List<SysTask> selectTaskList(SysTask sysTask);

    @Insert("INSERT INTO sys_task VALUE(#{id},#{name},#{describe},#{remark},#{mallocStatu},#{del_flag},#{createTime},#{updateTime},#{createBy},#{updateBy})")
    Integer add(SysTask sysTask);

    @Select("SELECT * FROM sys_task WHERE id=#{id}")
    SysTask selectTaskById(String id);

    @Update("UPDATE sys_task SET name=#{name},`describe`=#{describe},remark=#{remark},update_by=#{updateBy},update_time=#{updateTime} WHERE id=#{id}")
    Integer edit(SysTask sysTask);

    @Delete("DELETE FROM sys_task WHERE id=#{id}")
    Integer remove(String id);
}
