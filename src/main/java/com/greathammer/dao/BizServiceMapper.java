package com.greathammer.dao;

import com.greathammer.entity.BizService;
import com.greathammer.entity.BizServiceWithBLOBs;

import java.util.List;
import java.util.Map;

public interface BizServiceMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BizServiceWithBLOBs record);

    int insertSelective(BizServiceWithBLOBs record);

    BizServiceWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BizServiceWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(BizServiceWithBLOBs record);

    int updateByPrimaryKey(BizService record);

    List<BizService> selectServiceByLabel(String label);

    Map loadInfo(Integer id);
}