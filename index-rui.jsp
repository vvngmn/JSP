<!DOCTYPE HTML>
<html manifest="rui.appcache">
<head>
    <meta charset="UTF-8">
    <%@ include file="bootstrapService.jsp" %>

    <!-- Load client config, custom settings, and localization.
         The order of these files is not interchangable. -->
    <script type="text/javascript" src="client-config.js?v=2.1.12-2" charset="UTF-8"></script>
    <script type="text/javascript" src="custom-config.js?v=2.1.12-2" charset="UTF-8"></script>
    <script type="text/javascript" src="resources/locale/localization.js"></script>
    <script type="text/javascript" src="ckdevice.js?v=2.1.12-2"></script>
    <script type="text/javascript" >
	

        url = BrowserDetect.checkDesktop();     
        if (url != "index-rui.jsp") window.location.href=url;

        document.title = Locale.pageTitle;

        window.skin = (window.WebtopConfig && WebtopConfig.defaultSkin) || "default";

        if (location.search) {
            var parts = location.search.substring(1).split('&'),
                nv;

            for (var i = 0; i < parts.length; i++) {
                nv = parts[i].split('=');

                if (nv[0] == 's') {
                    window.skin= nv[1];
                } else if (nv[0] == 'd') {
                    window.user_domain = nv[1];
                }
            }
        }
        document.write('<link rel="shortcut icon" href="resources/images/' + window.skin + '/favicon.ico" type="image/x-icon">');
        document.write('<link rel="icon" href="resources/images/' + window.skin + '/favicon.ico" type="image/x-icon">');


        // Check if a new cache is available on page load.
        window.addEventListener('load', function(e) {
          if (!window.applicationCache) return false;
          window.applicationCache.addEventListener('updateready', function(e) {
            if (window.applicationCache.status == window.applicationCache.UPDATEREADY) {
              // Browser downloaded a new app cache.
  //            if (confirm('A new version of this site is available. Load it?')) {
                window.location.reload();
  //              }
            } else {
              // Manifest didn't changed. Nothing new to server.
            }
          }, false);

        }, false);

    </script>
	<meta name="format-detection" content="email=no"></meta>
	<meta name="touchui/apple-mobile-web-app-capable" content="no"></meta>
	<meta name="touchui/apple-touch-fullscreen" content="no">
	<title>Softbank.com</title>

<link rel="stylesheet" href="resources/Richui-all.css"/>
<script type="text/javascript" src="richui/app.js"></script>
</head>
<body>
    <div id="appLoadingIndicator">
        <div></div>
        <div></div>
        <div></div>
    </div>
</body>
</html>
