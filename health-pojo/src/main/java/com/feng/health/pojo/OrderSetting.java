package com.feng.health.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 预约设置
 * @author f
 * @date 2022/12/23 21:02
 */
@Data
public class OrderSetting implements Serializable {

    private Integer id ;

    /** 预约设置日期 */
    private Date orderDate;

    /** 可预约人数 */
    private int number;

    /** 已预约人数 */
    private int reservations ;
}
