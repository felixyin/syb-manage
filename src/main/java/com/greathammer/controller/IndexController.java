package com.greathammer.controller;

import com.framework.controller.base.BaseController;
import com.greathammer.entity.BizCategory;
import com.greathammer.entity.BizService;
import com.greathammer.service.ServiceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by lcd on 2016/9/28.
 */
@Controller
@RequestMapping(value = "/web")
public class IndexController extends BaseController {

    @Resource
    private ServiceService serviceService;

    /**
     * 首页
     *
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/toIndex")
    public ModelAndView toIndex() throws Exception {

        List<BizService> rmfwtjList = serviceService.listServiceByLabel("热门服务推荐");
        List<BizService> czdlbjList = serviceService.listServiceByLabel("热门服务推荐");

        ModelAndView mv = this.getMV();
        mv.addObject("rmfwtjList", rmfwtjList);
        mv.addObject("czdlbjList", czdlbjList);
        addCategoryMenu(mv);
        mv.setViewName("/web/index");
        return mv;
    }

    /**
     * 企业初创
     *
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/toChuChuang")
    public ModelAndView toChuChuang() throws Exception {

        List<BizService> cybbList = serviceService.listServiceByLabel("热门服务推荐");
        List<BizService> ppcbList = serviceService.listServiceByLabel("热门服务推荐");
        List<BizService> gsyyList = serviceService.listServiceByLabel("热门服务推荐");

        ModelAndView mv = this.getMV();
        mv.addObject("cybbList", cybbList);
        mv.addObject("ppcbList", ppcbList);
        mv.addObject("gsyyList", gsyyList);
        addCategoryMenu(mv);
        mv.setViewName("/web/chu_chuang");
        return mv;
    }

    /**
     * 企业成长
     *
     * @return
     */
    @RequestMapping(value = "/toCompanyGrowth")
    public ModelAndView toCompanyGrowth() throws Exception {

        List<BizService> pptgList = serviceService.listServiceByLabel("热门服务推荐");
        List<BizService> rsdlList = serviceService.listServiceByLabel("热门服务推荐");
        List<BizService> flswList = serviceService.listServiceByLabel("热门服务推荐");

        ModelAndView mv = this.getMV();
        mv.addObject("pptgList", pptgList);
        mv.addObject("rsdlList", rsdlList);
        mv.addObject("flswList", flswList);
        addCategoryMenu(mv);
        mv.setViewName("/web/company_growth");
        return mv;
    }

    /**
     * 企业成熟
     *
     * @return
     */
    @RequestMapping(value = "/toCompanyMature")
    public ModelAndView toCompanyMature() throws Exception {

        List<BizService> qysjList = serviceService.listServiceByLabel("热门服务推荐");
        List<BizService> sbsyList = serviceService.listServiceByLabel("热门服务推荐");
        List<BizService> zxfwList = serviceService.listServiceByLabel("热门服务推荐");

        ModelAndView mv = this.getMV();
        mv.addObject("qysjList", qysjList);
        mv.addObject("sbsyList", sbsyList);
        mv.addObject("zxfwList", zxfwList);
        addCategoryMenu(mv);
        mv.setViewName("/web/company_mature");
        return mv;
    }

    /**
     * 详细菜单服务
     *
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/subMenuService")
    public ModelAndView subMenuService(Integer id) throws Exception {
        Map subMenu = serviceService.loadInfo(id);

        ModelAndView mv = this.getMV();
        mv.addObject("subMenu", subMenu);
        mv.setViewName("/web/menu_service");
        return mv;
    }

    /**
     * 注册
     *
     * @return
     */
    @RequestMapping(value = "/toRegister")
    public ModelAndView toRegister() throws Exception {

        ModelAndView mv = this.getMV();
        mv.setViewName("/web/register");
        return mv;
    }

    /**
     * 登录
     *
     * @return
     */
    @RequestMapping(value = "/toLogin")
    public ModelAndView toLogin() throws Exception {

        ModelAndView mv = this.getMV();
        mv.setViewName("/web/login");
        return mv;
    }

    /**
     * 菜单
     */
    private List<BizCategory> categoryMenu;

    public void addCategoryMenu(ModelAndView mv) {
        if (categoryMenu == null) {
            categoryMenu = serviceService.listAllService();
        }
        mv.addObject("categoryMenu", categoryMenu);
    }


}