package com.feng.health.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * 封装返回页面结果格式 {flag : true, message: 'xxx', data: 数据}
 * @author f
 * @date 2022/12/23 21:15
 */
@Data
public class Result implements Serializable {

    /** 执行结果，true为执行成功 false为执行失败 */
    private boolean flag;

    /** 返回结果信息 */
    private String message;

    /** 返回数据 */
    private Object data;

    public boolean isFlag() {
        return flag;
    }

    public Result(boolean flag, String message) { // 保存、修改保存
        super();
        this.flag = flag;
        this.message = message;
    }

    public Result(boolean flag, String message, Object data) {// 查询回显
        this.flag = flag;
        this.message = message;
        this.data = data;
    }
}
