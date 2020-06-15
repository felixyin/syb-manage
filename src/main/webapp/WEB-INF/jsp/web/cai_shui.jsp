<%--
  Created by IntelliJ IDEA.
  User: lcd
  Date: 2016/9/27
  Time: 15:36
  
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
  <title>记账代理</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content=""/>
  <%@ include file="/include/syb_css.jsp" %>
  <%@ include file="/include/syb_script.jsp" %>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
  <script type="text/javascript">
    $(document).ready(function () {
      var num1 = 0;
      var num2 = 0;
      var num3 = 0;
      var num4 = 1;
      var num5 = 1;
      var fp = 0;
      var sum = 0;
      var sumSP = $("#sum");
//            侧边栏
      $(".my-tcontainer1").hover(
          function () {
            var self = $(this);
            self.children(':first').hide();
            self.children(':last').show();

          },
          function () {
            var self = $(this);
            self.children(':last').hide();
            self.children(':first').show();

          }
      );
//侧边栏
//            hover状态切换
      $(".my-card,.my-card2").data('status', true).hover(function () {
        var self = $(this);
        if (!self.data("status"))return;
        var sourceClass = self.data('source-class');
        var targetClass = self.data('target-class');
        self.removeClass(sourceClass).addClass(targetClass);
        self.children(':first').hide();
        self.children(':last').show();
      }, function () {
        var self = $(this);
        if (!self.data("status"))return;
        var sourceClass = self.data('source-class');
        var targetClass = self.data('target-class');
        self.removeClass(targetClass).addClass(sourceClass);
        self.children(':first').show();
        self.children(':last').hide();
      });

//            mycard点击切换
      $(".my-card").click(function () {
        var self = $(this);

        if (self.data('status')) {

          self.data("status", false);
          var sourceClass = self.data('source-class');
          var targetClass = self.data('target-class');
          //清除兄弟元素点击状态
          var huifu = self.siblings().not(':first');
          huifu.removeClass(targetClass).addClass(sourceClass);
          huifu.each(function () {
            $(this).data("status", true);
            $(this).children(':first').show();
            $(this).children(':last').hide();
          });
//
//切换本元素为点击状态
          self.removeClass(sourceClass).addClass(targetClass);
          self.children(':first').hide();
          self.children(':last').show();
        }
//                        解除点击状态
        else {
          var self = $(this);
          self.data("status", true);
          var sourceClass = self.data('source-class');
          var targetClass = self.data('target-class');
          self.removeClass(targetClass).addClass(sourceClass);
          self.children(':first').show();
          self.children(':last').hide();
        }
      });
//            发票切换
      $(".my-card2").click(function () {
        var self = $(this);
        var fpv = self.data('fp')
        if (self.data('status')) {
          self.data("status", false);
          var sourceClass = self.data('source-class');
          var targetClass = self.data('target-class');

          fp = fp + fpv;
//切换本元素为点击状态
          self.removeClass(sourceClass).addClass(targetClass);
          self.children(':first').hide();
          self.children(':last').show();
        }
//                        解除点击状态
        else {
          var self = $(this);
          self.data("status", true);
          var sourceClass = self.data('source-class');
          var targetClass = self.data('target-class');
          self.removeClass(targetClass).addClass(sourceClass);
          self.children(':first').show();
          self.children(':last').hide();
          fp = fp - fpv;
        }
      });

      $(".my-card, .my-card2").click(function () {
//                计算数值
        var total = 0;
        var data = $('.my-card').filter(function () {
          return !$(this).data('status');
          /*筛选status为false的mycard*/
        }).map(function () {
          var value = $(this).data('value');
          var cheng = $(this).data('cheng');
          var type = '';
          if (value) {
            return {type: 'jia', value: parseInt(value)};
          }
          if (cheng) {
            return {type: 'cheng', value: parseFloat(cheng)};
          }
        });
        data.each(function (i, n) {
          if (n.type == 'jia') {
            total += n.value;

          }
        });
        total = total + fp;
        data.each(function (i, n) {
          if (n.type == 'cheng') {
            total *= n.value;
          }
        });

        $('#sum').text(total);
      });


    });
  </script>

</head>
<body>
<div class="my-container" style="background-color: white">
  <div class="my-top">
    <p class="number">客服电话：0532-88888888</p>
    <p class="login"><a>登陆</a>&nbsp;|&nbsp;<a>注册</a></p>
  </div>
  <div class="my-title">
    <a href="/web/toIndex.do"><img style="float: left;" src="/static/syb/images/gjlogo.jpg"></a>
    <img style="float: right;" src="/static/syb/images/biaoyu.jpg">
  </div>
  <div class="a-nav" style="margin-bottom: -350px">
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
                        <a class="ui-link" href="jiao_she_bao.jsp">社保服务开通</a>

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
      <nav class="nav" >
        <ul class="nav__menu" style="background-color: white;border-bottom: solid 1px #ff5931">
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
  <div class="clearfix"></div>
  <div class="my-dh" style="width: 1050px;margin: 0px auto" id="header">
    <a href="kai_gong_si.jsp#11">
      <div class="dg" style="width: 350px">公司注册</div>
    </a>
    <a>
      <div class="dg" style="background-color:#e5e5e5;width: 350px ">记账代理</div>
    </a>
    <a href="jiao_she_bao.jsp#33">
      <div class="dg" style="width: 350px">人事代缴</div>
    </a>
  </div>

  <div class="main-container" id="22">
    <div class="head"><p style="letter-spacing: 6px;">请选择您需要的<b>套餐</b></p></div>
    <div class="clearfix"></div>
    <div class=" col-sm-9 my-right-list">
      <div class="container">
        <div class="list">
          <div class="my-right-list1">
            <div class="immg"><img src="/static/syb/images/1.png"></div>
            <p>记账类别</p>
          </div>
          <div class="my-card huang-se" data-source-class="huang-se"
               data-target-class="huang-se-hover" data-value="300" id="list1">
            <div>
              <img src="/static/syb/images/jizhang.png">
              <div><strong>小规模</strong><br>代理记账</div>
            </div>
            <div class="list-display">
              300元/月
            </div>
          </div>
          <div class="my-card huang-se" data-source-class="huang-se"
               data-target-class="huang-se-hover" data-value="500" id="list2">
            <div>
              <img src="/static/syb/images/jizhang.png">
              <div><strong>一般规模</strong><br>代理记账</div>
            </div>
            <div class="list-display">
              500元/月
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
        <div class="list">
          <div class="my-right-lis">
            <div class="my-right-list1">
              <div class="immg"><img src="/static/syb/images/2.png"></div>
              <p>精细做账</p>
            </div>
            <div class="my-card lv-se" data-source-class="lv-se"
                 data-target-class="lv-se-hover" data-value="0" id="list3">
              <div>
                <img src="/static/syb/images/mingxizhang.png">
                <div>笼统账</div>
              </div>
              <div class="list-display">
                0元
              </div>
            </div>
            <div class=" my-card lv-se" data-source-class="lv-se"
                 data-target-class="lv-se-hover" data-value="100" id="list4">
              <div>
                <img src="/static/syb/images/mingxizhang.png">
                <div><strong>二级</strong>科目</div>
              </div>
              <div class="list-display">
                100元/月
              </div>
            </div>
            <div class="my-card lv-se" data-source-class="lv-se"
                 data-target-class="lv-se-hover" data-value="200" id="list5">
              <div>
                <img src="/static/syb/images/mingxizhang.png">
                <div><strong>三级</strong>科目</div>
              </div>
              <div class="list-display">
                200元/月
              </div>
            </div>
            <div class="my-card lv-se" data-source-class="lv-se"
                 data-target-class="lv-se-hover" data-value="300" id="list6">
              <div>
                <img src="/static/syb/images/mingxizhang.png">
                <div><strong>四级</strong>科目</div>
              </div>
              <div class="list-display">
                300元/月
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
        <div class="list">
          <div class="my-right-lis">
            <div class="my-right-list1">
              <div class="immg"><img src="/static/syb/images/3.png"></div>
              <p>做账类目</p>
            </div>
            <div class="lan-se my-card2" data-source-class="lan-se"
                 data-target-class="lan-se-hover" data-fp="100" id="list7">
              <div>
                <img src="/static/syb/images/fapiao.png">
                <div><strong>代</strong>开发票</div>
              </div>
              <div class="list-display">
                100元/月
              </div>
            </div>
            <div class=" lan-se my-card2" data-source-class="lan-se"
                 data-target-class="lan-se-hover" data-fp="100" id="list8">
              <div>
                <img src="/static/syb/images/fapiao.png">
                <div><strong>代</strong>购发票</div>
              </div>
              <div class="list-display">
                100元/月
              </div>
            </div>
            <div class=" lan-se  my-card2" data-source-class="lan-se"
                 data-target-class="lan-se-hover" data-fp="100" id="list9">
              <div>
                <img src="/static/syb/images/fapiao.png">
                <div><strong>拉</strong>取回单</div>
              </div>
              <div class="list-display">
                100元/月
              </div>
            </div>
            <div class=" lan-se  my-card2" data-source-class="lan-se"
                 data-target-class="lan-se-hover" data-fp="100" id="list10">
              <div>
                <img src="/static/syb/images/fapiao.png">
                <div><strong>代</strong>抄税认证</div>
              </div>
              <div class="list-display">
                100元/月
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
        <div class="list">
          <div class="my-right-lis">
            <div class="my-right-list1">
              <div class="immg"><img src="/static/syb/images/4.png"></div>
              <p>会计选</p>
            </div>
            <div class=" hong-se my-card" data-source-class="hong-se"
                 data-target-class="hong-se-hover" data-cheng="1" id="list11">
              <div>
                <img src="/static/syb/images/kuaiji.png">
                <div><strong>会计</strong>助理</div>
              </div>
              <div class="list-display">
                会计助理X1
              </div>
            </div>
            <div class=" hong-se my-card" data-source-class="hong-se"
                 data-target-class="hong-se-hover" data-cheng="1.5" id="list12">
              <div>
                <img src="/static/syb/images/kuaiji.png">
                <div><strong>初级</strong>会计</div>
              </div>
              <div class="list-display">
                初级会计X1.5
              </div>
            </div>
            <div class=" hong-se my-card" data-source-class="hong-se"
                 data-target-class="hong-se-hover" data-cheng="2" id="list13">
              <div>
                <img src="/static/syb/images/kuaiji.png">
                <div><strong>中级</strong>会计</div>
              </div>
              <div class="list-display">
                中级会计X2
              </div>
            </div>
            <div class=" hong-se my-card" data-source-class="hong-se"
                 data-target-class="hong-se-hover" data-cheng="2.5" id="list14">
              <div>
                <img src="/static/syb/images/kuaiji.png">
                <div><strong>高级</strong>会计</div>
              </div>
              <div class="list-display">
                高级会计X2
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
        <div class="list">
          <div class="my-right-lis">
            <div class="my-right-list1">
              <div class="immg"><img src="/static/syb/images/5.png"></div>
              <p>服务时间</p>
            </div>
            <div class="fuwushijian zi-se my-card" data-source-class="zi-se"
                 data-target-class="zi-se-hover" data-cheng="0.0" id="list15">
              <div>
                <img src="/static/syb/images/rili.png">
                <div><strong>半年免费</strong></div>
              </div>
              <div class="list-display">
                半年免费
              </div>
            </div>
            <div class="fuwushijian zi-se my-card" data-source-class="zi-se"
                 data-target-class="zi-se-hover" data-cheng="11.4" id="list16">
              <div>
                <img src="/static/syb/images/rili.png">
                <div><strong>一年</strong></div>
              </div>
              <div class="list-display">
                一年(9.5折)
              </div>
            </div>
            <div class="fuwushijian zi-se my-card" data-source-class="zi-se"
                 data-target-class="zi-se-hover" data-cheng="28.8" id="list17">
              <div>
                <img src="/static/syb/images/rili.png">
                <div><strong>三年</strong></div>
              </div>
              <div class="list-display">
                三年(8.0折)
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
        <div class="clearfix" style="height: 20px"></div>
        <div class="my-right-list-foot">
          <div class="my-right-list-pro">当购买我们的服务后，我们会为您安排一位专业的咨询师，并邮寄给您，全程保障您的权益。</div>
          <span style="font-weight: 500;font-size: 25px;color: black" ;>总计：<span id="sum"
                                                                                 style="font-weight: 500;font-size: 25px;color: red"
                                                                                 ;>0</span>元</span>
          <div class=" my-bottom-right"><img src="/static/syb/images/shebao-btn.png"></div>
        </div>
      </div>

    </div>
    <div class="clearfix"></div>
  </div>
  <div class="clearfix"></div>
</div>
<!--计算方法-->
<div class="my-foot-nav">
  <div class="my-foot-menu">
    <a href="toChuChuang.do">企业初创</a>
    <a href="toCompanyGrowth.do">企业成长</a>
    <a href="toCompanyMature.do">企业成熟</a>
    <a href="xue_yuan.jsp">创业学院</a>
    <a>信息化云服务</a>
  </div>
</div>

</body>
</html>