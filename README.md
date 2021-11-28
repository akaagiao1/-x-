# Shadowrocket rule-set
[General]
dns-server = 13800000000.rubyfish.cn:853, 1.2.4.8, 114.114.114.114, 223.5.5.5, 8.8.8.8, system
bypass-tun = 0.0.0.0/8, 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.168.0.0/16, 192.88.99.0/24, 198.18.0.0/15, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 255.255.255.255/32
skip-proxy = localhost, *.local, captive.apple.com, 0.0.0.0/8, 10.0.0.0/8, 17.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.168.0.0/16, 192.88.99.0/24, 198.18.0.0/15, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 240.0.0.0/4, 255.255.255.255/32
bypass-system = true
ipv6 = true

[Rule]
# Unbreak
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Unbreak.list,DIRECT
#Disney plus
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/release/rule/Shadowrocket/Disney/Disney.list,PROXY
# Netflix
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Netflix/Netflix.list,PROXY

#Advertising
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Advertising.list,REJECT

Privacy
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Privacy.list,REJECT

#Hijacking
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Guard/Hijacking.list,REJECT

#Streaming
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/StreamingMedia/Streaming.list,PROXY,force-remote-dns

#Global
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Global.list,PROXY,force-remote-dns

#China
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/China.list,DIRECT

#ChinaIP
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/ChinaIP.list,DIRECT

#Telegram
RULE-SET,https://raw.githubusercontent.com/DivineEngine/Profiles/master/Surge/Ruleset/Extra/Telegram/Telegram.list,PROXY,force-remote-dns

#Twitter
RULE-SET,https://github.com/DivineEngine/Profiles/blob/master/Surge/Ruleset/Extra/Twitter.list,PROXY,force-remote-dns

URL-REGEX,^https:\/\/.+\.googlevideo\.com\/.+&oad,REJECT
DOMAIN-SUFFIX,tiktokv.com,PROXY
DOMAIN-SUFFIX,musical.ly,PROXY

GEOIP,CN,DIRECT
FINAL,PROXY

[Host]

[URL Rewrite]

# Redirect Google Search Service
^(http|https):\/\/(www.)?(g|google)\.cn https://www.google.com 302

# Redirect Google Maps Service
^(http|https):\/\/(ditu|maps).google\.cn https://maps.google.com 302

# Redirect HTTP to HTTPS
^(http|https):\/\/(www.)?taobao\.com\/ https://taobao.com/ 302
^(http|https):\/\/(www.)?jd\.com\/ https://www.jd.com/ 302
^(http|https):\/\/(www.)?mi\.com\/ https://www.mi.com/ 302
^(http|https):\/\/you\.163\.com\/ https://you.163.com/ 302
^(http|https):\/\/(www.)?suning\.com\/ https://suning.com/ 302
^(http|https):\/\/(www.)?yhd\.com\/ https://yhd.com/ 302

# Weibo Short URL
^http:\/\/t\.cn https://sinaurl.cn 302

# Redirect False to True
# > IGN China to IGN Global
^(http|https):\/\/(www.)?ign\.xn--fiqs8s\/ http://cn.ign.com/ccpref/us 302
# > Fake Website Made By C&J Marketing
^(http|https):\/\/(www.)?abbyychina\.com\/ https://www.abbyy.cn/ 302
^(http|https):\/\/(www.)?bartender\.cc\/ https://www.macbartender.com/ 302
^(http|https):\/\/(www.)?(betterzipcn|betterzip)\.(com|net)\/ https://macitbetter.com/ 302
^(http|https):\/\/(www.)?beyondcompare\.cc\/ https://www.scootersoftware.com/ 302
^(http|https):\/\/(www.)?bingdianhuanyuan\.cn\/ https://www.faronics.com/zh-hans/products/deep-freeze 302
^(http|https):\/\/(www.)?chemdraw\.com\.cn\/ https://www.perkinelmer.com.cn/ 302
^(http|https):\/\/(www.)?codesoftchina\.com\/ https://www.teklynx.com/ 302
^(http|https):\/\/(www.)?coreldrawchina\.com\/ https://www.coreldraw.com/cn/ 302
^(http|https):\/\/(www.)?crossoverchina\.com\/ https://www.codeweavers.com/ 302
^(http|https):\/\/(www.)?dongmansoft\.com\/ https://www.udongman.cn/ 302
^(http|https):\/\/(www.)?earmasterchina\.cn\/ https://www.earmaster.com/ 302
^(http|https):\/\/(www.)?easyrecoverychina\.com\/ https://www.ontrack.com/ 302
^(http|https):\/\/(www.)?ediuschina\.com\/ https://www.grassvalley.com/ 302
^(http|https):\/\/(www.)?flstudiochina\.com\/ https://www.image-line.com/ 302
^(http|https):\/\/(www.)?formysql\.com\/ https://www.navicat.com.cn/ 302
^(http|https):\/\/(www.)?guitarpro\.cc\/ https://www.guitar-pro.com/ 302
^(http|https):\/\/(www.)?huishenghuiying\.com\.cn\/ https://www.coreldraw.com/cn/ 302
^(http|https):\/\/hypersnap\.mairuan\.com\/ https://www.hyperionics.com/ 302
^(http|https):\/\/(www.)?iconworkshop\.cn\/ https://www.axialis.com/ 302
^(http|https):\/\/(www.)?imindmap\.cc\/ https://www.ayoa.com/previously-imindmap/ 302
^(http|https):\/\/(www.)?jihehuaban\.com\.cn\/ https://www.chartwellyorke.com/sketchpad/x24795.html 302
^(http|https):\/\/hypersnap\.mairuan\.com\/ https://www.keyshot.com/ 302
^(http|https):\/\/(www.)?kingdeecn\.cn\/ http://www.kingdee.com/ 302
^(http|https):\/\/(www.)?logoshejishi\.com https://www.sothink.com/product/logo-design-software/ 302
^(http|https):\/\/logoshejishi\.mairuan\.com\/ https://www.sothink.com/product/logo-design-software/ 302
^(http|https):\/\/(www.)?luping\.net\.cn\/ https://www.techsmith.com/ 302
^(http|https):\/\/(www.)?mathtype\.cn\/ https://www.dessci.com/ 302
^(http|https):\/\/(www.)?mindmanager\.(cc|cn)\/ https://www.mindjet.com/cn/ 302
^(http|https):\/\/(www.)?mindmapper\.cc\/ https://www.mindmapper.com/ 302
^(http|https):\/\/(www.)?(mycleanmymac|xitongqingli)\.com\/ https://macpaw.com/ 302
^(http|https):\/\/(www.)?nicelabel\.cc\/ https://www.nicelabel.com/zh/ 302
^(http|https):\/\/(www.)?ntfsformac\.cc\/ https://www.tuxera.com/products/tuxera-ntfs-for-mac-cn/ 302
^(http|https):\/\/(www.)?ntfsformac\.cn\/ https://china.paragon-software.com/home-mac/ntfs-for-mac/ 302
^(http|https):\/\/(www.)?overturechina\.com\/ https://sonicscores.com/ 302
^(http|https):\/\/(www.)?passwordrecovery\.cn\/ https://cn.elcomsoft.com/aopr.html 302
^(http|https):\/\/(www.)?pdfexpert\.cc\/ https://pdfexpert.com/zh 302
^(http|https):\/\/(www.)?photozoomchina\.com\/ https://www.benvista.com/ 302
^(http|https):\/\/(www.)?shankejingling\.com\/ https://www.sothink.com/product/flashdecompiler/ 302
^(http|https):\/\/cn\.ultraiso\.net\/ https://cn.ezbsystems.com/ultraiso/ 302
^(http|https):\/\/(www.)?vegaschina\.cn\/ https://www.vegascreativesoftware.com/ 302
^(http|https):\/\/(www.)?xshellcn\.com\/ https://www.netsarang.com/zh/xshell/ 302
^(http|https):\/\/(www.)?yuanchengxiezuo\.com\/ https://www.teamviewer.com/ 302
^(http|https):\/\/(www.)?zbrushcn.com/ https://pixologic.com/ 302

# AbeamTV - api.abema.io
^(http|https):\/\/api\.abema\.io\/v\d\/ip\/check - reject

# 0~9
# > 21st Century Business Herald - api.21jingji.com
^(http|https):\/\/api\.21jingji\.com\/ad\/ - reject
# > 4gTV - service.4gtv.tv
^(http|https):\/\/service\.4gtv\.tv\/4gtv\/Data\/(GetAD|ADLog) - reject
# > 58 - app.58.com,pic?.ajkimg.com
^(http|https):\/\/app\.58\.com\/api\/home\/(advertising|appadv)\/ - reject
^(http|https):\/\/app\.58\.com\/api\/home\/invite\/popupAdv - reject
^(http|https):\/\/app\.58\.com\/api\/log\/ - reject
^(http|https):\/\/pic\d\.ajkimg\.com\/mat\/\w+\?imageMogr\d\/format\/jpg\/thumbnail\/\d{3}x\d{4}$ - reject
^(http|https):\/\/\w+\.58cdn\.com\.cn\/brandads\/ - reject

# A
# --- (Alibaba) ---
# > Taobao - gw.alicdn.com,heic.alicdn.com
^(http|https):\/\/(gw|heic)\.alicdn\.com\/\w{2}s\/[\w\/.-]+\.jpg_(9\d{2}|\d{4}) - reject
# > Xianyu - acs.m.taobao.com
^(http|https):\/\/acs\.m\.taobao\.com\/gw\/mtop\.taobao\.idle\.home\.welcome\/ - reject
# > Fliggy - acs.m.taobao.com
^(http|https):\/\/acs\.m\.taobao\.com\/gw\/mtop\.trip\.activity\.querytmsresources\/ - reject
# > Taopiaopiao - acs.m.taobao.com
^(http|https):\/\/acs\.m\.taobao\.com\/gw\/mtop\.film\.mtopadvertiseapi\.queryadvertise\/ - reject
# > koubei - acs.m.taobao.com
^(http|https):\/\/render\.alipay\.com\/p\/s\/h5data\/prod\/spring-festival-2019-h5data\/popup-h5data\.json - reject
^(http|https):\/\/acs\.m\.taobao\.com\/gw\/mtop\.o2o\.ad\.gateway\.get\/ - reject
^(http|https):\/\/guide-acs\.m\.taobao\.com\/gw\/mtop\.taobao\.wireless\.home\.splash\.awesome\.get\/ - reject
^(http|https):\/\/acs\.m\.taobao\.com\/gw\/mtop\.o2o\.ad\.exposure\.get\/ - reject
# > Xiami Music - acs.m.taobao.com
^(http|https):\/\/acs\.m\.taobao\.com\/gw\/mtop\.alimusic\.common\.mobileservice\.startinit\/ - reject
# > AMap - m*.amap.com
^(http|https):\/\/m\d\.amap\.com\/ws\/valueadded\/alimama\/splash_screen\/ - reject
# > YOUKU
^(http|https):\/\/[\w-.]+\.ott\.cibntv\.net\/[\w\/-]+.mp4\?sid= - reject
# ---
# > AcFun - api-new.app.acfun.cn
^(http|https):\/\/api-new\.app\.acfun\.cn\/rest\/app\/flash\/screen\/ - reject
# > AiMeiJu - api.bjxkhc.com
^(http|https):\/\/api\.bjxkhc\.com\/index\.php\/app\/ios\/ads\/ - reject

# B
# > ByteDance - *.amemv.com,*.snssdk.com
^(http|https):\/\/[\w-]+\.(amemv|musical|snssdk|tiktokv)\.(com|ly)\/(api|motor)\/ad\/ - reject
^(http|https):\/\/[\w-]+\.snssdk\.com\/.+_ad\/ - reject
^(http|https):\/\/[\w-]+\.snssdk\.com\/motor\/operation\/activity\/display\/config\/V2\/ - reject
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/img\/ad\.union\.api\/ - reject
^(http|https):\/\/dsp\.toutiao\.com\/api\/xunfei\/ads\/ - reject
# ---(Baidu)---
# > Baidu NetDisk - issuecdn.baidupcs.com
^(http|https):\/\/pan\.baidu\.com\/rest\/\d\.\d\/pcs\/adx - reject
^(http|https):\/\/pan\.baidu\.com\/act\/api\/activityentry - reject
^(http|https):\/\/issuecdn\.baidupcs\.com\/issue\/netdisk\/(guanggao|ts_ad)\/ - reject
# > Baidu Tieba
^(http|https):\/\/c\.tieba\.baidu\.com\/c\/s\/splashSchedule - reject
^(http|https):\/\/c\.tieba\.baidu\.com\/c\/f\/forum\/getAdInfo - reject
^(http|https):\/\/c\.tieba\.baidu\.com\/\w+\/\w+\/(sync|newRnSync|mlog) - reject
# > Baidu Map - newclient.map.baidu.com
^(http|https):\/\/newclient\.map\.baidu\.com\/client\/phpui2\/\?qt=ads - reject
# > Baidu InputMethod - mime.baidu.com
^(http|https):\/\/mime\.baidu\.com\/v\d\/IosStart\/getStartInfo$ - reject
^(http|https):\/\/mime\.baidu\.com\/v\d\/activity\/advertisement - reject
# > iQIYI
^(http|https):\/\/iface\.iqiyi\.com\/api\/getNewAdInfo - reject
^(http|https):\/\/act\.vip\.iqiyi\.com\/interact\/api\/show\.do - reject
^(http|https):\/\/act\.vip\.iqiyi\.com\/interact\/api\/v\d\/show - reject
# ---
# > bilibili - app.bilibili.com,manga.bilibili.com
^(http|https):\/\/app\.bilibili\.com\/x\/v\d\/splash\/ - reject
^(http|https):\/\/manga\.bilibili\.com\/twirp\/comic\.v\d\.Comic\/Flash - reject
# > BeiTaiKitchen - channel.beitaichufang.com
^(http|https):\/\/channel\.beitaichufang\.com\/channel\/api\/v\d\/promote\/ios\/start\/page - reject
# > BiShiJie - iapi.bishijie.com
^(http|https):\/\/iapi\.bishijie\.com\/actopen\/advertising\/ - reject
# > Beike - app.api.ke.com
^(http|https):\/\/app\.api\.ke\.com\/config\/config\/bootpage - reject
# > boohee
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/api\/v\d\/app_square\/start_up_with_ad$ - reject
# > bodivis - www.bodivis.com.cn
^(http|https):\/\/www\.bodivis\.com\.cn\/app\/splashAdvertise - reject
# > BabyHealth - yxyapi*.drcuiyutao.com
^(http|https):\/\/yxyapi\d\.drcuiyutao\.com\/yxy-api-gateway\/api\/json\/advert\/ - reject

# C
# > ChinaMobile - clientaccess.10086.cn
^(http|https):\/\/clientaccess\.10086\.cn\/biz-orange\/DN\/init\/startInit - reject
^(http|https):\/\/wap\.js\.10086\.cn\/jsmccClient\/cd\/market_content\/api\/v\d\/market_content\.page\.query - reject
# ---
# > ChinaUnicom - m.client.10010.com
^(http|https):\/\/m\.client\.10010\.com\/mobileService\/customer\/accountListData\.htm - reject
^(http|https):\/\/m\.client\.10010\.com\/uniAdmsInterface\/getWelcomeAd - reject
# ---(ChinaTelecom)---
# > Cloud189 - cloud.189.cn
^(http|https):\/\/cloud\.189\.cn\/include\/splash\/ - reject
# > YueMeTV
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d):\d+/xygj-config-api\/queryData - reject
# ---
# > CNTV
^(http|https):\/\/www\.cntv\.cn\/nettv\/adp\/ - reject
# > Chelaile - api.chelaile.net.cn,web.chelaile.net.cn
^(http|https):\/\/api\.chelaile\.net\.cn\/adpub\/ - reject
^(http|https):\/\/api\.chelaile\.net\.cn\/goocity\/advert\/ - reject
^(http|https):\/\/web\.chelaile\.net\.cn\/api\/adpub\/ - reject
# > Caocao - cap.caocaokeji.cn
^(http|https):\/\/cap\.caocaokeji\.cn\/advert-bss\/ - reject
# > CaijingNet - api.caijingmobile.com
^(http|https):\/\/api\.caijingmobile\.com\/(ad|advert)\/ - reject
^(http|https):\/\/m\.caijing\.com\.cn\/startup_ad_ios\.html$ - reject
# > CSDN - gw.csdn.net
^(http|https):\/\/gw\.csdn\.net\/cms-app\/v\d+\/home_page\/open_advertisement - reject

# D
# > DU - app.poizon.com
^(http|https):\/\/app\.poizon\.com\/api\/v\d\/app\/advertisement\/ - reject
# > douban - api.douban.com
^(http|https):\/\/api\.douban\.com\/v\d\/app_ads\/ - reject
# > DouYuZhiBo - rtbapi.douyucdn.cn
^(http|https):\/\/rtbapi\.douyucdn\.cn\/japi\/sign\/app\/getinfo\?uid=&mdid=iphone&client_sys=ios$ - reject
# > Dangdang - e.dangdang.com
^(http|https):\/\/mapi\.dangdang\.com\/index\.php\?action=init - reject
^(http|https):\/\/e\.dangdang\.com\/media\/api\d\.go\?action=getDeviceStartPage - reject
# > Daoyu - daoyu.sdo.com
^(http|https):\/\/daoyu\.sdo\.com\/api\/userCommon\/getAppStartAd - reject
# > Dida
^(http|https):\/\/capis(-slb)?\.didapinche\.com\/ad\/ - reject
^(http|https):\/\/www\.didapinche\.com\/app\/adstat\/ - reject
# > Dianshijia
^(http|https):\/\/api\.gaoqingdianshi\.com\/api\/v\d\/ad\/ - reject
^(http|https):\/\/cdn\.dianshihome\.com\/static\/ad\/ - reject
# > DDpai
^(http|https):\/\/app\.ddpai\.com\/d\/api\/v\d\/config\/get\/bootscreen - reject
# > DayDayCook - *.daydaycook.com
^(http|https):\/\/api\.daydaycook\.com\.cn\/daydaycook\/server\/ad\/ - reject
^(http|https):\/\/cms\.daydaycook\.com\.cn\/api\/cms\/advertisement\/ - reject
# > DingDongMaiCai - maicai.api.ddxq.mobi
^(http|https):\/\/maicai\.api\.ddxq\.mobi\/advert\/ - reject

# E
# > eLong - mobile-api2011.elong.com,123.59.31.1,119.18.193.135
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/(adgateway|adv)\/ - reject
^(http|https):\/\/mobile-api2011.elong.com\/(adgateway|adv)\/ - reject
# > eDaijia
^(http|https):\/\/pic\.edaijia\.cn\/adsplash\/ - reject
# > eleme - cube.elemecdn.com
^(http|https):\/\/cube\.elemecdn\.com\/[\w\/]+\.jpeg\?x-oss-process=image\/resize,m_fill,w_\d{3},h_\d{4}\/format,webp\/ - reject
^(http|https):\/\/cube\.elemecdn\.com\/[\w\/]+\.jpeg\?x-oss-process=image\/resize,m_fill,w_6\d{2},h_8\d{2}\/format,webp\/ - reject
# > ezviz ViedoGo - i.ys7.com
^(http|https):\/\/i\.ys7\.com\/api\/ads - reject

# F
# > Foodie
^(http|https):\/\/foodie-api\.yiruikecorp\.com\/v\d\/(banner|notice)\/overview - reject
# > FOTOABLE
^(http|https):\/\/cdn\.api\.fotoable\.com\/Advertise\/ - reject
# > FlyerTea - www.flyertea.com
^(http|https):\/\/www\.flyertea\.com\/source\/plugin\/mobile\/mobile\.php\?module=advis - reject
# > FengWatch - dsa-mfp.fengshows.cn
^(http|https):\/\/dsa-mfp\.fengshows\.cn\/mfp\/mfpMultipleDelivery\.do\?[a-z0-9&=]+adunitid - reject
# > feng - api.feng.com
^(http|https):\/\/api\.feng\.com\/v\d\/advertisement\/.*Claunch - reject
# > FaceBeauty - *-release.wuta-cam.com
^(http|https):\/\/api-release\.wuta-cam\.com\/ad_tree - reject
^(http|https):\/\/res-release\.wuta-cam\.com\/json\/ads_component_cache\.json - reject

# G
# > Google - *.googlevideo.com,*.youtube.com
# ^(http|https):\/\/[\w-]+\.googlevideo\.com\/.+(&oad|ctier) - reject
^(http|https):\/\/\w+\.youtube\.com\/api\/stats\/ads - reject
^(http|https):\/\/\w+\.youtube\.com\/(pagead|ptracking) - reject
ctier=[A-Z] citer=A 302
# > Gofun - gateway.shouqiev.com
^(http|https):\/\/gateway\.shouqiev\.com\/fsda\/app\/bootImage\.json - reject
# > Guotai Junan Securities - dl.app.gtja.com
^(http|https):\/\/dl\.app\.gtja\.com\/dzswem\/kvController\/[\w\/]+\.jpg$ - reject
# > Gome - prom.mobile.gome.com.cn
^(http|https):\/\/prom\.mobile\.gome\.com\.cn\/mobile\/promotion\/promscms\/\w+\.jsp - reject

# H
# > HangZhou CityzenCard - smkmp.96225.com
^(http|https):\/\/smkmp\.96225.com\/smkcenter\/ad/ - reject
# > Huomao - api.huomao.com
^(http|https):\/\/api\.huomao\.com\/channels\/loginAd - reject
# > HanjuTV
^(http|https):\/\/api\.hanju\.koudaibaobao\.com\/api\/carp\/kp\? - reject

# I
# > iFLY Input - imeclient.openspeech.cn
^(http|https):\/\/imeclient\.openspeech\.cn\/adservice\/ - reject
# > Intsig CamScaner - api.intsig.net
^(http|https):\/\/api\.intsig\.net\/user\/cs\/operating\/app\/get_startpic\/ - reject
# > iReader - ih2.ireader.com
^(http|https):\/\/ih2\.ireader\.com\/zyapi\/bookstore\/ad\/ - reject
^(http|https):\/\/ih2\.ireader\.com\/zyapi\/self\/screen\/ad - reject
^(http|https):\/\/ih2\.ireader\.com\/zycl\/api\/ad\/ - reject
# > inanning - nnapp.cloudbae.cn
^(http|https):\/\/nnapp\.cloudbae\.cn:\d+\/mc\/api\/advert/ - reject
# > iFreeTime
^(http|https):\/\/api\.applovefrom\.com\/api\/v\d\/splash\/ - reject
# > iCleaner - ib-soft.net
^(http|https):\/\/ib-soft\.net\/icleaner\/txt\/ad_priority\.txt$ - reject
# > Inoreader - www.inoreader.com
^(http|https):\/\/www\.inoreader\.com\/adv\/ - reject

# J 注释掉了京东的复写，似乎有问题。
# > JD - api.m.jd.com,ms.jr.jd.com,img*.360buyimg.com
# ^(http|https):\/\/api\.m\.jd.com\/client\.action\?functionId=start - reject
# ^(http|https):\/\/api\.m\.jd.com\/client\.action\?functionId=queryMaterialAdverts - reject
#^(http|https):\/\/(bdsp-x|dsp-x)\.jd\.com\/adx\/ - reject
#^(http|https):\/\/ms\.jr\.jd\.com\/gw\/generic\/aladdin\/na\/m\/getLoadingPicture - reject
#^(http|https):\/\/img\d+\.360buyimg\.com\/jddjadvertise\/ - reject
# > JiaXiaoeDianTong - api.jxedt.com,richmanapi.jxedt.com
^(http|https):\/\/api\.jxedt\.com\/ad\/ - reject
^(http|https):\/\/richmanapi\.jxedt\.com\/api\/(ad|adplus)\/ - reject
# > JiaKaoBaoDian - *.kakamobi.cn
^(http|https):\/\/\w+\.kakamobi\.cn\/api\/open\/v\d\/advert-sdk\/ - reject
# > Jinse - app-api.jinse.com
^(http|https):\/\/app-api\.jinse\.com\/v\d\/ad\/ - reject

# K
# > Kingsoft - ios.wps.cn,*.kingsoft-office-service.com
^(http|https):\/\/ios\.wps\.cn\/ad-statistics-service - reject
^(http|https):\/\/\w+\.kingsoft-office-service\.com\/ad - reject
^(http|https):\/\/dict-mobile\.iciba\.com\/interface\/index\.php\?[\w=&]*(c=ad|collectFeedsAdShowCount|KSFeedsAdCardViewController) - reject
^(http|https):\/\/service\.iciba\.com\/popo\/open\/screens\/v\d\?adjson - reject
^(http|https):\/\/mobile-pic\.cache\.iciba\.com\/feeds_ad\/ - reject
# > Keep - api.gotokeep.com
^(http|https):\/\/api\.gotokeep\.com\/ads - reject
# > Kuaikan Comics - api.kkmh.com
^(http|https):\/\/api\.kkmh\.com\/v\d+\/(ad|advertisement)\/ - reject
# > KOOWO - 122.14.246.33,175.102.178.52
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/MobileAdServer\/ - reject
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/EcomResourceServer/AdPlayPage/adinfo - reject

# L
# > LaiFeng
^(http|https):\/\/api\.laifeng\.com\/v\d\/start\/ads - reject

# M
# > MI - api.jr.mi.com,api-mifit*.huami.com
^(http|https):\/\/api\.m\.mi\.com\/v\d\/app\/start - reject
^(http|https):\/\/api\.jr\.mi\.com\/v\d\/adv\/ - reject
^(http|https):\/\/api\.jr\.mi\.com\/jr\/api\/playScreen - reject
^(http|https):\/\/(api-mifit|api-mifit-\w+)\.huami\.com\/discovery\/mi\/discovery\/\w+_ad\? - reject
# > MogoRenter - api.mgzf.com
^(http|https):\/\/api\.mgzf\.com\/renter-operation\/home\/startHomePage - reject
# > MojiWeather - cdn.moji.com
^(http|https):\/\/cdn\.moji\.com\/(adoss|adlink)\/ - reject
# > ManHuaRen
^(http|https):\/\/mangaapi\.manhuaren\.com\/v\d\/public\/getStartPageAds - reject
# > Meituan-Dianping - img.meituan.net,p*.meituan.net,s3plus.meituan.net,flowplus.meituan.net
^(http|https):\/\/img\.meituan\.net\/(adunion|display|midas)\/\w+\.(gif|jpg|jpg\.webp)$ - reject
^(http|https):\/\/(s3plus|flowplus)\.meituan\.net\/v\d\/\w+\/linglong\/\w+\.(gif|jpg|mp4) - reject
^(http|https):\/\/p\d\.meituan\.net\/(bizad|wmbanner)\/\w+\.jpg - reject
^(http|https):\/\/p\d\.meituan\.net\/movie\/\w+\.jpg\?may_covertWebp - reject
# > mwee - capi.mwee.cn
^(http|https):\/\/capi.mwee.cn/app-api/V\d+/app/(ad|getstartad) - reject
# > MiaoPai
^(http|https):\/\/b-api\.ins\.miaopai\.com\/\d\/ad/ - reject
# > Mafengwo - mapi.mafengwo.cn
^(http|https):\/\/mapi\.mafengwo\.cn\/ad\/ - reject
^(http|https):\/\/mapi\.mafengwo\.cn\/travelguide\/ad\/ - reject
# > MixC - app.mixcapp.com
^(http|https):\/\/app\.mixcapp\.com\/mixc\/api\/v\d\/ad - reject

# N
# ---(NetEase)---
# > NetEase MailMaster - appconf.mail.163.com
^(http|https):\/\/appconf\.mail\.163\.com\/mmad\/ - reject
# > NetEase News - c.m.163.com
^(http|https):\/\/c\.m\.163\.com\/nc\/gl\/ - reject
# > NetEase MoneyKeeper - client.mail.163.com
^(http|https):\/\/client\.mail\.163\.com\/apptrack\/confinfo\/searchMultiAds - reject
# > NetEase CloudMusic - interface*.music.163.com,59.111.181.*
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/eapi\/ad\/ - reject
^(http|https):\/\/interface(\d)?.music.163.com\/eapi\/ad\/ - reject
# > NetEase Kaola - sp.kaola.com
^(http|https):\/\/sp\.kaola\.com\/api\/openad - reject
# > NetEase You - support.you.163.com
^(http|https):\/\/support\.you\.163\.com\/xhr\/boot\/getBootMedia\.json - reject
# > NetEase SnailRead - p.du.163.com
^(http|https):\/\/p\.du\.163\.com\/ad\/ - reject
# ---
# > NationalGeographic
^(http|https):\/\/dili\.bdatu\.com\/jiekou\/ad\/ - reject
# > NationalGeographicChina
^(http|https):\/\/wap\.ngchina\.cn\/news\/adverts\/ - reject
# > NIU - app-api.niu.com
^(http|https):\/\/app-api\.niu\.com\/v\d\/advertisement\/ - reject

# O
# > Oray - slapi.oray.net
^(http|https):\/\/slapi\.oray\.net\/client\/ad - reject

# P
# > PiaoGen - pss.txffp.com
^(http|https):\/\/pss\.txffp\.com\/piaogen\/images\/launchScreen/ - reject
# > Pinduoduo - api.yangkeduo.com
^(http|https):\/\/api\.yangkeduo\.com\/api\/cappuccino\/splash - reject
^(http|https):\/\/t00img\.yangkeduo\.com\/goods\/[\d-]+\/[A-Za-z0-9]+\.jpeg\?imageView2\/format\/webp$ - reject
# > PeanutWiFi
^(http|https):\/\/cmsapi\.wifi8\.com\/v\d\/(emptyAd|adNew)\/ - reject
# > PConline - mrobot.pconline.com.cn,mrobot.pcauto.com.cn
^(http|https):\/\/agent-count\.pconline\.com\.cn\/counter\/adAnalyse\/ - reject
^(http|https):\/\/mrobot\.pconline\.com\.cn\/v\d\/ad2p - reject
^(http|https):\/\/mrobot\.pconline\.com\.cn\/s\/onlineinfo\/ad\/ - reject
^(http|https):\/\/mrobot\.pcauto\.com\.cn\/v\d\/ad2p - reject
^(http|https):\/\/mrobot\.pcauto\.com\.cn\/xsp\/s\/auto\/info\/preload\.xsp - reject

# Q
# > Qdaily
^(http|https):\/\/app\d\.qdaily\.com\/app\d\/boot_advertisements\.json - reject
^(http|https):\/\/notch\.qdaily\.com\/api\/v\d\/boot_ad - reject
# > QYER - open.qyer.com,media.qyer.com
^(http|https):\/\/open\.qyer\.com\/qyer\/startpage\/ - reject
^(http|https):\/\/open\.qyer\.com\/qyer\/config\/get - reject
^(http|https):\/\/media\.qyer\.com\/ad\/ - reject
# > Qinbaobao - api.qbb6.com
^(http|https):\/\/api\.qbb6\.com\/ad\/ - reject
# > QDReader - mage.if.qidian.com
^(http|https):\/\/mage\.if\.qidian\.com\/argus\/api\/v\d\/client\/getsplashscreen - reject

# R
# > RRtv - msspjh.emarbox.com,api.rr.tv
^(http|https):\/\/msspjh\.emarbox\.com\/getAdConfig - reject
^(http|https):\/\/api\.videozhishi\.com\/api\/getAdvertising - reject
^(http|https):\/\/api\.rr\.tv\/ad\/ - reject

# S
# ---(Sina)---
# > Weibo - *.uve.weibo.com,weibointl.api.weibo.cn,api.weibo.cn, mapi.weibo.com
# ^(http|https):\/\/sdkapp\.uve\.weibo\.com\/interface\/sdk\/(actionad|sdkad)\.php - reject
# ^(http|https):\/\/wbapp\.uve\.weibo\.com\/wbapplua\/wbpullad\.lua - reject
^(http|https):\/\/weibointl\.api\.weibo\.cn\/portal\.php\?a=get_coopen_ads - reject
# > tianqitong - tqt.weibo.cn
^(http|https):\/\/tqt\.weibo\.cn\/overall\/redirect\.php\?r=(tqt_sdkad|tqtad) - reject
^(http|https):\/\/tqt\.weibo\.cn\/[\w=?&%.-]+advert\.index - reject
^(http|https):\/\/tqt\.weibo\.cn\/api\/advert\/ - reject
# ---
# > SOHU - *.k.sohu.com,*.tv.sohu.com
^(http|https):\/\/api\.k\.sohu\.com\/api\/news\/adsense - reject
^(http|https):\/\/pic\.k\.sohu\.com\/img\d\/wb\/tj\/ - reject
^(http|https):\/\/s1\.api\.tv\.itc\.cn\/v\d\/mobile\/control\/switch\.json - reject
^(http|https):\/\/(api|api-bk\d+)\.tv\.sohu\.com\/agg\/api\/app\/config\/bootstrap - reject
# > SMZDM - ap*.smzdm.com
^(http|https):\/\/api\.smzdm\.com\/v\d\/util\/loading - reject
^(http|https):\/\/app-api\.smzdm\.com\/util\/loading - reject
^(http|https):\/\/s\d\.zdmimg\.com\/www\/api\/v\d\/api\/thirdAd\.php - reject
# > SCore
^(http|https):\/\/api\.qiuduoduo\.cn\/guideimage - reject
# > Shihuo
^(http|https):\/\/www\.shihuo\.cn\/app\d\/saveAppInfo - reject
# > Shouqiyueche - gw-passenger.01zhuanche.com
^(http|https):\/\/gw-passenger\.01zhuanche\.com\/gw-passenger\/zhuanche-passengerController\/notk\/passenger\/recommendADs - reject
# > Suning - mpcs.suning.com
^(http|https):\/\/image\.suning\.cn\/uimg\/ma\/ad\/ - reject
^(http|https):\/\/mpcs\.suning\.com\/mpcs\/dm\/getDmInfo - reject
# > SOGO - business-cdn.shouji.sogou.com
# ^(http|https):\/\/business-cdn\.shouji\.sogou\.com\/wapdl\/hole\/.+\.(jpg|mp4|png) - reject
# > SF Express - ccsp-egmas.sf-express.com
^(http|https):\/\/ccsp-egmas\.sf-express\.com\/cx-app-base\/base\/app\/ad\/ - reject
# > SF HiveConsumer - consumer.fcbox.com
^(http|https):\/\/consumer\.fcbox\.com\/v\d\/ad\/ - reject
# > SuperFriday
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)(:\d+)?\/V\d\/splash\/getSplashV\d\.action$ - reject
# > StarFans - g.cdn.pengpengla.com
^(http|https):\/\/g\.cdn\.pengpengla\.com\/starfantuan\/boot-screen-info\/ - reject
# > Snail Sleep - snailsleep.net
^(http|https):\/\/snailsleep\.net\/snail\/v\d\/screen\/qn\/get\? - reject
^(http|https):\/\/snailsleep\.net\/snail\/v\d\/adTask\/ - reject

# T
# ---(Tencent)---
# > FUTU - api*.futunn.com
^(http|https):\/\/api\.futunn\.com\/v\d\/ad\/ - reject
^(http|https):\/\/api\d\.futunn\.com\/ad\/ - reject
# > Tencent Game - ssl.kohsocialapp.qq.com
^(http|https):\/\/ssl\.kohsocialapp\.qq\.com:\d+\/game\/buttons - reject
^(http|https):\/\/qt\.qq\.com\/lua\/mengyou\/get_splash_screen_info - reject
# > Tencent Map - 4gimg.map.qq.com
^(http|https):\/\/4gimg\.map\.qq\.com\/mwaSplash\/ - reject
# > Tencent Video
^(http|https):\/\/vv\.video\.qq\.com\/getvmind\? - reject
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/[a-z.]+\.tc\.qq\.com\/[\w\W]+p20\d\.1\.mp4\? - reject
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/[a-z.]+\.tc\.qq\.com\/[\w\W]+=v3004 - reject
^(http|https):\/\/video\.dispatch\.tc\.qq\.com\/\w+\.p20\d\.1\.mp4 - reject
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/[a-z.]+\.tc\.qq\.com\/[\w\W]+_p20\d_ - reject
# > Tencent News - r.inews.qq.com
^(http|https):\/\/r\.inews\.qq\.com\/(adsBlacklist|getFullScreenPic|getQQNewsRemoteConfig) - reject
# > Tencent Sports - news.ssp.qq.com
^(http|https):\/\/news\.ssp\.qq\.com\/app - reject
# > Tencent Music
^(http|https):\/\/y\.gtimg\.cn\/music\/common\/upload\/t_splash_info\/ - reject
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/music\/common\/upload\/t_splash_info\/ - reject
# > Tencent WeChat - mp.weixin.qq.com
# ^(http|https):\/\/mp\.weixin\.qq\.com\/mp\/(ad_|advertisement) - reject
# ---
# > TuNiu - m.tuniu.com
^(http|https):\/\/m\.tuniu\.com\/api\/operation\/splash\/ - reject
# > TVBCLive - mob.mddcloud.com
^(http|https):\/\/mob\.mddcloud\.com\.cn\/api\/(ad|advert)\/ - reject

# U
# > UCar - img*.10101111cdn.com
^(http|https):\/\/img\d+\.10101111cdn\.com\/adpos\/ - reject

# V
# > VUE - api.vuevideo.net
^(http|https):\/\/api\.vuevideo\.net\/api\/v\d\/ad\/ - reject
# > VariFlight - app.variflight.com,api.cdmcaac.com
^(http|https):\/\/app\.variflight\.com\/ad\/ - reject
^(http|https):\/\/app\.variflight\.com\/v\d\/advert\/ - reject
^(http|https):\/\/api\.cdmcaac\.com\/ad\/ - reject
# > VISTOPIA - api.vistopia.com.cn
^(http|https):\/\/api\.vistopia\.com\.cn\/api\/v\d\/home\/advertisement - reject

# W
# > WeDoctor - app.wy.guahao.com
^(http|https):\/\/app\.wy\.guahao\.com\/json\/white\/dayquestion\/getpopad - reject
# > Weico
^(http|https):\/\/overseas\.weico\.cc/portal\.php\?a=get_coopen_ads - reject
# > Weidian - thor.weidian.com
^(http|https):\/\/thor\.weidian\.com\/ares\/home\.splash\/ - reject
# > WaitWaitPay - api.waitwaitpay.com
# ^(http|https):\/\/api\.waitwaitpay\.com\/\/api\/splash - reject

# X
# > Xiachufang - api.xiachufang.com
^(http|https):\/\/api\.xiachufang\.com\/v\d\/ad/ - reject
# > XiaoChaoBrain - api.psy-1.com
^(http|https):\/\/api\.psy-1\.com\/cosleep\/startup - reject
# > Xunyou Game Booster - portal-xunyou.qingcdn.com
^(http|https):\/\/portal-xunyou\.qingcdn\.com\/api\/v\d\/ios\/configs\/(splash_ad|ad_urls) - reject
^(http|https):\/\/portal-xunyou\.qingcdn\.com\/api\/v\d\/ios\/ads\/ - reject
# > Ximalaya FM
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/api\/v\d\/adRealTime - reject
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/(outadservice|ting\/preload)\/ - reject
# > Xueqiu - api.xueqiu.com,promo.xueqiu.com,182.92.251.113
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\/promotion\/(display_cache|display_ad|feed_display|search_ad) - reject
^(http|https):\/\/(api|promo)\.xueqiu\.com\/promotion\/(display_cache|display_ad|feed_display|search_ad) - reject

# Y
# > Youtube++
^(http|https):\/\/api\.catch\.gift\/api\/v\d\/pagead\/ - reject
# > YinxiangNote - app.yinxiang.com
^(http|https):\/\/app\.yinxiang\.com\/ads\/ - reject
# > YUNMAI - restapi.iyunmai.com
^(http|https):\/\/restapi\.iyunmai\.com\/api\/ios\/ad\/ - reject
# > YYeTss
^(http|https):\/\/tj\.playcvn\.com\/app\/ads\? - reject
^(http|https):\/\/\w+\.jstucdn\.com\/(g3\/|js\/ad) - reject

# Z
# > Zhihu - api.zhihu.com
^(http|https):\/\/api\.zhihu\.com\/commercial_api\/(launch|real_time) - reject
^(http|https):\/\/api\.zhihu\.com\/fringe\/ad - reject
^(http|https):\/\/api\.zhihu\.com\/ad - reject
^(http|https):\/\/api\.zhihu\.com\/appview\/api\/v\d\/answers\/\d+\/recommendations - reject
^(http|https):\/\/api\.zhihu\.com\/answers\/\d+\/comments\/featured-comment-ad - reject
# > zhibo8 - a.qiumibao.com
^(http|https):\/\/a\.qiumibao\.com\/activities\/config\.php - reject
^(http|https):\/\/((25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d)\.){3}(25[0-5]|2[0-4]\d|1\d{2}|[1-9]?\d):\d+\/allOne\.php\?ad_name - reject
# > zhuishushenqi - *.zhuishushenqi.com
^(http|https):\/\/(api|b)\.zhuishushenqi\.com\/advert - reject
^(http|https):\/\/api\.zhuishushenqi\.com\/splashes\/ios - reject
^(http|https):\/\/api\.zhuishushenqi\.com\/notification\/shelfMessage - reject
^(http|https):\/\/api\.zhuishushenqi\.com\/user\/bookshelf-updated - reject
^(http|https):\/\/itunes\.apple\.com\/lookup\?id=575826903 - reject
# > Zuoyebang - www.zybang.com
^(http|https):\/\/www\.zybang\.com\/adx\/ - reject
# > ZUIYOU - api.izuiyou.com
^(http|https):\/\/api\.izuiyou\.com\/ad\/ - reject
# > Zhan - tiku.zhan.com
^(http|https):\/\/tiku\.zhan\.com\/Common\/newAd\/ - reject
# > Zhangyue - webboot.zhangyue.com,saad.ms.zhangyue.net
^(http|https):\/\/webboot\.zhangyue\.com\/zycl\/api\/ad\/ - reject
^(http|https):\/\/saad\.ms\.zhangyue\.net\/ad - reject

# tiktok解锁
(?<=_region=)CN(?=&) JP 302
(?<=\d\/\?version_code=)1[6-9]..(?=.?.?&) 17 302
(?<=\?version_code=)1[8-9]..(?=.?.?&) 17 302
(?<=&mcc_mnc=)4 2 302
ctier=[A-Z] ctier=A 302
^https:\/\/[\s\S]*\.googlevideo\.com/.*&(oad|ctier) _ REJECT


[MITM]
enable = false
hostname = *.googlevideo.com,%APPEND% *.googlevideo.com,www.google.cn,api.abema.io,api.21jingji.com,service.4gtv.tv,app.58.com,pic?.ajkimg.com,gw.alicdn.com,heic.alicdn.com,acs.m.taobao.com,m*.amap.com,api-new.app.acfun.cn,api.bjxkhc.com,*.amemv.com,*.snssdk.com,issuecdn.baidupcs.com,newclient.map.baidu.com,mime.baidu.com,app.bilibili.com,manga.bilibili.com,channel.beitaichufang.com,iapi.bishijie.com,app.api.ke.com,www.bodivis.com.cn,yxyapi*.drcuiyutao.com,clientaccess.10086.cn,m.client.10010.com,cloud.189.cn,api.chelaile.net.cn,web.chelaile.net.cn,cap.caocaokeji.cn,api.caijingmobile.com,gw.csdn.net,app.poizon.com,api.douban.com,rtbapi.douyucdn.cn,e.dangdang.com,daoyu.sdo.com,*.daydaycook.com,maicai.api.ddxq.mobi,mobile-api2011.elong.com,123.59.31.1,119.18.193.135,cube.elemecdn.com,i.ys7.com,www.flyertea.com,dsa-mfp.fengshows.cn,api.feng.com,*-release.wuta-cam.com,*.youtube.com,gateway.shouqiev.com,dl.app.gtja.com,prom.mobile.gome.com.cn,smkmp.96225.com,api.huomao.com,imeclient.openspeech.cn,api.intsig.net,ih2.ireader.com,nnapp.cloudbae.cn,ib-soft.net,www.inoreader.com,api.m.jd.com,ms.jr.jd.com,img*.360buyimg.com,api.jxedt.com,richmanapi.jxedt.com,*.kakamobi.cn,app-api.jinse.com,ios.wps.cn,*.kingsoft-office-service.com,api.gotokeep.com,api.kkmh.com,122.14.246.33,175.102.178.52,api.jr.mi.com,api-mifit*.huami.com,api.mgzf.com,cdn.moji.com,img.meituan.net,p*.meituan.net,s3plus.meituan.net,flowplus.meituan.net,capi.mwee.cn,mapi.mafengwo.cn,app.mixcapp.com,appconf.mail.163.com,c.m.163.com,client.mail.163.com,interface*.music.163.com,59.111.181.*,sp.kaola.com,support.you.163.com,p.du.163.com,app-api.niu.com,slapi.oray.net,pss.txffp.com,api.yangkeduo.com,mrobot.pconline.com.cn,mrobot.pcauto.com.cn,open.qyer.com,media.qyer.com,api.qbb6.com,mage.if.qidian.com,msspjh.emarbox.com,api.rr.tv,*.uve.weibo.com,weibointl.api.weibo.cn,api.weibo.cn,mapi.weibo.com,tqt.weibo.cn,*.k.sohu.com,*.tv.sohu.com,ap*.smzdm.com,gw-passenger.01zhuanche.com,mpcs.suning.com,ccsp-egmas.sf-express.com,consumer.fcbox.com,g.cdn.pengpengla.com,snailsleep.net,api*.futunn.com,ssl.kohsocialapp.qq.com,4gimg.map.qq.com,r.inews.qq.com,news.ssp.qq.com,mp.weixin.qq.com,m.tuniu.com,mob.mddcloud.com,img*.10101111cdn.com,api.vuevideo.net,app.variflight.com,api.cdmcaac.com,api.vistopia.com.cn,app.wy.guahao.com,thor.weidian.com,api.xiachufang.com,api.psy-1.com,portal-xunyou.qingcdn.com,api.xueqiu.com,promo.xueqiu.com,182.92.251.113,app.yinxiang.com,restapi.iyunmai.com,api.zhihu.com,118.89.204.198,a.qiumibao.com,*.zhuishushenqi.com,www.zybang.com,api.izuiyou.com,tiku.zhan.com,webboot.zhangyue.com,saad.ms.zhangyue.net,trade-acs.m.taobao.com,api.m.jd.com,*.tiktokv.com, *.byteoversea.com, *.musical.ly, *.snssdk.com

[Script]
##脚本区域
# BoxJs 稳定版
  Rewrite: BoxJs = type=http-request,pattern=^https?://boxjs.com,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/chavy.box.js, requires-body=true, timeout=120
#DNSPOD
Dnspod = type=dns,script-path=https://raw.githubusercontent.com/maicoo-l/Surge/master/Script/dnspod.js,script-update-interval=24,enable=true

#抖音去水印
Douyin_remove_watermark_req = type=http-request,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Aweme.js,pattern=^https?:\/\/.+?\.amemv\.com\/aweme\/v\d\/(feed|aweme\/post|follow\/feed|nearby\/feed|search\/item|general\/search\/single|hot\/search\/video\/list)\/,script-update-interval=24,enable=true

Douyin_remove_watermark_res = type=http-response,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Aweme.js,pattern=^https?:\/\/.+?\.amemv\.com\/aweme\/v\d\/(feed|aweme\/post|follow\/feed|nearby\/feed|search\/item|general\/search\/single|hot\/search\/video\/list)\/,max-size=0,requires-body=true,script-update-interval=24,enable=true

# 淘宝比价
tb_price = type=http-request,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price.js,pattern=^http://.+/amdc/mobileDispatch,requires-body=true,script-update-interval=24,enable=true

tb_price = type=http-response,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price.js,pattern=^https?://trade-acs\.m\.taobao\.com/gw/mtop\.taobao\.detail\.getdetail,requires-body=true,script-update-interval=24,enable=true

#京东比价
jd_price = type=http-response type=http-response,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/jd_price.js,pattern=^https?://api\.m\.jd\.com/client\.action\?functionId=(wareBusiness|serverConfig|basicConfig),max-size=131072,requires-body=true,script-update-interval=24,enable=true

#京东cookie
JD_Cookie = type=http-request,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/JD-DailyBonus/JD_DailyBonus.js,pattern=https:\/\/api\.m\.jd\.com\/client\.action.*functionId=signBean,script-update-interval=86400
,enable=true

#微博去广告
weiboad = type=http-response,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_launch.js,pattern=^https?://(sdk|wb)app\.uve\.weibo\.com(/interface/sdk/sdkad.php|/wbapplua/wbpullad.lua),max-size=131072,requires-body=true,script-update-interval=24,enable=true

weiboad = type=http-response,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_ad.js,pattern=^https?://m?api\.weibo\.c(n|om)/2/(statuses/(unread|extend|positives/get|(friends|video)(/|_)(mix)?timeline)|stories/(video_stream|home_list)|(groups|fangle)/timeline|profile/statuses|comments/build_comments|photo/recommend_list|service/picfeed|searchall|cardlist|page|!/photos/pic_recommend_status|video/tiny_stream_video_list|photo/info),max-size=-1,requires-body=true,script-update-interval=24,enable=true

###定时任务区域

#京东签到
#浏览器登录 https://bean.m.jd.com 点击签到并且出现签到日历
JD_sign = type=cron,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/JD-DailyBonus/JD_DailyBonus.js,cronexpr="5 0 * * *",wake-system=true,timeout=20,script-update-interval=24,enable=true

#京小超蓝币
JD_blueCoin = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_blueCoin.js,cronexpr="0 0 0 * * *",wake-system=true,timeout=20,script-update-interval=24,enable=true

#京东摇钱树
JD_moneyTree = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_moneyTree.js,cronexpr="3 */2 * * *",wake-system=true,timeout=20,script-update-interval=24,enable=true

#京东宠汪汪
JD_joy = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_joy.js,cronexpr="15 */2 * * *",wake-system=true,timeout=20,script-update-interval=24,enable=true

#京东天天加速
JD_speed = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_speed.js,cronexpr="8 */3 * * *",wake-system=true,timeout=20,script-update-interval=24,enable=true

#京东水果
JD_fruit = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_fruit.js,cronexpr="5 6-18/6 * * *",wake-system=true,timeout=120,script-update-interval=24,enable=true

#京东萌宠助手
JD_pet = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_pet.js,cronexpr="5 6-18/6 * * *",wake-system=true,timeout=120,script-update-interval=24,enable=true

#京东种豆得豆
JD_plantBean = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_plantBean.js,cronexpr="1 7-21/2 * * *",wake-system=true,timeout=120,script-update-interval=24,enable=true

#宠汪汪喂食
JD_joy_feedPets = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_joy_feedPets.js,cronexpr="15 */1 * * *",wake-system=true,timeout=20,script-update-interval=24,enable=true

#宠汪汪偷好友积分与狗粮
JD_joy_steal = type=cron,,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_joy_steal.js,cronexpr="0 0,6 * * *",wake-system=true,timeout=320script-update-interval=24,enable=true

#宠汪汪积分兑换奖品
JD_joy_reward = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_joy_reward.js,cronexpr="0 0-16/8 * * *",wake-system=true,timeout=20,script-update-interval=24,enable=true

#进店领豆
JD_shop = type=cron,cronexpr="10 0 * * *",wake-system=1,timeout=20,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_shop.js,script-update-interval=24,enable=true

#京东取关商品
JD_unsubscribe = type=cron,script-path=https://raw.githubusercontent.com/lxk0301/scripts/master/jd_unsubscribe.js,cronexpr="55 23 * * *",wake-system=true,timeout=20,script-update-interval=24,enable=true

#91解锁VIP
91VIP = type=http-response,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/91ShortVideo.js,pattern=^https?:\/\/.+\.(my10api|(.*91.*))\.(com|tips|app|xyz)(:\d{2,5})?\/api.php$,max-size=131072,requires-body=true,script-update-interval=24,enable=true

#钉钉打卡提醒
DingdingClock = type=cron,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/clock_in.js,cronexpr="0 9,18 * * 1-5",script-update-interval=24,enable=true

#疫情动态 作者Peng-YM，协助维护 Mazetsz
COVID-19 = type=cron,script-path=https://raw.githubusercontent.com/Peng-YM/QuanX/master/Tasks/nCov.js,cronexpr="0 8-22/2 * * *",script-update-interval=24,enable=true

# 一言
Calendar = type=cron,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Meeta/Surge/Scripting/Calendar.js,cronexpr="0 8 * * *",script-update-interval=24,enable=true

# 每日一句+ 蚂蚁森林收能量
cron_daily = type=cron,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/yichahucha/cron_daily.js,cronexpr="30 7 * * *",script-update-interval=24,enable=true

# 世界时间
Worldtime = type=cron,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Task/time.js,cronexpr="0 8 * * *",script-update-interval=24,enable=true

#jscool
jscool = type=cron,script-path=https://raw.githubusercontent.com/demo2099/QTXScripts/master/js/githublog.js,cronexpr="1 9,21 * * *",script-update-interval=24,enable=true

# 签到脚本
# @chavyleung

# 电信营业厅
#打开 APP 手动签到一次: 访问下右下角 `我` > `签到` (头像下面)
Telecom = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/10000/10000.js,cronexpr="1 0 * * *",script-update-interval=24,enable=true

# AcFun
#打开 APP, 访问下`我的`
AcFun = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/acfun/acfun.js,cronexpr="1 0 * * *",script-update-interval=24,enable=true

# APK.TW
#打开浏览器访问: https://apk.tw `(先登录! 把页面切换为电脑版)`
APK.TW = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/apktw/apktw.js,cronexpr="1 0 * * *",script-update-interval=24,enable=true

# bilibili
#打开浏览器访问: https://www.bilibili.com 或 https://live.bilibili.com
bilibili = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/bilibili/bilibili.js,cronexpr="2 0 * * *",script-update-interval=24,enable=true

#如需银瓜子转硬币，取消下方注释
# bilibili-silver2coin = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/bilibili/bilibili.silver2coin.js,cronexpr="2 0 * * *",script-update-interval=24,enable=true

# 懂球帝
#打开懂球帝 (打开前先杀掉 APP)
dongqiudi = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/dongqiudi/dongqiudi.js,cronexpr="2 0 * * *",script-update-interval=24,enable=true

# 威锋网
#打开浏览器访问: https://www.feng.com`(先登录! 把页面切换为电脑版)`
feng = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/feng/feng.js,cronexpr="2 0 * * *",script-update-interval=24,enable=true

# 飞客茶馆
#打开 APP, 访问下`个人中心`
flyertea = type=cron,script-path=,cronexpr="3 0 * * *",script-update-interval=24,enable=true

# 网易云音乐
#浏览器访问并登录: https://music.163.com/m/login
neteasemusic = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/flyertea/flyertea.js,cronexpr="3 0 * * *",script-update-interval=24,enable=true

# 网易新闻
#打开 APP 然后手动签到 1 次
neteasenews = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/neteasenews/neteasenews.js,cronexpr="3 0 * * *",script-update-interval=24,enable=true

# 去哪儿
#打开 APP 然后手动签到 1 次
qunar = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/qunar/qunar.js,cronexpr="4 0 * * *",script-update-interval=24,enable=true

# 人人视频
#打开 APP, 访问下`个人中心`
rrtv = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/rrtv/rrtv.js,cronexpr="4 0 * * *",script-update-interval=24,enable=true

# 顺丰速运
#打开 APP, 访问下`我的顺丰` > `去签到` (访问下`去签到`的页面即可, 不用点`签到`)
#打开 APP或小程序, 访问下`27周年庆`
sfexpress = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/sfexpress/sfexpress.js,cronexpr="4 0 * * * ",script-update-interval=24,enable=true

# 什么值得买
#浏览器访问并登录: https://zhiyou.smzdm.com/user/login
smzdm = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/smzdm/quanx/smzdm.js,cronexpr="5 0 * * *",script-update-interval=24,enable=true

# 百度签到
#先登录,浏览器访问一下: https://tieba.baidu.com 或者 https://tieba.baidu.com/index/
tieba = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/tieba/tieba.js,cronexpr="5 0 * * *",script-update-interval=24,enable=true

# V2EX
#浏览器打开https://www.v2ex.com/mission/daily ，待弹出获取成功即可
v2ex = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/v2ex/quanx/v2ex.js,cronexpr="5 0 * * *",script-update-interval=24,enable=true

# 腾讯视频
#1.手机浏览器访问并登录: https://film.qq.com/
videoqq = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/videoqq/videoqq.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true

# 喜马拉雅
#打开 APP, 访问下右下角`账号`
ximalaya = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/ximalaya/ximalaya.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true

# 网易严选
#打开 APP, 访问下`个人`>`每日签到`(右上角)
yanxuan = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/yanxuan/yanxuan.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true

# 字幕组
#网页:打开浏览器访问: http://www.rrys2019.com, App: 打开 APP 即可
zimuzu = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/zimuzu/zimuzu.js,cronexpr="7 0 * * *",script-update-interval=24,enable=true

# QQ音乐
#打开 APP 然后手动签到 1 次
qqmusic = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/qqmusic/qqmusic.js,cronexpr="7 0 * * *",script-update-interval=24,enable=true

# CSDN
# 打开 APP , 系统提示: `获取刷新链接: 成功`,然后手动签到 1 次, 系统提示: `获取Cookie: 成功`
CSDN = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/csdn/csdn.js,cronexpr="7 0 * * *",script-update-interval=24,enable=true

# 加油广东
#打开 APP 然后手动签到 1 次
gdoil = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/gdoil/gdoil.js,cronexpr="1 7 * * *",script-update-interval=24,enable=true

# 芒果TV
#打开 APP 然后手动签到 1 次
mgtv = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/mgtv/mgtv.js,cronexpr="8 0 * * *",script-update-interval=24,enable=true

# 米游社
#打开 APP
mihoyo = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/mihoyo/mihoyo.js,cronexpr="8 0 * * *",script-update-interval=24,enable=true

# 中国联通
#1打开 APP , 进入签到页面, 系统提示: `获取刷新链接: 成功`,然后手动签到 1 次
#2首页>天天抽奖, 系统提示 `2` 次: `获取Cookie: 成功 (登录抽奖)` 和 `获取Cookie: 成功 (抽奖次数)`
10010 = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/10010/10010.js,cronexpr="8 0 * * *",script-update-interval=24,enable=true

# 猫咪音乐
#打开 网站 `https://www.maomicd.com` 然后手动签到 1 次
maomicd = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/maomicd/maomicd.js,cronexpr="9 0 * * *",script-update-interval=24,enable=true

# 中国移动
#打开 APP , 进入签到页面, 系统提示: `获取刷新链接: 成功`,然后手动签到 1 次
10086 = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/10086/10086.js,cronexpr="9 0 * * *",script-update-interval=24,enable=true

# 美团外卖
#打开 APP , 进入签到页面, 系统提示: `获取刷新链接: 成功`,然后手动签到 1 次
wmmeituan = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/wmmeituan/wmmeituan.js,cronexpr="9 0 * * *",script-update-interval=24,enable=true

# 美团
#打开 APP , 然后手动签到 1 次, (`首页` > `红包签到`)
meituan = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/meituan/meituan.js,cronexpr="10 0 * * *",script-update-interval=24,enable=true

# 时光相册
#打开 APP 然后手动签到 1 次
everphoto = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/everphoto/everphoto.js,cronexpr="10 0 * * *",script-update-interval=24,enable=true

# 百词斩
#打开 APP 手动签到一次: 访问下右下角 `我` > `我的铜板` > `加入百词斩小班` > `去查看` > `我的小班进去 领铜板`
bcz = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/bcz/bcz.js,cronexpr="0 8-20/4 * * *",script-update-interval=24,enable=true

# 叮咚买菜
#打开 APP, 访问下`我的`>`积分`
mcdd = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/mcdd/mcdd.js,cronexpr="10 0 * * *",script-update-interval=24,enable=true

# 分期乐
#打开 APP 手动签到一次: 访问下右下角 `我的` > `乐星` > `签到`
#`我的` > `账单点击` > `超级乐星日/天天领乐星`
fenqile = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/fenqile/fenqile.js,cronexpr="10 0 * * *",script-update-interval=24,enable=true

# 樊登读书
#打开 APP 手动签到一次: 访问下右下角 `我的` > `签到`
fandeng = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/fandeng/fandeng.js,cronexpr="10 0 * * ",script-update-interval=24,enable=true

# 全民K歌
#打开 APP 手动签到一次: 访问下右下角 `我的` > `任务中心` > `签到`
qmkg = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/qmkg/qmkg.js,cronexpr="10 0 * * *",script-update-interval=24,enable=true

# 合创
#打开 APP 然后手动签到 1 次
hycan = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/hycan/hycan.js,cronexpr="11 0 * * *",script-update-interval=24,enable=true

# 蔚来
#打开 APP 手动签到一次
nio = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/nio/nio.js,cronexpr="11 0 * * *",script-update-interval=24,enable=true

# 京东到家
#手机浏览器打开`https://daojia.jd.com/html/index.html` 点击签到
jddj = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/jddj/jddj.js,cronexpr="11 0 * * *",script-update-interval=24,enable=true

# 海底捞
#打开APP 然后手动签到 1 次
hdl = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/haidilao/hdl.js,cronexpr="12 0 * * *",script-update-interval=24,enable=true

# 网易考拉
#打开 APP 手动签到一次: 访问下右下角 `我的考拉` > `领考拉豆` > `签到`
wykl = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/wykl/wykl.js,cronexpr="12 0 * * *",script-update-interval=24,enable=true

# WPS
# 打开 APP 我 > 签到 (右上角, 不用手动签到)
WPS = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/wps/wps.js,cronexpr="12 0 * * *",script-update-interval=24,enable=true

# 七猫小说
# APP内手动日常签到(观看小视频领取奖励)和新手领福利签到以及幸运大转盘 1 次
qmnovel = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/qimao/qmnovel.js,cronexpr="12 0 * * *",script-update-interval=24,enable=true

# 智行火车
# 打开 APP 手动签到一次: 访问下右下角 `个人中心` > `签到`
zxhc = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/zxhc/zxhc.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true

# 苏宁易购
# 首页 > 签到有礼
# 首页 > 领取红包
# 首页  > 天天低价
suning = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/suning/suning.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true

# Zaker
# 打开App,然后手动签1次
zaker = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/zaker/zaker.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true

# 不背单词
# 打开App,然后手动签1次
bubei = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/bubei/bubei.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true

# 豆瓣时间
# 打开 APP 手动签到一次:  `市集` > `豆瓣时间` > `签到`
dbsj = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/dbsj/dbsj.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true

# 哈啰出行
# 打开 APP 进入签到页面:  `我的` > `有哈有车`
hellobike = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/hellobike/hellobike.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true

# 掌上飞车
# 打开 APP[掌上飞车],然后手动签到 1 次
zsfc = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/zsfc/zsfc.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true
 
# 趣头条
# 打开 APP 进入签到:  `右上角` > `签到`
# 阅读篇数获取Cookie:`小视频`中播放一段时间视频即可获取,具体的阅读篇数奖励请到应用内手动点击
# 首页金币奖励:此Cookie在首页的推荐中随机出现,随机获取,并不一定会出现。
qtt = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/qtt/qtt.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true
 
# 米读
# 打开 APP 进入`我的` -> `疯狂摇摇乐`,系统提示: `签到:获取Cookie: 成功`
# 阅读时长获取Cookie:打开 APP 选取文章阅读， `书城` > `任意文章阅读` 等到提示获取Cookie成功即可
miduRead = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/midu/miduRead.js,cronexpr="11 11 * * *",script-update-interval=24,enable=true
miduSign = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/midu/miduSign.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true

# 多看
# `我的` > `签到任务` 等到提示获取 Cookie 成功即可
duokan = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/duokan/duokan.js,cronexpr="13 0 * * *",script-update-interval=24,enable=true
 
# 京东618
jd.618 = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/jd/jd.618.js,cronexpr="10,20,30,40,50 0 * * *",script-update-interval=24,enable=true
jd.618.boom = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/jd/jd.618.boom.js,cronexpr="0 10,12,18,20,21 * * *",script-update-interval=24,enable=true

# 有道云笔记
noteyoudao = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/noteyoudao/noteyoudao.js,cronexpr="3 0 * * *",script-update-interval=24,enable=true

# 切换会话
# 访问: https://8.8.8.8/home管理
jd-switcher = type=cron,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/box/switcher/box.switcher.js,cronexpr="0 12 * * *",script-update-interval=24,enable=true

# @NobyDa
# 贴吧
#打开App,访问下右下角 `我的
TieBa = type=cron,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/BDTieBa-DailyBonus/TieBa.js,cronexpr="1,2,3 0 * * *",script-update-interval=24,enable=true
 
# 爱奇艺
#打开App,访问下右下角 `我的
iQIYI = type=cron,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/iQIYI-DailyBonus/iQIYI.js,cronexpr="1 0 * * *",script-update-interval=24,enable=true
 
# 52破解
#浏览器访问https://www.52pojie.cn/home.php?mod=space 即可
52pojie = type=cron,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/52pojie-DailyBonus/52pojie.js,cronexpr="2 0 * * *",script-update-interval=24,enable=true
 
# 哔哩哔哩漫画
#打开App,访问下右下角 `我的
Manga = type=cron,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Bilibili-DailyBonus/Manga.js,cronexpr="2 0 * * *",script-update-interval=24,enable=true
 
# 饿了么   (By @syzzzf)
#打开 APP, 访问下`我的`>`签到领红包`(左上角)
elemCheckIn = type=cron,script-path=https://raw.githubusercontent.com/zZPiglet/Task/master/elem/elemCheckIn.js,cronexpr="3 0 * * *",script-update-interval=24,enable=true
elemSign = type=cron,script-path=https://raw.githubusercontent.com/songyangzz/QuantumultX/master/elem/elemSign.js,cronexpr="3 0 * * *",script-update-interval=24,enable=true
  
# 英雄联盟排名 (By @syzzzf)
lol = type=cron,script-path=https://raw.githubusercontent.com/songyangzz/QuantumultX/master/lol.js,cronexpr="3 0 * * *",script-update-interval=24,enable=true
 
#TestFlight公测监控 (By @syzzzf)
testflight = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/testflight.js,cronexpr="0 0-23/1 * * *",script-update-interval=24,enable=true
 
# 斗鱼鱼吧 By @yyfyyf123
douyu = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/yubaSign.js,cronexpr="3 0 * * *",script-update-interval=24,enable=true
 
# 携程旅行  (By @barrymchen)
#打开App 点击"我的",然后点击"我的积分",再点击下面的"签到.任务"即可
ctrip = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/ctrip.js,cronexpr="4 0 * * *",script-update-interval=24,enable=true
# 小程序(登录携程微信小程序，我的特权)
ct_sign = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/ct_sign.js,cronexpr="4 0 * * *",script-update-interval=24,enable=true

# 中国电信套餐 (By @uchvk & @Macsuny)
#下载安装 天翼账号中心 登录
 telecominfinty = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/telecomInfinity.js,cronexpr="4 0 * * *",script-update-interval=24,enable=true
 
# 腾讯新闻 (By 红鲤鱼与绿鲤鱼与驴 & @Macsuny)
#1.打开腾讯新闻app，阅读一篇文章，倒计时结束后即可获取Cookie
#2.现阶段每日共9个阶梯红包，具体阅读篇数视腾讯情况而变动
#3.脚本运行一次阅读一篇文章，请不要连续运行，防止封号，可设置每几分钟运行一次
#4.打开腾讯新闻app，阅读一篇文章，倒计时结束后即可获取Cookie,红包ID的Cookie，点击红包倒计时，或者点击活动页面的专属红包任务，有些账号可能无
txnews = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/txnews.js,cronexpr="4 0 * * *",script-update-interval=24,enable=true
 
# 楼兰小说论坛 (By @iNotification)
#网页登录 www.lltxt.com 点击 "我的信息 - 签到 - 开始签到"
loulan-novel = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/loulancheck.js,cronexpr="5 0 * * *",script-update-interval=24,enable=true
 
# 招行信用卡(公众号) (By @iNotification)
#招商银行信用卡微信公众号："领积分 - 签到领积分"
cmbchina = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/cmbchina.js,cronexpr="5 0 * * *",script-update-interval=24,enable=true
 
# 京东成长分 (By @barrymchen)
#打开京东金融app，"信用"-》"小白成长分"
jdczf = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/jdczf.js,cronexpr="5 0 * * *",script-update-interval=24,enable=true
 
# 工银e生活 (By @barrymchen)
# App首页"欢趣签到",手动签到1次
icbc_sign = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/icbc_sign.js,cronexpr="5 0 * * *",script-update-interval=24,enable=true
 
# 微信小程序-同程艺龙 (By @barrymchen)
tongc_sign = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/tongc_sign.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true
tongc_info = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/tongc_info.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true
  
# 京东到家 (By @barrymchen, @GideonSenku & @Macsuny)
#APP登陆账号后，点击主页'签到',即可
jddj = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/jddj.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true
 
# 微信小程序-来客有礼 (By @Macsuny)
# 微信搜索'来客有礼'小程序,登陆京东账号，点击'领京豆->翻牌'
lkyl = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/lkyl.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true
 
# 电视家 (By @Macsuny)
# APP登陆账号后，点击底部'赚赚'进入签到页面,即可获取Cookie.
dianshijia = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/dianshijia.js,cronexpr="0 7,20 * * *",script-update-interval=24,enable=true
 
# 电视节目预告 (By @Macsuny)
# var c = "cctv1"  // 可更改电视台，央视可以直接改后缀数字
# 常用卫视代码北京: btv1 | 湖南: hunan | 浙江: zhejiang|河南: henan| 江苏: jiangsu|广东: guangdong
tvpreview = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/tvpreview.js,cronexpr="1 10 * * *",script-update-interval=24,enable=true
 
# 12306余票及列车时刻表查询(By @Macsuny)
# 可更改出发地、目的地、出发时间及列车车次
trainquery = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/trainquery.js,cronexpr="0 * * * *",script-update-interval=24,enable=true

# 实时货币换算(By @Macsuny)
exchangeRate = type=cron,script-path=https://raw.githubusercontent.com/Sunert/Scripts/master/Task/exchangeRate.js,cronexpr="0 10 * * *",script-update-interval=24,enable=true
 
# 快手极速版 (By @Macsuny)
#APP登陆账号后，点击'钱包'
kuaishou = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/kuaishou.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true
 
# 喜马拉雅极速版-开宝箱 (By @Macsuny)
# APP登陆账号后，点击右下角’福利’选项,即可获取Cookie.
# 每隔一小时开启一次，每天最多5次，金币账户与标准版不同账户
ximalaya-lite = type=cron,script-path=https://raw.githubusercontent.com/demo2099/jscool/master/Task/xmspeed.js,cronexpr="0 0-5/1 * * *",script-update-interval=24,enable=true
 
# > 微博 & 微博钱包 (By @Macsuny)
#1.打开微博App获取Cookie.获取后请注释或禁用Cookie
#2.打开微博钱包点击签到，获取Cookie，
#3.钱包已经签到无法获取
weibo = type=cron,script-path=https://raw.githubusercontent.com/Sunert/Scripts/master/Task/weibo.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true
 
# > 新浪新闻 (By @Macsuny)
# 1.打开app,点击"我的"=>"签到"，获取第一个Cookie，通知获取信息成功
# 2.在未签到情况下，先禁用第一条Cookie链接，然后再次进入签到，通知获取签到Cookie成功
sinanews = type=cron,script-path=https://raw.githubusercontent.com/Sunert/Scripts/master/Task/sinanews.js,cronexpr="6 0 * * *",script-update-interval=24,enable=true
EmbyPremiere = type=http-response,script-path=https://cdn.jsdelivr.net/gh/aaliyahkqqmbt/3dmmpemby@main/EmbyPremiere.js,pattern=^https?:\/\/mb3admin.com\/admin\/service\/registration\/validateDevice,max-size=131072,requires-body=true,timeout=10,enable=true

[MITM]
hostname = mb3admin.com

