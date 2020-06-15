package com.greathammer.dao;

import com.greathammer.entity.BizUser;

public interface BizUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BizUser record);

    int insertSelective(BizUser record);

    BizUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BizUser record);

    int updateByPrimaryKey(BizUser record);
}