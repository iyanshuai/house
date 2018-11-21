package com.offcn.service;

import com.offcn.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserService {
    Integer addUser(User user);
    /*用户的登录*/
    public User selectUserByNick(String unick,String upwd);
    /*查询对象是否存在*/
    public User selectUser(String unick);
}
