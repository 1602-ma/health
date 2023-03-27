package com.feng.health.controller;

import com.feng.health.constant.MessageConstant;
import com.feng.health.entity.Result;
import com.feng.health.pojo.CheckItem;
import com.feng.health.service.CheckItemService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 检查项
 * @author f
 * @date 2022/12/24 12:11
 */
@RestController
@RequestMapping("/checkitem")
@Api(value = "检查项接口", description = "检查项相关api")
public class CheckItemController {

    @Autowired
    private CheckItemService checkItemService;

    /**
     * 添加 检查项
     * @param checkItem checkItem
     * @return          Result
     */
    @PostMapping("/add")
    @ApiOperation("新增检查项")
    public Result add(@RequestBody CheckItem checkItem) {
        int row = checkItemService.add(checkItem);
        Result result = null;
        if (row > 0) {
            result = new Result(true, MessageConstant.ADD_CHECKITEM_SUCCESS);
        }else {
            result = new Result(false, MessageConstant.ADD_CHECKITEM_FAIL);
        }
        return result;
    }
}
