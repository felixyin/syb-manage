<%--
  Created by IntelliJ IDEA.
  User: lcd
  Date: 2016/9/27
  Time: 15:53
  
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
  <title>企业成长</title>
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
      <div class="bb"><strong>品牌推广</strong>
        <p>一站式企业宣传推广解决方案</p></div>

      <c:forEach items="${pptgList}" var="p" varStatus="vs">
        <%@ include file="/include/service_card.jsp" %>
      </c:forEach>


      <div class="clearfix"></div>
      <div class="bb"><strong>人事管理</strong>
        <p>专注于人事管理咨询与服务</p></div>
      <c:forEach items="${rsdlList}" var="p" varStatus="vs">
        <%@ include file="/include/service_card.jsp" %>
      </c:forEach>
      <div class="clearfix"></div>
      <div class="bb"><strong>法律事务</strong>
        <p>专业服务成就放心品质</p></div>
      <c:forEach items="${flswList}" var="p" varStatus="vs">
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