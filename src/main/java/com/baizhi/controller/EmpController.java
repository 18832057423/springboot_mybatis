package com.baizhi.controller;

import com.baizhi.entity.Emp;
import com.baizhi.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("emp")
public class EmpController {

    @Autowired
    private EmpService empService;

    @ResponseBody
    @RequestMapping("queryall")
    public List<Emp> queryAll(){
        List<Emp> list = empService.select();
        return list;
    }

    @ResponseBody
    @RequestMapping("queryByPager")
    public Map<String,Object> queryByPager(Integer rows, Integer page){
        Map<String, Object> map = empService.queryByPager(rows, page);
        return map;
    }

    @ResponseBody
    @RequestMapping("option")
    public void option(Emp emp,String oper){
        if ("add".equals(oper)){
            empService.insert(emp);
        }else if("edit".equals(oper)){
            empService.update(emp);
        }else if("del".equals(oper)){
            empService.delete(emp.getId());
        }

    }



    /*@RequestMapping("add")
    public String add(Emp emp){
       empService.insert(emp);
       return "emp/queryall";
    }

    @RequestMapping("delete")
    public String delete(String id){
        empService.delete(id);
        return "emp/queryall";
    }

    @RequestMapping("update")
    public String update(Emp emp){
        empService.update(emp);
        return "emp/queryall";
    }*/
}
