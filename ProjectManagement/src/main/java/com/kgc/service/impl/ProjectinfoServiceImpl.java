package com.kgc.service.impl;

import com.kgc.mapper.ProjectinfoMapper;
import com.kgc.pojo.Projectinfo;
import com.kgc.pojo.ProjectinfoExample;
import com.kgc.service.ProjectinfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("projectinfoService")
public class ProjectinfoServiceImpl implements ProjectinfoService {
    @Resource
    ProjectinfoMapper projectinfoMapper;

    @Override
    public List<Projectinfo> selectAll(Integer status, int pageIndex, int pageSize) {
        ProjectinfoExample projectinfoExample=new ProjectinfoExample();
        ProjectinfoExample.Criteria criteria = projectinfoExample.createCriteria();
        if(status!=null&&status!=-1){
            criteria.andStatusEqualTo(status);
        }else{
            return projectinfoMapper.selectByExample(null);
        }
        return projectinfoMapper.selectByExample(projectinfoExample);
    }

    @Override
    public Projectinfo getbyid(int id) {
        return projectinfoMapper.selectByPrimaryKey(id);
    }

    @Override
    public int upd(Projectinfo projectinfo) {
        return projectinfoMapper.updateByPrimaryKeySelective(projectinfo);
    }
}
