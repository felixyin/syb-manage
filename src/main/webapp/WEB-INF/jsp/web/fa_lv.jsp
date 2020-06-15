<%--
  Created by IntelliJ IDEA.
  User: lcd
  Date: 2016/9/27
  Time: 15:14
  
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <title>法律</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content=""/>

  <%@ include file="/include/syb_css.jsp" %>
  <%@ include file="/include/syb_script.jsp" %>
  <script type="text/javascript">
    $(document).ready(function () {
      $("#tca").click(function () {
        $("#price").text("1,800.00元/年");
      })
      $("#tcb").click(function () {
        $("#price").text("2,300.00元/年");
      })
      $("#tcc").click(function () {
        $("#price").text("2,600.00元/年");
      })
    })
  </script>


</head>
<body>
<div class="my-container">
  <div class="my-top">
    <p class="number">客服电话：0532-88888888</p>
    <p class="login"><a>登陆</a>&nbsp;|&nbsp;<a>注册</a></p>
  </div>
  <div class="my-title">
    <a href="/web/toIndex.do"><img style="float: left;" src="/static/syb/images/gjlogo.jpg"></a>
    <img style="float: right;" src="/static/syb/images/biaoyu.jpg">
  </div>
  <div class="a-nav">
    <div class="top">
      <div class="shead">
        <div class="hc_lnav jslist">
          <div class="allbtn">
            <h2><a href="index.jsp"><strong>&nbsp;</strong>全部服务分类<i>&nbsp;</i></a></h2>
            <ul class="display" style="width:260px">
              <li class=a1>
                <div class=tx><a href="#"><i>&nbsp;</i>我要开公司 / 我要税务服务></a></div>
                <div class=pop>
                  <h3><a href="#">公司注册</a></h3>
                  <dl>
                    <dl>
                      <dt>公司注册</dt>

                      <dd>
                        <a class="ui-link" href="kai_gong_si.jsp">一般纳税人有限公司注册</a>
                        <a class="ui-link" href="kai_gong_si.jsp">小规模纳税人有限公司注册</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>代理记账</dt>
                      <dd>
                        <a class="ui-link" href="cai_shui.jsp">小规模代理记账</a>
                        <a class="ui-link" href="cai_shui.jsp">一般纳税人代理记账</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>公司变更</dt>
                      <dd>
                        <a class="ui-link" href="">公司名称变更</a>
                        <a class="ui-link" href="">公司经营期限变更</a>
                        <a class="ui-link" href="">公司经营范围变更</a>
                        <a class="ui-link" href="">公司股权变更</a>
                        <a class="ui-link" href="">公司注册地址变更</a>
                        <a class="ui-link" href="">基本户变更</a>
                        <a class="ui-link" href="">注册资本变更</a>
                        <a class="ui-link" href="">法人变更</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>税务服务</dt>
                      <dd>
                        <a class="ui-link" href="cai_shui.jsp">加计扣除专项服务</a>
                        <a class="ui-link" href="cai_shui.jsp">企业所得税优惠备案</a>
                        <a class="ui-link" href="cai_shui.jsp">资产损失专项服务</a>
                        <a class="ui-link" href="cai_shui.jsp">个人所得税定期申报</a>
                      </dd>
                    </dl>
                  </dl>
                </div>
              </li>
              <li class=a2>
                <div class=tx><a href=""><i>&nbsp;</i>我要做营销 / 我要注册商标></a></div>
                <div class=pop>
                  <h3><a href="">新媒体推广</a></h3>
                  <dl>
                    <dl>
                      <dt>新媒体推广</dt>
                      <dd>
                        <a class="ui-link" href="">创意文案</a>
                        <a class="ui-link" href="">活动策划</a>
                        <a class="ui-link" href="">微信社群活动</a>
                        <a class="ui-link" href="">微信服务号</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>代运营<br>营销工具</dt>
                      <dd>
                        <a class="ui-link" href="">微信管理工具</a>
                        <a class="ui-link" href="">移动营销工具</a>
                        <a class="ui-link" href="">朋友圈广告</a>
                        <a class="ui-link" href="">工具网站安全联盟认证（QQ、搜狗加V）</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>品牌商标<br>注册</dt>
                      <dd>
                        <a class="ui-link" href="">商标查询</a>
                        <a class="ui-link" href="">商标注册</a>
                        <a class="ui-link" href="">商标争议解决</a>
                        <a class="ui-link" href="">商标驳回复审</a>
                        <a class="ui-link" href="">商标异议申请</a>
                        <a class="ui-link" href="">商标异议答辩</a>
                        <a class="ui-link" href="">商标不予注册复审</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>商标争议<br>解决</dt>
                      <dd>
                        <a class="ui-link" href="">商标驳回复审</a>
                        <a class="ui-link" href="">商标异议申请</a>
                        <a class="ui-link" href="">商标异议答辩</a>
                        <a class="ui-link" href="">商标不予注册复审</a>
                      </dd>
                    </dl>


                  </dl>
                </div>
              </li>
              <li class=a3>
                <div class=tx><a href=""><i>&nbsp;</i>我要找融资 / 我要入驻园区></a></div>

                <div class=pop>
                  <h3><a href="">唯你金融</a></h3>
                  <dl>
                    <dl>
                      <dt>一瑞金融</dt>
                      <dd>

                        <a class="ui-link" href="">账易贷</a>
                        <a class="ui-link" href="">园易贷</a>

                        <a class="ui-link" href="">集易采</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>一瑞园区</dt>
                      <dd>
                        <a class="ui-link" href="">场地资源汇</a>
                        <a class="ui-link" href="">园区加盟</a>
                      </dd>
                    </dl>
                    <dl>

                      <dt>办公设备<br>采购</dt>
                      <dd>
                        <a class="ui-link" href="">IT设备及配件采购</a>
                        <a class="ui-link" href="ITgc.jsp">IT工程项目</a>
                        <a class="ui-link" href="">企业写真</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>企业互联<br>网+</dt>
                      <dd>
                        <a class="ui-link" href="hu_lian_wtg.jsp">互联网套餐</a>
                        <a class="ui-link" href="wei_xiu.jsp">IT维护套餐</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt>故障上门维修</dt>
                      <dd>
                        <a class="ui-link" href="wei_xiu.jsp">网络故障修复</a>
                        <a class="ui-link" href="wei_xiu.jsp">电脑故障维修</a>
                        <a class="ui-link" href="wei_xiu.jsp">服务器维护</a>
                        <a class="ui-link" href="wei_xiu.jsp">打印机故障维修</a>
                        <a class="ui-link" href="wei_xiu.jsp">打印机硒鼓更换</a>
                        <a class="ui-link" href="wei_xiu.jsp">打印机加粉换墨</a>
                      </dd>
                    </dl>

                  </dl>
                </div>
              </li>
              <li class=a4>
                <div class=tx><a href=""><i>&nbsp;</i>我要办社保 / 我要差旅管理></a></div>

                <div class=pop>
                  <h3><a href="fa_lv.jsp">我要办社保 / 我要差旅管理></a></h3>
                  <dl>

                    <dl>
                      <dt> 企业社保</dt>
                      <dd>
                        <a class="ui-link" href="jiao_she_bao.jsp">社保代缴</a>
                        <a class="ui-link" href="jiao_she_bao.jsp">公积金代缴</a>
                        <a class="ui-link" href="jiao_she_bao.jsp"> 社保服务开通</a>

                      </dd>
                    </dl>
                    <dl>
                      <dt> 个人社保</dt>
                      <dd>
                        <a class="ui-link" href="jiao_she_bao.jsp">个人社保代办</a>
                        <a class="ui-link" href="jiao_she_bao.jsp">个人公积金代办</a>

                      </dd>
                    </dl>
                    <dl>
                      <dt> 人事管理<br>工具</dt>
                      <dd>
                        <a class="ui-link" href="fa_lv.jsp">员工激活</a>
                        <a class="ui-link" href="fa_lv.jsp">人事管理</a>
                        <a class="ui-link" href="fa_lv.jsp"> 工资核算</a>

                      </dd>
                    </dl>
                    <dl>
                      <dt> 新媒体招聘</dt>
                      <dd>
                        <a class="ui-link" href="fa_lv.jsp">招聘活动策划</a>
                        <a class="ui-link" href="fa_lv.jsp">创意招聘文案</a>
                      </dd>
                    </dl>
                    <dl>
                      <dt> 差旅管理</dt>
                      <dd>
                        <a class="ui-link" href="fa_lv.jsp">机票预订</a>
                        <a class="ui-link" href="fa_lv.jsp">差旅费用监控</a>
                        <a class="ui-link" href="fa_lv.jsp">差旅报表</a>
                      </dd>
                    </dl>


                  </dl>
                </div>
              </li>
              <li class=a5>
                <div class=tx><a href=""><i>&nbsp;</i>我要找律师 / 我要代写合同></a></div>

                <div class=pop>
                  <h3><a href="fa_lv.jsp">我要找律师 / 我要代写合同></a></h3>
                  <dl>

                    <dl>
                      <dt>股权事务</dt>
                      <dd>
                        <a class="ui-link" href="fa_lv.jsp">增资扩股协议</a>
                        <a class="ui-link" href="fa_lv.jsp">委托持股协议</a>
                        <a class="ui-link" href="fa_lv.jsp">出资协议</a>
                        <a class="ui-link" href="fa_lv.jsp">公司章程</a>
                        <a class="ui-link" href="fa_lv.jsp"> 股权咨询</a>
                        <a class="ui-link" href="fa_lv.jsp"> 股权转让协议</a>
                        <a class="ui-link" href="fa_lv.jsp"> 股权激励方案</a>
                        <a class="ui-link" href="fa_lv.jsp"> 合伙协议</a>
                        <a class="ui-link" href="fa_lv.jsp"> 股东会决议</a>

                      </dd>
                    </dl>
                    <dl>
                      <dt>劳动人事</dt>
                      <dd>
                        <a class="ui-link" href="fa_lv.jsp">规章制度审查</a>
                        <a class="ui-link" href="fa_lv.jsp">竞业限制协议</a>
                        <a class="ui-link" href="fa_lv.jsp">劳动合同</a>
                        <a class="ui-link" href="fa_lv.jsp"> 劳动咨询</a>
                        <a class="ui-link" href="fa_lv.jsp"> 解除劳动合同</a>
                        <a class="ui-link" href="fa_lv.jsp"> 保密协议</a>
                        <a class="ui-link" href="fa_lv.jsp"> 培训协议</a>

                      </dd>
                    </dl>
                    <dl>
                      <dt>公司经营</dt>
                      <dd>
                        <a class="ui-link" href="fa_lv.jsp">销售合同</a>
                        <a class="ui-link" href="fa_lv.jsp">合作协议</a>
                        <a class="ui-link" href="fa_lv.jsp">企业法律顾问</a>
                        <a class="ui-link" href="fa_lv.jsp">电话问律师</a>
                        <a class="ui-link" href="fa_lv.jsp"> 采购合同</a>
                      </dd>
                    </dl>


                  </dl>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <nav class="nav">
        <ul class="nav__menu">
          <li class="nav__menu-item"><a href="toChuChuang.do">企业初创</a></li>
          <li class="nav__menu-item"><a href="toCompanyGrowth.do">企业成长</a></li>
          <li class="nav__menu-item"><a href="toCompanyMature.do">企业成熟</a></li>
          <li class="nav__menu-item"><a href="http://networkschool.greathammer.com" target="_blank">创业学院</a></li>
          <li class="nav__menu-item"><a href="#">信息化云服务</a>
            <ul class="nav__submenu">
              <li class="nav__submenu-item"><a href="http://logistics.greathammer.com" target="_blank">物流项目</a></li>
              <li class="nav__submenu-item"><a href="http://mystock.greathammer.com" target="_blank">进销存系统</a></li>
              <li class="nav__submenu-item"><a href="http://cwfx.greathammer.com" target="_blank">财务分析系统</a></li>
            </ul>
          </li>
        </ul>
      </nav>
    </div>

  </div>
  <!--<div style="position: absolute;top: 150px;width: 100%;height: 440px"><img src="/static/syb/images/banner1.jpg"></div>-->
  <div class="falv">
    <img src="/static/syb/images/falv1.jpg">
    <div class="info">
      <h2>企业法律顾问</h2>
      <div class="price">

        <b>优惠价</b>
        <strong id="price">1,800.00元/年</strong>
        （顶尖法律顾问为您保驾护航）
      </div>
      <div class="taocan">
        服务项目
        <button value="1" id="tca">套餐A</button>
        <button value="2" id="tcb">套餐B</button>
        <button value="4" id="tcc">套餐C</button>
      </div>
      <div class="clearfix"></div>
      <div style="text-align: center;width: 550px;margin-top: 100px">
        <button>预约下单</button>
      </div>
      <!--<div id="demo1"></div>-->
    </div>

  </div>
  <div class="falv" style=" width: 1200px;"><img style="width: 1200px;height: auto" src="/static/syb/images/fltcnr.jpg"></div>

  <div class="clearfix"></div>
  <div class="my-foot-nav">
    <div class="my-foot-menu">
      <a href="toChuChuang.do">企业初创</a>
      <a href="toCompanyGrowth.do">企业成长</a>
      <a href="toCompanyMature.do">企业成熟</a>
      <a href="xue_yuan.jsp">创业学院</a>
      <a>信息化云服务</a>
    </div>
  </div>
</div>
<!--<script type="text/javascript">-->
<!--var data=[-->
<!--{-->
<!--"id": 1,-->
<!--"text": 1-->
<!--},-->
<!--{-->
<!--"id": 2,-->
<!--"text": 2-->
<!--},-->
<!--{-->
<!--"id": 3,-->
<!--"text": 3-->
<!--},-->
<!--{-->
<!--"id": 4,-->
<!--"text": 4-->
<!--}-->
<!--]-->
<!--//例子1-->
<!--//单选-->
<!--$('#demo1').comboboxfilter({-->
<!--url: '',-->
<!--scope: 'FilterQuery1',-->
<!--data:data,-->
<!--onChange:function(newValue){-->
<!--$('#demo_value').val(newValue);-->
<!--}-->
<!--});-->

<!--</script>-->
</body>
</html>