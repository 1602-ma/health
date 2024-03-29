package com.feng.health.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * 角色
 * @author f
 * @date 2022/12/23 21:06
 */
@Data
public class Role implements Serializable {

    private Integer id;

    /** 角色名称 */
    private String name;

    /** 角色关键字，用于权限控制 */
    private String keyword;

    /** 描述 */
    private String description;

    private Set<User> users = new HashSet<User>(0);
    private Set<Permission> permissions = new HashSet<Permission>(0);
    private LinkedHashSet<Menu> menus = new LinkedHashSet<Menu>(0);
}
