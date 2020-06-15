package com.greathammer.service;

import com.framework.service.base.BaseService;
import com.greathammer.dao.BizCategoryMapper;
import com.greathammer.dao.BizServiceMapper;
import com.greathammer.entity.BizCategory;
import com.greathammer.entity.BizService;
import com.greathammer.entity.BizServiceWithBLOBs;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by fy on 2016/9/28.
 */
@Service
@Transactional
public class ServiceService extends BaseService<BizServiceWithBLOBs> {

    @Resource
    private BizServiceMapper bizServiceMapper;

    @Resource
    private BizCategoryMapper bizCategoryMapper;


    @Transactional(readOnly = true)
    public List<BizService> listServiceByLabel(String label) throws Exception {
        return bizServiceMapper.selectServiceByLabel(label);
    }

    @Transactional(readOnly = true)
    public Map loadInfo(Integer id) throws Exception {
        return bizServiceMapper.loadInfo(id);
    }

    @Transactional(readOnly = true)
    public List<BizCategory> listAllService() {
        List<BizCategory> bizCategoryList = bizCategoryMapper.selectAllService();
        List<BizCategory> resultList = new ArrayList<>();
        for (BizCategory c1 : bizCategoryList) {
            if (c1.getCategoryId() == null) {
                resultList.add(c1);
            }
        }
        for (BizCategory c1 : resultList) {
            for (BizCategory c2 : bizCategoryList) {
                if (c1.getId().equals(c2.getCategoryId())) {
                    if (c1.getCategoryList() == null) c1.setCategoryList(new ArrayList<>());
                    c1.getCategoryList().add(c2);
                    for (BizCategory c3 : bizCategoryList) {
                        if (c2.getId().equals(c3.getCategoryId())) {
                            if (c2.getCategoryList() == null) c2.setCategoryList(new ArrayList<>());
                            c2.getCategoryList().add(c3);
                        }
                    }
                }
            }
        }
        return resultList;
    }

}
