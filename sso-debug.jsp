<!--
 Copyright (c) 2001-2013 Critical Path, Inc.
 All Rights Reserved.

 This software is the proprietary information of Critical Path, Inc.
 Use is subject to license terms.
-->
<%@ page import="net.cp.webtop.auth.AuthService" %>
<%@ page import="net.cp.webtop.core.request.InternalRequestStateHolder" %>
<%@ page import="net.cp.webtop.core.request.RequestContext" %>
<%@ page import="net.cp.webtop.core.request.RequestContextFactory" %>
<%@ page import="net.cp.webtop.core.request.RequestState" %>
<%@ page import="net.cp.webtop.core.session.InternalSession" %>
<%@ page import="net.cp.webtop.core.session.SessionFactory" %>
<%@ page import="net.cp.webtop.core.transport.servlet.DiamondInitListener" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>SSO Utility</title>
  </head>
  <body bgcolor="#FFFFFF">
<%
  String userName = request.getParameter("u");

  if (StringUtils.isBlank(userName)) {
%>
    <p>Use the form below to emulate the SSO posting to Webtop.</p>
    <table>
    <form method="post" action="sso-debug.jsp">
      <tr>
        <td>Username:</td>
        <td><input type="text" name="u" value=""/></td>
        <td>(cannot be blank)</td>
      </tr>      
    </form>
    </table>
<%
  } else {
    ApplicationContext ac = DiamondInitListener.getApplicationContext(getServletConfig().getServletContext());
    AuthService authService = ac.getBean(AuthService.class);
    RequestContextFactory requestContextFactory = ac.getBean(RequestContextFactory.class);
    SessionFactory sessionFactory = ac.getBean(SessionFactory.class);

    RequestContext context = requestContextFactory.getRequestContext(request);
    InternalSession webtopSession = (InternalSession)sessionFactory.createAndLock();
    RequestState requestState = new RequestState(webtopSession, context);
    InternalRequestStateHolder.setRequestState(requestState);

    authService.ssoLogin(response, userName, true, false, null);

    sessionFactory.unlock(webtopSession);
    InternalRequestStateHolder.clearRequestState();

    response.sendRedirect(request.getContextPath()+"/index.html");
  }
%>
  </body>
</html>
