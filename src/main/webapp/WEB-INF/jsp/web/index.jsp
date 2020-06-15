<%--
Created by IntelliJ IDEA.
User: lcd
Date: 2016/9/27
Time: 15:11

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
  <title>首页</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content=""/>

  <%@ include file="/include/syb_css.jsp" %>

  <%@ include file="/include/syb_script.jsp" %>


  <script type="text/javascript">
    var i = 1;
    function autoChangeImage(i) {                //自动改变图片
      setTimeout("changeImage(i++); ", 1500);
      setTimeout("back(i); ", 1000);
      setTimeout("autoChangeImage(i = (i%5)); ", 1500);
    }
    function changeImage(idNum) {
      document.getElementById("radio" + idNum).checked = "checked";
      switch (idNum) {
        case 0:
          document.getElementById("imgIndex").style.backgroundImage = "url(/static/syb/images/banner1.jpg)";//改变首页图片
          break;
        case 1:
          document.getElementById("imgIndex").style.backgroundImage = "url(/static/syb/images/banner2.jpg)";
          break;
        case 2:
          document.getElementById("imgIndex").style.backgroundImage = "url(/static/syb/images/banner3.jpg)";
          break;
      }
    }
  </script>

</head>

<body onLoad="autoChangeImage();">
<div class="my-container">
  <div class="my-top">
    <p class="number">客服电话：0532-88888888</p>
    <p class="login"><a href="/web/toLogin.do">登陆</a>&nbsp;|&nbsp;<a href="/web/toRegister.do">注册</a></p>
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
            <ul style="width:260px">
              <c:forEach items="${categoryMenu}" var="c1">

                <li class=a1>
                  <div class=tx><a href="#"><i>&nbsp;</i>${c1.name}</a></div>
                  <div class=pop>
                    <h3><a href="#">公司注册</a></h3>
                    <dl>
                      <c:forEach items="${c1.categoryList}" var="c2">
                        <dl>
                          <dt>${c2.name}</dt>
                          <dd>
                            <c:forEach items="${c2.categoryList}" var="c3">
                              <a class="ui-link" href="/web/subMenuService.do?id=${c3.id}">${c3.name}</a>
                            </c:forEach>
                          </dd>
                        </dl>
                      </c:forEach>

                    </dl>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </div>
        </div>
      </div>
      <nav class="nav">
        <ul class="nav__menu">
          <li class="nav__menu-item"><a href="/web/toChuChuang.do">企业初创</a></li>
          <li class="nav__menu-item"><a href="/web/toCompanyGrowth.do">企业成长</a></li>
          <li class=" nav__menu-item"><a href="/web/toCompanyMature.do">企业成熟</a></li>
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
  <div id="contain">  <!--图片展示内容框-->
    <div id="imgIndex" class="imageShow" style='background-position: center;background-size: auto;'>
      <!--默认显示图片框-->
      <!--<img src="/static/syb/images/banner2.jpg" style="border:0;margin:0;padding:0;overflow-x:hidden;"/>-->
    </div>
    <div id="posi"><!--按钮位置-->
      <input id="radio0" class="radio" name="lit" type="radio" value="0" onClick="changeImage(0)"/>
      <input id="radio1" class="radio" name="lit" type="radio" value="0" onClick="changeImage(1)"/>
      <input id="radio2" class="radio" name="lit" type="radio" value="0" onClick="changeImage(2)"/>

    </div>
  </div>
  <div class="clearfix"></div>
  <div class="index">
    <div class="service">
      <div class="title"><b>热门服务</b><strong>推荐</strong></div>
      <!--开始循环 -->
      <c:forEach items="${rmfwtjList}" var="p" varStatus="vs">
        <%@ include file="/include/service_card.jsp" %>
      </c:forEach>

      <div class="clearfix"></div>
      <div class="title"><b>超值</b><strong>大礼包</strong></div>
      <c:forEach items="${czdlbjList}" var="p" varStatus="vs">
        <%@ include file="/include/service_card.jsp" %>
      </c:forEach>


    </div>
    <div class="clearfix"></div>
    <div class="title" style="margin: 60px 0px  35px 0px;"><b>为什么选择</b><strong>我们</strong></div>
    <div class="whyus">
      <img src="/static/syb/images/whyusbg.png">
      <!--<div class="card">-->
      <!--<img src="/static/syb/images/zizhi.png">-->
      <!--<b>资质认证</b>-->
      <!--<p>服务商100%实名审核认证，明码标价支付安全</p>-->

      <!--</div>-->
      <!--<div class="card">-->
      <!--<img src="/static/syb/images/quanbu.png">-->
      <!--<b>资质认证</b>-->
      <!--<p>服务商100%实名审核认证，明码标价支付安全</p>-->

      <!--</div>-->
      <!--<div class="card">-->
      <!--<img src="/static/syb/images/wuyou.png">-->
      <!--<b>资质认证</b>-->
      <!--<p>服务商100%实名审核认证，明码标价支付安全</p>-->

      <!--</div>-->
    </div>
  </div>
  <div class="clearfix"></div>
  <%@ include file="/include/syb_table_foot_css.jsp" %>
</div>

</body>
</html>