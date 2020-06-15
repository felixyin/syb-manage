<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="card" style="margin-right:25px">
  <img src="${p.logo}">
  <strong>
    ${p.name}
  </strong>
  <p>${p.info}</p>
  <div class="price"><b>${p.newPrice}</b>
    <P>${p.unit}</P></div>
  <div class="price2">原价：<s>${p.oldPrice}</s></div>
  <button href="#"><a href="kai_gong_si.jsp">立即购买</a></button>
</div>
