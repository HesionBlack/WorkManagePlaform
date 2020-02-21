package com.ruoyi.system.domain;/**
 * ClassName: WorkerPerformTotal <br/>
 * Description: <br/>
 * date: 2020/2/21 7:49<br/>
 *
 * @author Hesion<br />
 * @version
 * @since JDK 1.8
 */

import lombok.Data;

/**
 * @program: ruoyi
 *
 * @description:
 *
 * @author: hesion
 *
 * @create: 2020-02-21 07:49
 **/
@Data
public class WorkerPerformTotal {
    private String type;
    private String handle;
    private Float score;
    private Integer total;
}
