package com.ruoyi.system.domain;/**
 * ClassName: PeformanceView <br/>
 * Description: <br/>
 * date: 2020/2/19 20:13<br/>
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
 * @create: 2020-02-19 20:13
 **/
@Data
public class WorkerPerformanceView extends BaseEntity {
    private Long userId;
    private String userName;
    private String phonenumber;
    private Float perform;
}
