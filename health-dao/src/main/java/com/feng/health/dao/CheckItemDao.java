package com.feng.health.dao;

import com.feng.health.pojo.CheckItem;

/**
 * @author f
 * @date 2022/12/24 21:51
 */
public interface CheckItemDao {

    /**
     * 新增检查项
     * @param checkItem checkItem
     * @return          int
     */
    int add(CheckItem checkItem);
}
