<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/9/26
  Time: 16:12
  
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
  <title>Title</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content=""/>

  <%@ include file="/include/css.jsp" %>

  <style>
    /*   .ui-autocomplete {
         max-height: 200px;
         overflow-y: auto;
         !* prevent horizontal scrollbar *!
         overflow-x: hidden;
       }
       !* IE 6 doesn't support max-height
        * we use height instead, but this forces the menu to always be this tall
        *!
       * html .ui-autocomplete {
         height: 200px;
       }*/
    #project-label {
      display: block;
      font-weight: bold;
      margin-bottom: 1em;
    }

    #project-icon {
      float: left;
      height: 32px;
      width: 32px;
    }

    #project-description {
      margin: 0;
      padding: 0;
    }
  </style>
</head>
<body>

<div class="container-fluid" style="margin-top: 30px;">
  <div class="row-fluid">
    <%--<label for="autocomplete">Select a programming language: </label>--%>
    <%--<input id="autocomplete">--%>
    <div id="project-label">Select a project (type "j" for a start):</div>
    <img id="project-icon" src="images/transparent_1x1.png" class="ui-state-default" alt="">
    <input id="project">
    <input type="hidden" id="project-id">
    <p id="project-description"></p>

  </div>
</div>


<%@ include file="/include/script.jsp" %>

<script>

  /*  var projects = [
   {
   value: "jquery",
   label: "jQuery",
   desc: "the write less, do more, JavaScript library",
   icon: "jquery_32x32.png"
   },
   {
   value: "jquery-ui",
   label: "jQuery UI",
   desc: "the official user interface library for jQuery",
   icon: "jqueryui_32x32.png"
   },
   {
   value: "sizzlejs",
   label: "Sizzle JS",
   desc: "a pure-JavaScript CSS selector engine",
   icon: "sizzlejs_32x32.png"
   }
   ];*/

  $("#project").autocomplete({
    minLength: 0,
    source: '/order/autoComplete.do',

//  focus: function (event, ui) {
//    $("#project").val(ui.item.name);
//    return false;
//  },
    select: function (event, ui) {
      $("#project").val(ui.item.name);
//    $("#project-id").val(ui.item.id);
      $("#project-description").html(ui.item.comment);
//      $( "#project-icon" ).attr( "src", "images/" + ui.item.unit );

      return false;
    }
  }).data("ui-autocomplete")._renderItem = function (ul, item) {
    return $("<li>")
        .append("<div>" + item.number + ":" + item.name + "</div>")
        .appendTo(ul);
  };
  /*
   $( "#autocomplete" ).autocomplete({
   source: '/order/autoComplete.do'/!*[
   "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby",
   "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby",
   "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby",
   "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby",
   "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby",
   "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby",
   "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby",
   "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby",
   ]*!/
   });
   */
</script>
</body>
</html>

