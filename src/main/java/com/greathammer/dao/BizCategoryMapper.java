package com.greathammer.dao;

import com.greathammer.entity.BizCategory;

import java.util.List;

public interface BizCategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BizCategory record);

    int insertSelective(BizCategory record);

    BizCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BizCategory record);

    int updateByPrimaryKey(BizCategory record);

    List<BizCategory> selectAllService();
}