var CustomWebtopConfig={defaultSkin:"default",localeSettings:{defaultLocale:"ja_JP",localeDir:"resources/locale/",locales:[{name:"en_US",title:"English",files:"sdk/en_US.js, custom/ja_JP.js, custom/en_US.js"},{name:"ja_JP",title:"日本語",files:"sdk/ja_JP.js, custom/ja_JP.js"}],extLocaleMap:{en_US:"en",ja_JP:"ja"}},common:{inputFieldMaxLength:255,emailRegularExp:/(^([\w\!\#\$\%\&\'\-\=\^\~\\\|\{\}\+\*\.\/]+)@((?:[\w\-]+\.)*[\w\-]+)$)/,emailDomainRegularExp:/^@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$|(^@b\.c$)/,phoneRegularExp:/^[\d\*\+\#\,\;N\/\(\)\.\-P\?]{0,64}$/,contactNameRegularExp:/.*/},user:{keepMeSignedInByDefault:false,inactiveTimeout:30*60*1000,keepSessionAliveInterval:30*60*1000,keepSessionAliveUrl:"https://my.softbank.jp/msb/d/auth/keep",supportCsrfProtection:true},framework:{enabledTimeZone:false,enableInternalAccount:false,warningBeforeLeave:false,supportMSISDN:true,errorHandling:{type:"EMAS_ERROR",errorCodePrefix:"EA2",errorDetailedToken:"X"}},contacts:{disableAvatar:true,enableMergeAndDedup:false,enablecontactgroups:false,enablecontactssort:false,enablePartialMatchWhenFiltering:true,defaultcontactsortby:"lastName, firstName",defaultcontactsortorderby:"ASC",defaultcontactgroupby:"phoneticlastname",enablePhoneticFields:true,displaynameorder:"lastName,firstName",enabledExportFileTypes:"vcard",defualtExportFileType:"vcard",folderNameSize:255,folderNameInvalidChars:/[]/,showAutocompleteAddressbookOnBottom:false,importAcceptHeaderFileTypes:"vcf",indexList:"あ,か,さ,た,な,は,ま,や,ら,わ,other,A-Z",indexRegExp:{overwrite:true,"あ":/[\u3041\u3042\u3043\u3044\u3045\u3046\u3047\u3048\u3049\u304A\u3094\u30A1\u30A2\u30A3\u30A4\u30A5\u30A6\u30A7\u30A8\u30A9\u30AA\u30F4\uFF67\uFF68\uFF69\uFF6A\uFF6B\uFF71\uFF72\uFF73\uFF74\uFF75]/g,"か":/[\u304B\u304C\u304D\u304E\u304F\u3050\u3051\u3052\u3053\u3054\u30AB\u30AC\u30AD\u30AE\u30AF\u30B0\u30B1\u30B2\u30B3\u30B4\u30F5\u30F6\uFF76\uFF77\uFF78\uFF79\uFF7A]/g,"さ":/[\u3055\u3056\u3057\u3058\u3059\u305A\u305B\u305C\u305D\u305E\u30B5\u30B6\u30B7\u30B8\u30B9\u30BA\u30BB\u30BC\u30BD\u30BE\uFF7B\uFF7C\uFF7D\uFF7E\uFF7F]/g,"た":/[\u305F\u3060\u3061\u3062\u3063\u3064\u3065\u3066\u3067\u3068\u3069\u30BF\u30C0\u30C1\u30C2\u30C3\u30C4\u30C5\u30C6\u30C7\u30C8\u30C9\uFF80\uFF81\uFF82\uFF83\uFF84\uFF6F]/g,"な":/[\u306A\u306B\u306C\u306D\u306E\u30CA\u30CB\u30CC\u30CD\u30CE\uFF85\uFF86\uFF87\uFF88\uFF89]/g,"は":/[\u306F\u3070\u3071\u3072\u3073\u3074\u3075\u3076\u3077\u3078\u3079\u307A\u307B\u307C\u307D\u30CF\u30D0\u30D1\u30D2\u30D3\u30D4\u30D5\u30D6\u30D7\u30D8\u30D9\u30DA\u30DB\u30DC\u30DD\uFF8A\uFF8B\uFF8C\uFF8D\uFF8E]/g,"ま":/[\u307E\u307F\u3080\u3081\u3082\u30DE\u30DF\u30E0\u30E1\u30E2\uFF8F\uFF90\uFF91\uFF92\uFF93]/g,"や":/[\u3083\u3084\u3085\u3086\u3087\u3088\u30E3\u30E4\u30E5\u30E6\u30E7\u30E8\uFF6C\uFF94\uFF6D\uFF95\uFF6E\uFF96]/g,"ら":/[\u3089\u308A\u308B\u308C\u308D\u30E9\u30EA\u30EB\u30EC\u30ED\uFF97\uFF98\uFF99\uFF9A\uFF9B]/g,"わ":/[\u308E\u308F\u3090\u3091\u3092\u3093\u30EE\u30EF\u30F0\u30F1\u30F2\u30F3\uFF9C\uFF66\uFF9D]/g,"A-Z":/[A-Za-z]/g,"other":/.*/g},defaultOrder:"work,home,other",showDefaultNameOnForm:false,searchFields:"lastName,lzHeader.phoneticlastname,firstName,lzHeader.phoneticfirstname,lzHeader.middlename,lzHeader.prefix,lzHeader.suffix,lzEmail,lzPhone,lzAddress.home,lzAddress.work",autoSuggestFullMatchingFields:"lzHeader.middlename,lzHeader.prefix,lzHeader.suffix,lzHeader.phoneticfirstname,lzHeader.phoneticlastname,lzAddress.home,lzAddress.work"},calendar:{enabled:false},tasks:{enabled:false},advertisement:{adBannerUrl:"",skyscrapperUrl:""},ui:{floatInfoDuration:2000,settings:{signature:{maxNameLength:255,maxContentLength:255}},rui:{viewport:{minWidth:1024,minHeight:600},header:{isStaticHeader:true},windowButtonsOrder:"<",layout:{navigateButton:{padding:"0, 0, 0, 10"},categoryPanel:{minWidth:205,maxWidth:1200,width:271},listPanel:{minWidth:350,width:350},previewPanel:{padding:10},detailPanel:{minWidth:350}},navigation:{hideAux:true,mail:{index:1},contacts:{index:2},calendar:{index:3},settings:{index:4,align:"right"}},contacts:{listToolbar:["sendMail","newContact","deleteContact","moveToFolder","newAddressBook","editAddressBook","deleteAddressBook","-","sendvCards","importContacts","exportContacts"],detailToolbar:["compose","edit","delete","sendvCard"],alphabetstrip:{align:"left",width:50},listViewPanel:{searchFieldWidth:220,allowedMaxChecked:5,width:360}},mail:{composeFormat:"rich",toolbar:["compose","search","reply","replyAll","forwardInline","delete",{"more":["move","edit","spam","unspam","read","unread"]}],listToolbar:["reply","replyAll","forwardInline","delete","move","edit","spam","unspam","read","unread"],previewToolbar:["reply","replyAll","forward","delete","move","spam","unspam","read","unread"],folder:{addFolderByWin:false}},settings:{noAuthority:{profile:false,vCard:true,languageTimeDate:true,password:true,accounts:true,signature:true,blockedSenders:true,safeSenders:true,rules:true,autoForward:true,autoReply:true,disposableAddress:true,blockImage:true,calendar:true,contactsettings:true},maxGridHeight:300}},tui:{windowButtonsOrder:"<",enablePullDownToRefresh:false,showRefreshBtnOnAppBar:true,showSwitchAccountBtn:false,titleOnSidebar:"appname",mail:{replyAndForwardMenu:["reply","replyAll","forward"]}}},globalSidebar:{showLogo:false,showGoogleSearch:false},appSwitcherItemStyle:"icon_label",blockSenderSettingsUrl:"https://my.softbank.jp/msb/d/webLink/doSend/SCS010000",externalUrls:{help:{rui:"http://ckantan.jp/dm/mob/dm_comfirm.jsp?cmcd=4100020592",tui:"http://ckantan.jp/dm/mob/dm_comfirm.jsp?cmcd=4100020592"},tutorial:{rui:"http://ckantan.jp/dm/mob/dm_comfirm.jsp?cmcd=4100028401",tui:"http://ckantan.jp/dm/mob/dm_comfirm.jsp?cmcd=4100028401"}},globalHeaderUrl:{rui:"header/global_header.html?v="+new Date().getTime(),tui:"header/global_header.html?v="+new Date().getTime()},locationMapUrl:{rui:"https://www.google.com/jsapi",tui:"https://maps.googleapis.com/maps/api/js?sensor=false"},mail:{enableTrustSenderlist:false,enableSignature:true,enableSignatureSeparator:false,signatureSeparator:"--<br>",enableDeleteMessageConfirm:true,emailAddressRegexp:/(^([\w\!\#\$\%\&\'\-\=\^\~\\\|\{\}\+\*\.\/]+)@((?:[\w\-]+\.)*[\w\-]+)$)|(^\+?([\d\ \-]){9,30}$)/i,enableFlag:false,sortByAttachment:false,enableBlockSender:false,enablePriority:false,enableSizeColumn:false,advancedSearch:{enableBody:false},enableOptionsBar:false,enableReceipts:false,enableUpdateTitle:false,enableTemplates:false,enableSpellcheck:false,editorType:"rich",enableEditTable:false,enableFontface:false,enableCustEmoji:true,enableWebfont:false,enableReplyPrefix:false,maxActiveEditor:10,maxAttachments:50,maxEmailSize:2097152,maxSizeOfAvatar:90,folderSize:60,layoutPriority:{previewRight:true,previewBelow:true,noPreview:true,attachmentView:false,conversationView:false},moveSpamMsg:false,multipleSingle:{read:"multiple",unread:"multiple",spam:"singleOnly",unspam:"singleOnly"},sendButton:{highlight:false,showIcon:false},checkedItems:{quickCheckedItems:50,checkedLimit:50}},serviceRequestTimeout:180000,settings:{itemIdViewMapping:{"profile":"Richui.custom.view.settings.profile.ProfileSBM","languageTimeDate":"Richui.view.settings.LanguageTimeDate","password":"Richui.view.settings.Password","accounts":"Richui.view.settings.mail.MailAccounts","signature":"Richui.view.settings.mail.MailSignature","blockedSenders":"Richui.view.settings.mail.BlockSender","safeSenders":"Richui.view.settings.mail.WhiteList","rules":"Richui.view.settings.mail.Rules","autoForward":"Richui.view.settings.mail.MailForward","autoReply":"Richui.view.settings.mail.AutoReply","disposableAddress":"Richui.view.settings.mail.DisposableAddress","calendar":"Richui.view.settings.CalendarSettings","mail":"Richui.view.settings.mail.GeneralSetting","blockImage":"Richui.view.settings.mail.BlockImage","contactsettings":"Richui.view.settings.ContactSettings"},dateAndTime:{enabled:false,defaultValue:{dateFormat:"YYYY/MM/DD",useDeviceTimezone:true,timeFormat24Hour:true}},mail:{blockImage:{alwaysAllowImages:true,alwaysBlockImages:true,alwaysAllowImagesFromContacts:true,alwaysAllowImagesExceptSpam:false},preferences:{replyQuoting:{key:"replyQuoting",enable:true,defaultValue:false}},blockSender:true,vacationMessage:false,autoSaveDraftInterval:[{value:60},{value:120},{value:300}],autoCheckInterval:[{value:0},{value:300},{value:900},{value:1800},{value:3600}],dataUseInfo:false,signatureMaxLength:2000,signatureType:"plain"},preferences:{ConversationEnable:{key:"conversationEnable",enable:false,defaultValue:"false"},ReloadOnDelete:{key:"attr.user.mail.reloadOnDelete",enable:false,defaultValue:"true"},TimeDisplayFormat:{key:"attr.user.mail.TimeDisplayFormat",enable:false,defaultValue:"short"},DateFormat:{key:"attr.user.DateFormat",enable:true,defaultValue:"YYYY/MM/DD"}}}};var CustomConstant={};if(window.mergeObj&&window.WebtopConfig){WebtopConfig=mergeObj(WebtopConfig,CustomWebtopConfig)};