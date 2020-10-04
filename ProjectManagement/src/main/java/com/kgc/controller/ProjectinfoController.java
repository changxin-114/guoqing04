package com.kgc.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.pojo.Projectinfo;
import com.kgc.service.ProjectinfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ProjectinfoController {
    @Resource
    ProjectinfoService projectinfoService;

    @RequestMapping("/selectAll")
    public String selectAll(Model model, Integer status, HttpServletRequest request){
        int Num=1;
        String pageNum=request.getParameter("pageNum");
        if(pageNum!=null){
            Num=Integer.parseInt(pageNum);
        }
        int pageSize=3;
        PageHelper.orderBy("id desc");
        PageHelper.startPage(Num,pageSize);
        List<Projectinfo> projectinfos = projectinfoService.selectAll(status, Num, pageSize);
        PageInfo pageInfo=new PageInfo(projectinfos);
        model.addAttribute("pageInfo",pageInfo);
        return "index";
    }

    @RequestMapping("/getid")
    public String getid(int id,Model model){
        Projectinfo getbyid = projectinfoService.getbyid(id);
        model.addAttribute("p",getbyid);

        return "shen";
    }

    @RequestMapping("/upd")
    public String upd(Projectinfo projectinfo){
        projectinfoService.upd(projectinfo);
        return "redirect:selectAll";
    }
}
