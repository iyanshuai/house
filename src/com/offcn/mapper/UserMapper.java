package com.offcn.mapper;

import com.offcn.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    /*增加用户*/
    Integer addUser(User user);
    /*用户的登录*/
    User selectUserByNick(@Param("unick")String unick);

}
