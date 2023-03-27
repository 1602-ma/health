package com.feng.health.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 权限
 * @author f
 * @date 2022/12/23 21:05
 */
@Data
public class Permission implements Serializable {

    private Integer id;

    /** 权限名称 */
    private String name;

    /** 权限关键字，用于权限控制 */
    private String keyword;

    /** 描述 */
    private String description;

    private Set<Role> roles = new HashSet<Role>(0);
}
