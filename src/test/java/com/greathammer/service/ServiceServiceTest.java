package com.greathammer.service;

import com.framework.util.PageData;
import com.greathammer.BaseTest;
import com.greathammer.entity.BizCategory;
import com.greathammer.entity.BizService;
import com.greathammer.entity.BizServiceWithBLOBs;
import org.junit.Test;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by fy on 2016/9/28.
 */
public class ServiceServiceTest extends BaseTest {
    @Test
    public void listAllService() throws Exception {
        List<BizCategory> bizCategoryList = serviceService.listAllService();
        System.out.println("-------------->");
        for (BizCategory c1 : bizCategoryList) {
            System.out.println(c1.getName());
            for (BizCategory c2 : c1.getCategoryList()) {
                System.out.println("\t" + c2.getName());
                for (BizCategory c3 : c2.getCategoryList()) {
                    System.out.println("\t\t" + c3.getName());
                }
            }
        }
        System.out.println(bizCategoryList.size());
    }

    @Resource
    private ServiceService serviceService;

    @Test
    public void listServiceByLabel() throws Exception {
        List<BizService> serviceList = serviceService.listServiceByLabel("热门服务推荐");
        System.out.println(serviceList.size());
        for (BizService bizService : serviceList) {
            System.out.println(bizService);
        }
    }

}