<!-- --------------css begin-------------- -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                            <a class="ui-link" href="kai_gong_si.jsp?skdfjks=${c3.id}">${c3.name}</a>
                          </c:forEach>
                          <a class="ui-link" href="kai_gong_si.jsp">小规模纳税人有限公司注册</a>
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

<!-- --------------css end-------------- -->