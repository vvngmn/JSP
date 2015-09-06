<!--
 Copyright (c) 2001-2014 Openwave Messaging, Inc.
 All Rights Reserved.

 This software is the proprietary information of Openwave Messaging, Inc.
 Use is subject to license terms.
-->
<%@ page import="net.cp.webtop.core.transport.servlet.DiamondInitListener" %>
<%@ page import="net.cp.webtop.otosan.sso.OtosanSsoHelper" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>SBM SSO Token Utility</title>
  </head>
  <body bgcolor="#FFFFFF">
<%
ApplicationContext ac = DiamondInitListener.getApplicationContext(getServletConfig().getServletContext());
OtosanSsoHelper ssoHelper = (OtosanSsoHelper)ac.getBean("ssoHelper");

String idex = request.getParameter("idex");
String ydtm = request.getParameter("ydtm");

if (StringUtils.isNotBlank(idex) && StringUtils.isNotBlank(ydtm)) {
  String cn2 = ssoHelper.encrypt(idex, ydtm);

  out.print(ssoHelper.generateForm("sso.jsp", cn2));
}

String[] devIds = {
"08032153623",
"08032153624",
"08032153625",
"08032153626",
"08032153630"
};

String[] jpIds = {
"08032153627",
"08032153628",
"08032153629"
};

String[] qaIds = {
"08032897305",
"08035444054",
"08035444055",
"08035875455",
"08035875456",
"09017018879",
"09017019419",
"09066511202",
"09066511214",
"09066511215",
"09066511231"
};

%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>SBM SSO Token Utility</title>
  </head>
  <body bgcolor="#FFFFFF">
  <table cellpadding="5">
      <tr>
          <th>QA Team</th>
          <th>Dev Team</th>
          <th>JP Team</th>
      </tr>
      <tr>
          <td valign="top">
              <% for (String s : qaIds) {
                  out.println("<a href=\".\" onclick=\"document.getElementById('msisdn').value='" + s + "';document.getElementById('ssoForm').submit();return false\">" + s + "</a><br>");
              }
              %>
          </td>
          <td valign="top">
              <% for (String s : devIds) {
                  out.println("<a href=\".\" onclick=\"document.getElementById('msisdn').value='" + s + "';document.getElementById('ssoForm').submit();return false\">" + s + "</a><br>");
              }
              %>
          </td>
          <td valign="top">
              <% for (String s : jpIds) {
                  out.println("<a href=\".\" onclick=\"document.getElementById('msisdn').value='" + s + "';document.getElementById('ssoForm').submit();return false\">" + s + "</a><br>");
              }
              %>
          </td>
      </tr>
  </table>
  <hr>

    <p>Or use the form below to generate a custom SBM SSO token.</p>
    <table>
      <form id="ssoForm" method="get" action="sso-token.jsp">
        <tr>
          <td>MSISDN:</td>
          <td><input type="text" id="msisdn" name="idex" value="08032153623"/></td>
          <td>(cannot be blank)</td>
        </tr>
        <tr>
          <td>Auth time:</td>
          <td><input type="text" name="ydtm" value="<%=ssoHelper.getCurrentYDTM()%>"/></td>
          <td>(cannot be blank)</td>
        </tr>
        <tr>
          <td colspan="2" align="right"><input type="submit" name="" value="submit"/></td>
          <td></td>
        </tr>
      </form>
    </table>
  </body>
</html>
