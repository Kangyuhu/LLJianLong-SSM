package com.lljl.lu.controller;

import com.lljl.lu.bean.User;
import com.lljl.lu.service.LuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("lu")
public class LuController {

    @Autowired
    LuService luService;

    @RequestMapping("test")
    public String test(Model model){
        model.addAttribute("msg","疾风，亦有归途");
        model.addAttribute("ls","66666666666666");
        return "update";
    }

    @RequestMapping("addUser")
    public String addUser(User user){

        System.out.println("111111111111111111111111");
        System.out.println(user.getName());
        System.out.println(user.getId());

        int i = luService.update(user);
        if (i > 0){
            return "redirect:/lu/getUserAll";
        }else {
            return "error";
        }
    }

    //根据ID查找
    @RequestMapping("getById")
    public String getById(int id,Model model){
        User user = luService.getById(id);
        if (null != user){
            model.addAttribute("id",user.getId());
            model.addAttribute("name",user.getName());
            model.addAttribute("age",user.getAge());
            return "update";
        }else {
            return "error";
        }

    }


    //删除
    @RequestMapping("deleteUser")
    public String deleteUser(@RequestParam("id") List<Integer> did){
        int i = luService.deleteUser(did);
        if (i > 0){
            return "redirect:/lu/getUserAll";
        }else {
            return "error";
        }
    }

    //查找全部
    @RequestMapping("getUserAll")
    public String getUserAll(Model model){
        List<User> userAll = luService.getUserAll();

        if (null != userAll){
            model.addAttribute("userAll",userAll);
            return "lu";
        }else {
            return "error";
        }
    }


    //根据ID修改
    @RequestMapping("update")
    public String update(User user){

        System.out.println("111111111111111111111111");
        System.out.println(user.getName());
        System.out.println(user.getId());

        int i = luService.addUser(user);
        if (i > 0){
            return "redirect:/lu/getUserAll";
        }else {
            return "error";
        }
    }


}
