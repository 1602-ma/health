package com.feng.health.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * 封装前端查询条件
 * @author f
 * @date 2022/12/23 21:23
 */
@Data
public class QueryPageBean implements Serializable {

    /** 页码 */
    private Integer currentPage;

    /** 每页记录数 */
    private Integer pageSize;

    /** 查询条件 */
    private String queryString;
}
