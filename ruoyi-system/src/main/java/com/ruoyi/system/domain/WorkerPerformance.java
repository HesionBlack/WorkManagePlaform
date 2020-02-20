package com.ruoyi.system.domain;

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (WorkerPerformance)实体类
 *
 * @author makejava
 * @since 2020-02-19 20:25:52
 */
@Data
public class WorkerPerformance extends BaseEntity implements Serializable {
    private static final long serialVersionUID = -78897382448367902L;
    private Long wId;
    private Integer perform;
    private String reason;
    private Integer type;
    private Float score;
    private Float afterScore;
}