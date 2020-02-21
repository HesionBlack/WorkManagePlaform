package com.ruoyi.system.domain;/**
 * ClassName: WorkerPerformHistory <br/>
 * Description: <br/>
 * date: 2020/2/21 7:56<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2020-02-21 07:56
 **/
@Data
public class WorkerPerformHistory extends BaseEntity {
    private String id;
    private Long uId;
    private String reason;
    private Float score;
    private String type;
}
