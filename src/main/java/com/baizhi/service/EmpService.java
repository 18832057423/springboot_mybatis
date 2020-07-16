package com.baizhi.service;

import com.baizhi.entity.Emp;

import java.util.List;
import java.util.Map;

public interface EmpService {

    public List<Emp> select();

    public Map<String,Object> queryByPager(Integer rows, Integer page);

    public Emp selectOne(String id);

    public void insert(Emp emp);

    public void delete(String id);

    public void update(Emp emp);
}
