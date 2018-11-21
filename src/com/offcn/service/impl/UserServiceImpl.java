package com.offcn.service.impl;

import com.offcn.entity.User;
import com.offcn.mapper.UserMapper;
import com.offcn.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Override
    public Integer addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public User selectUserByNick(String unick,String upwd) {
        User user = userMapper.selectUserByNick(unick);
        if(user!=null){
            if(user.getUpwd().equals(upwd)){
                return user;
            }
        }
        return null;
    }

    @Override
    public User selectUser(String unick) {
        return userMapper.selectUserByNick(unick);
    }
}
