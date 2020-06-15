<%--
  Created by IntelliJ IDEA.
  User: Jenkin
  Date: 2016/9/28
  Time: 17:29
  
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
  <title>注册</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content=""/>

  <%@ include file="/include/syb_css.jsp" %>

</head>
<body>


<div class="login-page">
  <div class="mtitle">
    <img src="../../../static/syb/images/login_logo.png">
  </div>
  <div class="mmain">
    <div class="card">
      <ul>
        <li id="shouji">手机注册</li>
        <div></div>
        <li id="youxiang">邮箱注册</li>
      </ul>
      <form id="em">
        <p><label>邮箱号</label><input type="email" placeholder="邮箱地址"/></p>
        <p><label>密码</label><input type="password" id="password" placeholder="输入密码"/></p>
        <P>
          <label>注册意向</label>
          <input style="width: 15px; height:15px" type="radio">我来赚钱

          <input style="width: 15px; height:15px;margin-left: 20px" type="radio">找人办事
        </P>
        <input type="submit" style="background-color: #ff6600;width:270px;color: white" value="同意注册并登陆">
      </form>
      <form hidden id="ph">
        <p><label>手机号</label><input type="email" placeholder="手机号"/></p>
        <p><label>密码</label><input type="password" id="passwordx" placeholder="输入密码"/></p>
        <P>
          <label>注册意向</label>
          <input style="width: 15px; height:15px" type="radio">我来赚钱

          <input style="width: 15px; height:15px;margin-left: 20px" type="radio">找人办事
        </P>
        <input type="submit" style="background-color: #ff6600;width:270px;color: white" value="同意注册并登陆">
      </form>
      <div class="sw">
        <p><a>《创业管家服务协议》</a></p>
        <p style="margin-top: 15px"><span style="float: left;">使用合作账号登陆</span><span style="float: right;">已有账户？<a>登陆</a></span></p>
        <p class="clearfix"></p>
        <p>
          <span><a><img style="width: 20px;height: 20px" src="/static/syb/images/qq.png"></a></span>
          <span><a><img style="width: 20px;height: 20px" src="/static/syb/images/wb.png"></a></span>
        </p>

      </div>

    </div>
  </div>
  <%@ include file="/include/syb_table_foot_css.jsp" %>
</div>

<%@ include file="/include/syb_script.jsp" %>

<script>
  $("#shouji").click(function () {
    $("#em").hide();
    $("#ph").show();
    $(this).addClass("orange");
    $("#youxiang").removeClass("orange")
  })
  $("#youxiang").click(function () {
    $("#ph").hide();
    $("#em").show();
    $(this).addClass("orange");
    $("#shouji").removeClass("orange")
  })
</script>
</body>
</html>