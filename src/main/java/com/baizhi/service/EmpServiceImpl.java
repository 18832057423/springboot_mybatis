package com.baizhi.service;

import com.baizhi.dao.EmpDao;
import com.baizhi.entity.Emp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class EmpServiceImpl implements EmpService{

    @Autowired
    private EmpDao empDao;

    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Emp> select() {
        return empDao.select();
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Map<String,Object> queryByPager(Integer rows, Integer page) {
        Map<String, Object> map = new HashMap<>();
//        计算起始下标
//        计算总页数
        Integer start = (page-1)*rows;
        List<Emp> list = empDao.queryByPager(start,rows);
        Integer records = empDao.queryTotalCount();
        Integer total = records%rows==0 ? records/rows : records/rows+1;
        map.put("page",page);
        map.put("rows",list);
        map.put("total",total);
        map.put("records",records);
        return map;
    }

    @Override
    public Emp selectOne(String id) {
        return empDao.selectOne(id);
    }

    @Override
    public void insert(Emp emp) {
        empDao.insert(emp);
    }

    @Override
    public void delete(String id) {
        empDao.delete(id);
    }

    @Override
    public void update(Emp emp) {
        empDao.update(emp);
    }


}
