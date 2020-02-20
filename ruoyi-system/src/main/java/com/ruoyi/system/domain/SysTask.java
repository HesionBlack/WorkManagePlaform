package com.ruoyi.system.domain;/**
 * ClassName: SysTask <br/>
 * Description: <br/>
 * date: 2020/2/19 11:13<br/>
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
 * @create: 2020-02-19 11:13
 **/
@Data
public class SysTask extends BaseEntity {
    private String id;
    private String name;
    private String describe;
    private String remark;
    private String del_flag;
    private Integer mallocStatu;
}
