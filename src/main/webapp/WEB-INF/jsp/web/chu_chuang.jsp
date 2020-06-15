<%--
  Created by IntelliJ IDEA.
  User: lcd
  Date: 2016/9/27
  Time: 15:47
  
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
  <title>企业初创</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content=""/>

  <%@ include file="/include/syb_css.jsp" %>
  <%@ include file="/include/syb_script.jsp" %>

</head>
<body>
<div class="my-container">
  <%@ include file="/include/syb_table_head_css.jsp" %>
  <!--<div style="position: absolute;top: 150px;width: 100%;height: 440px"><img src="/static/syb/images/banner1.jpg"></div>-->


  <div class="clearfix"></div>
  <div class="index shang">
    <div class="service">
      <div class="bb"><strong>创业必备</strong>
        <p>初创公司需要哪些服务？</p></div>
      <c:forEach items="${cybbList}" var="p" varStatus="vs">
        <%@ include file="/include/service_card.jsp" %>
      </c:forEach>
      <div class="clearfix"></div>
      <div class="bb"><strong>品牌传播</strong>
        <p>迅速提升公司知名度和曝光量</p></div>
      <c:forEach items="${ppcbList}" var="p" varStatus="vs">
        <%@ include file="/include/service_card.jsp" %>
      </c:forEach>
      <div class="clearfix"></div>
      <div class="bb"><strong>公司运营</strong>
        <p>轻松解决初创公司办公所需</p></div>
      <c:forEach items="${gsyyList}" var="p" varStatus="vs">
        <%@ include file="/include/service_card.jsp" %>
      </c:forEach>
      <div class="clearfix"></div>


    </div>
    <div class="clearfix"></div>


  </div>
  <div class="clearfix"></div>
  <%@ include file="/include/syb_table_foot_css.jsp" %>
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