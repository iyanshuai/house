package com.offcn.controller;
import com.alibaba.fastjson.JSON;
import com.offcn.entity.User;
import com.offcn.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {
    @Resource
    private UserService userService;
    @RequestMapping("toRegsiter")
    public String toRegsiter(){

        return "register";
    }

    @RequestMapping("/regsiter")
    @ResponseBody
    public Object addUser(@RequestParam("Jsonuser")String Jsonuser){
        Map<String,Object> map=new HashMap<String, Object>();
        User user=JSON.parseObject(Jsonuser, User.class);
        Integer num = userService.addUser(user);
        if(num>0){
            map.put("flag","true");
        }else {
            map.put("flag","false");
        }
        return map;
    }

    @RequestMapping("/toLogin")
    public String toLogin(){
     return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String toLogin(@RequestParam("unick")String unick,
                          @RequestParam("upwd")String upwd,
                          Model model){
        User user = userService.selectUserByNick(unick, upwd);
        if(user!= null && !user.getUname().equals("admin")){
            return "house_list";
        }else if(user!= null && user.getUname().equals("admin")){
            return "manage";
        }
        return "redirect:toRegsiter";
    }


    @RequestMapping("/donick")
    @ResponseBody
    public Object donick(@RequestParam(value = "unick",required = false)String unick){
        Map<String,Object> map=new HashMap<String,Object>();
        User user = userService.selectUser(unick);
        if(user!=null){
            map.put("flag","true");
        }else {
            map.put("flag","flase");
        }
        return map;
    }

}
