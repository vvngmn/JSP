<!--
 Copyright (c) 2001-2014 Openwave Messaging, Inc.
 All Rights Reserved.

 This software is the proprietary information of Openwave Messaging, Inc.
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
<%@ page import="net.cp.webtop.core.util.DiamondUtil" %>
<%@ page import="net.cp.webtop.core.util.UrlStringMapSerializer" %>
<%@ page import="net.cp.webtop.otosan.sso.OtosanSsoHelper" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="com.opwvmsg.webtop.octane.mxos.ProcessAPI" %>
<%@ page import="com.opwvmsg.mxos.exception.MxOSException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
  ApplicationContext ac = DiamondInitListener.getApplicationContext(getServletConfig().getServletContext());
  AuthService authService = ac.getBean(AuthService.class);
  RequestContextFactory requestContextFactory = ac.getBean(RequestContextFactory.class);
  SessionFactory sessionFactory = ac.getBean(SessionFactory.class);
  OtosanSsoHelper ssoHelper = ac.getBean(OtosanSsoHelper.class);

  String cn2 = request.getParameter("cn2");

  RequestContext context = requestContextFactory.getRequestContext(request);
  InternalSession webtopSession = (InternalSession)sessionFactory.createAndLock();
  RequestState requestState = new RequestState(webtopSession, context);
  InternalRequestStateHolder.setRequestState(requestState);

  if (StringUtils.isNotBlank(cn2)) {
    try {
      String plain = ssoHelper.decrypt(cn2);

      Map<String, String> args = (new UrlStringMapSerializer()).parse(plain);

      if (!ssoHelper.validateYDTM(args.get("ydtm"))) {
        response.sendRedirect("sso-error.jsp?rc=1");
      } else {
        try {
          Map<String, List<String>> attrs = ProcessAPI.readExternalLdapAttributes(args.get("idex"));

          String mailboxStatus = DiamondUtil.first(attrs.get("mailboxstatus"));
          String jphoneUserStatus = DiamondUtil.first(attrs.get("jphoneuserstatus"));
          String jphoneUserRcvStatus = DiamondUtil.first(attrs.get("jphoneuserrcvstatus"));
          String jphoneUserMultiDeviceFlag = DiamondUtil.first(attrs.get("jphoneusermultideviceflag"));
          String mailRealm = DiamondUtil.first(attrs.get("mailrealm"));
          String jphoneUserMmssLocation = DiamondUtil.first(attrs.get("jphoneusermmsslocation"));

          if ("A".equalsIgnoreCase(mailboxStatus) &&
              ("A".equalsIgnoreCase(jphoneUserStatus) || "S".equalsIgnoreCase(jphoneUserStatus)) &&
              "A".equalsIgnoreCase(jphoneUserRcvStatus) &&
              "1".equalsIgnoreCase(jphoneUserMultiDeviceFlag))
          {
            if (!"E".equalsIgnoreCase(jphoneUserMmssLocation) && ssoHelper.getEnableAppSuiteRedirect()) {
              String url = ssoHelper.getAppSuiteUrl(mailRealm);
              if (StringUtils.isNotBlank(url)) {
                out.print(ssoHelper.generateForm(url, cn2));
              } else {
                response.sendRedirect("sso-error.jsp?rc=4");
              }
            } else {
              if (ssoHelper.getEnableRedirect() && !ssoHelper.getLocalRealm().equalsIgnoreCase(mailRealm)) {
                String url = ssoHelper.getWebtopUrl(mailRealm);
                if (StringUtils.isNotBlank(url)) {
                  out.print(ssoHelper.generateForm(url, cn2));
                } else {
                  response.sendRedirect("sso-error.jsp?rc=4");
                }
              } else {
                String userName = args.get("idex");

                authService.ssoLogin(response, userName, true, false, null);

                String url = ssoHelper.getWebtopUrl(mailRealm);
                url = url.substring(0, url.lastIndexOf("/")) + "/index.html";
                response.sendRedirect(url);
              }
            }
          } else {
            response.sendRedirect("sso-error.jsp?rc=2");
          }
        } catch (MxOSException e) {
          response.sendRedirect("sso-error.jsp?rc=3");
        }
      }
    } catch (Exception e) {
      response.sendRedirect(ssoHelper.getPortalUrl());
    }
  } else {
    response.sendRedirect(ssoHelper.getPortalUrl());
  }

  sessionFactory.unlock(webtopSession);
  InternalRequestStateHolder.clearRequestState();
%>
