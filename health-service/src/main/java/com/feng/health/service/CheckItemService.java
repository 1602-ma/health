package com.feng.health.service;

import com.feng.health.pojo.CheckItem;

/**
 * @author f
 * @date 2022/12/24 12:22
 */
public interface CheckItemService {

    /**
     * 新增检查项
     * @param checkItem checkItem
     * @return      `   int
     */
    int add(CheckItem checkItem);
}
