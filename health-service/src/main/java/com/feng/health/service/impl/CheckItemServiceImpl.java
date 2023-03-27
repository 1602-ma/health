package com.feng.health.service.impl;

import com.feng.health.dao.CheckItemDao;
import com.feng.health.pojo.CheckItem;
import com.feng.health.service.CheckItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author f
 * @date 2022/12/24 16:12
 */
@Service
@Transactional
public class CheckItemServiceImpl implements CheckItemService {

    @Autowired
    private CheckItemDao checkItemDao;

    @Override
    public int add(CheckItem checkItem) {
        return checkItemDao.add(checkItem);
    }
}
