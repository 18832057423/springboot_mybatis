package com.baizhi.dao;

import com.baizhi.entity.Emp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmpDao {

    public List<Emp> select();

    public List<Emp> queryByPager(@Param("start") Integer start,@Param("size") Integer size);

    public Integer queryTotalCount();

    public Emp selectOne(String id);

    public void insert(Emp emp);

    public void delete(String id);

    public void update(Emp emp);
}
