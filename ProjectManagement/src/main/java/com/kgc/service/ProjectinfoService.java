package com.kgc.service;

import com.kgc.pojo.Projectinfo;

import java.util.List;

public interface ProjectinfoService {
    List<Projectinfo> selectAll(Integer status,int pageIndex,int pageSize);
    Projectinfo getbyid(int id);
    int upd(Projectinfo projectinfo);
}
