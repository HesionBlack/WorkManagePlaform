package com.ruoyi.system.domain;/**
 * ClassName: AllocatedTask <br/>
 * Description: <br/>
 * date: 2020/2/19 12:59<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * @program: ruoyi
 * @description:
 * @author: hesion
 * @create: 2020-02-19 12:59
 **/
@Data
public class WorkerTaskView extends BaseEntity {
    private String id;
    private Long wId;
    private String name;
    private String describe;
    private String remark;
    private String taskId;
    private Integer completion;
    private String del_flag;
}
