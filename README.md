[General]
bypass-system = true
dns-server = 119.29.29.29, 223.5.5.5, system
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local, *.crashlytics.com, *.edu.cn
bypass-tun = 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.88.99.0/24, 192.168.0.0/16, 198.18.0.0/15, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 255.255.255.255/32
ipv6 = false
update-url = https://raw.githubusercontent.com/mymoonyue/Shadowrocket/master/XiaodingdangPro.conf


[Rule]
#Netflix
RULE-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/release/rule/Shadowrocket/Netflix/Netflix.list,PROXY
#Disneyplus
RULE-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/release/rule/Shadowrocket/Disney/Disney.list,PROXY
#B站知乎去广告
URL-REGEX,^https?:\/\/api\.bilibili\.com\/pgc\/season\/app\/related\/recommend\?,REJECT
URL-REGEX,^https?:\/\/api\.bilibili\.com\/x\/v2\/dm\/ad,REJECT
URL-REGEX,^https?:\/\/api\.zhihu\.com\/brand\/question\/\d+/card\?,REJECT
URL-REGEX,^https?:\/\/manga\.bilibili\.com\/twirp\/comic\.v\d\.Comic\/Flash,REJECT
URL-REGEX,^https?:\/\/www\.zhihu\.com\/api\/v4\/answers\/\d+\/recommendations,REJECT
URL-REGEX,^https?:\/\/www\.zhihu\.com\/api\/v\d+\/brand\/question/\d+/card\?,REJECT
URL-REGEX,^https?:\/\/www\.zhihu\.com\/appview\/(p|v2\/answer|zvideo)\/.*entry=(preload-topstory|preload-search|preload-subscription),REJECT

# Reject
RULE-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Advertising/Advertising.list,REJECT
DOMAIN-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Advertising/Advertising_Domain.list,REJECT
RULE-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Hijacking/Hijacking.list,REJECT
RULE-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Privacy/Privacy.list,REJECT
DOMAIN-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Privacy/Privacy_Domain.list,REJECT

# Global 全球加速
RULE-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Proxy/Proxy.list,PROXY
DOMAIN-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/Proxy/Proxy_Domain.list,PROXY

# China 中国直连
RULE-SET, https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Shadowrocket/China/China.list,DIRECT

GEOIP,CN,DIRECT
FINAL,PROXY


[Host]
*testflight.apple.com = server:8.8.4.4
*.qq.com = server:119.28.28.28
*.tencent.com = server:119.28.28.28
*.weixin.com = server:119.28.28.28
*.bilibili.com = server:119.29.29.29
hdslb.com = server:119.29.29.29
*.163.com = server:119.29.29.29
*.126.com = server:119.29.29.29
*.126.net = server:119.29.29.29
*.127.net = server:119.29.29.29
*.netease.com = server:119.29.29.29
*.mi.com = server:119.29.29.29
*.xiaomi.com = server:119.29.29.29
*.pcbeta.com = 120.52.19.113
mtalk.google.com = 108.177.125.188
dl.google.com = server:119.29.29.29
dl.l.google.com = server:119.29.29.29


[URL Rewrite]
^https?:\/\/(www.)?(g|google)\.cn https://www.google.com 302

^https:\/\/(www|cn)\.pornhub\.com\/_xa\/ads.* - reject
^https:\/\/.*\.bebi\.com\/.* - reject
^https:\/\/api-ks\.wtzw\.com\/api\/v(1|2)\/(float-adv|init-adv|reader-adv) - reject
^https:\/\/fb\.fbstatic\.cn\/api\/ape-images\/.*.jpg? - reject
^https:\/\/img\.umetrip\.com\/fs\/advert/ - reject
^https:\/\/js\.dilidd\.com\/top\.php - reject
^https:\/\/mp\.weixin\.qq\.com\/mp\/ad.* - reject
^https:\/\/msg\.umengcloud\.com\/admsg\/ - reject
^https:\/\/weibointl\.api\.weibo\.cn\/portal\.php.*ads&c=ad.* - reject
^https:\/\/www\.dililitv\.com\/wp-author\/tga\/.*ad=.* - reject
^https?:\/\/(101\.201\.175\.228|182\.92\.251\.113)\/brand\/search\/v1\.json - reject-dict
^https?:\/\/(\d{1,3}\.){3}\d{1,3}/(variety|vlive\.qqvideo)\.tc\.qq\.com/ - reject
^https?:\/\/(a?d|sax)\d.sina.com - reject
^https?:\/\/(api-mifit|api-mifit-\w+)\.huami\.com\/discovery\/mi\/discovery\/\w+_ad\? - reject
^https?:\/\/(api|api-bk\d+)\.tv\.sohu\.com\/agg\/api\/app\/config\/bootstrap - reject
^https?:\/\/(api|atrace)\.chelaile\.net\.cn\/adpub\/ - reject
^https?:\/\/(api|b)\.zhuishushenqi\.com\/advert - reject
^https?:\/\/(api|promo)\.xueqiu\.com\/promotion\/(display_cache|display_ad|feed_display|search_ad) - reject
^https?:\/\/(bdsp-x|dsp-x)\.jd\.com\/adx\/ - reject-200
^https?:\/\/(iyes|(api|hd)\.mobile)\.youku\.com\/(adv|common\/v3\/hudong\/new) - reject-img
^https?:\/\/(s3plus|flowplus)\.meituan\.net\/v\d\/\w+\/linglong\/\w+\.(gif|jpg|mp4) - reject
^https?:\/\/.+?\.(snssdk|amemv)\.com\/api\/ad\/ - reject-img
^https?:\/\/.+?\.58cdn\.com\.cn\/brandads\/ - reject
^https?:\/\/.+?\.atm\.youku\.com - reject
^https?:\/\/.+?\.beacon\.qq\.com - reject
^https?:\/\/.+?\.iydsj\.com\/api\/.+?\/ad - reject
^https?:\/\/.+?\.l\.qq\.com - reject
^https?:\/\/.+?\.pstatp\.com\/img\/ad - reject
^https?:\/\/.+?\.snssdk\.com\/motor\/operation\/activity\/display\/config\/V2\/ - reject
^https?:\/\/.+?\/variety.tc.qq.com\/ - reject-img
^https?:\/\/101\.201\.175\.228\/ads\/display - reject
^https?:\/\/118\.178\.214\.118\/yyting\/advertclient\/ClientAdvertList\.action - reject-img
^https?:\/\/119\.18\.193\.135\/(adgateway|adv)\/ - reject
^https?:\/\/122\.14\.246\.33\/MobileAdServer\/ - reject
^https?:\/\/123\.59\.30\.10\/adv\/advInfos - reject-img
^https?:\/\/123\.59\.31\.1\/(adgateway|adv)\/ - reject
^https?:\/\/182\.92\.244\.70\/d\/json\/ - reject-img
^https?:\/\/192\.133.+?\.mp4$ - reject-img
^https?:\/\/203\.205\.255\.16\/retrieval\/getAd - reject-200
^https?:\/\/211\.98\.71\.(195|196|226):8080\/ - reject-img
^https?:\/\/3gimg\.qq\.com\/tencentMapTouch\/app\/activity\/ - reject
^https?:\/\/3gimg\.qq\.com\/tencentMapTouch\/splash\/ - reject
^https?:\/\/47\.97\.20\.12\/ad\/ - reject
^https?:\/\/4gimg\.map\.qq\.com\/mwaSplash\/ - reject
^https?:\/\/789\.kakamobi\.cn\/.+?adver - reject-img
^https?:\/\/7n\.bczcdn\.com\/launchad\/ - reject
^https?:\/\/[\s\S]*\.baidu\.com/.*?ad[xs]\.php - reject-img
^https?:\/\/[\s\S]*\.snssdk\.com\/api\/ad\/ - reject-img
^https?:\/\/[\w-]+\.snssdk\.com\/.+_ad\/ - reject
^https?:\/\/[^bbs].tianya\.cn - reject
^https?:\/\/\w+?\.ximalaya\.com\/api\/v\d\/adRealTime - reject
^https?:\/\/\w+\.beacon\.qq\.com - reject
^https?:\/\/\w+\.cloudfront\.net\/banner - reject
^https?:\/\/\w+\.gdt\.qq\.com - reject
^https?:\/\/\w+\.jstucdn\.com\/(g3\/|js\/ad) - reject
^https?:\/\/\w+\.kakamobi\.cn\/api\/open\/v\d\/advert-sdk\/ - reject
^https?:\/\/\w+\.kingsoft-office-service\.com\/ad - reject
^https?:\/\/\w+\.l\.qq\.com - reject
^https?:\/\/\w.?up\.qingdaonews\.com - reject
^https?:\/\/\w{6}.com1.z0.glb.clouddn.com - reject
^https?:\/\/\w{6}\.com1\.z0\.glb\.clouddn\.com - reject-img
^https?:\/\/\w{8}\.logic\.cpm\.cm\.kankan\.com - reject
^https?:\/\/a\.apicloud\.com\/start_page\/ - reject
^https?:\/\/a\.applovin\.com\/.+?\/ad - reject-img
^https?:\/\/a\.applovin\.com\/3\.0\/ad - reject
^https?:\/\/a\.qiumibao\.com\/activities\/config\.php - reject
^https?:\/\/aarkissltrial\.secure2\.footprint\.net\/v1\/ads - reject-img
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alibaba\.advertisementservice\.getadv - reject
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.alimusic\.common\.mobileservice\.startinit\/ - reject
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.film\.mtopadvertiseapi\.queryadvertise\/ - reject
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.o2o\.ad\.gateway\.get\/ - reject
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.taobao\.idle\.home\.welcome\/ - reject-200
^https?:\/\/acs\.m\.taobao\.com\/gw\/mtop\.trip\.activity\.querytmsresources\/ - reject
^https?:\/\/act\.vip\.iqiyi\.com\/interact\/api\/show\.do - reject
^https?:\/\/act\.vip\.iqiyi\.com\/interact\/api\/v2\/show - reject
^https?:\/\/activity2\.api\.ofo\.com\/ofo\/Api\/v2\/ads - reject
^https?:\/\/ad\.api\.3g\.youku\.com - reject-img
^https?:\/\/ad\.api\.moji\.com\/ad\/log\/stat - reject-img
^https?:\/\/ad\d\.sina\.com - reject
^https?:\/\/ad\d\.sina\.com.cn - reject
^https?:\/\/adm\.10jqka\.com\.cn\/img\/ad\/.*?(1\d{2}|\d{4})\.jpg - reject-img
^https?:\/\/adm\.10jqka\.com\.cn\/interface\/getads\.php - reject-img
^https?:\/\/adpai\.thepaper\.cn\/.+?&ad= - reject
^https?:\/\/adproxy\.autohome\.com\.cn\/AdvertiseService\/ - reject-img
^https?:\/\/adse.+?\.com\/[a-z]{4}\/loading\?appid= - reject-img
^https?:\/\/adse\.ximalaya\.com\/ting\/feed\?appid= - reject-img
^https?:\/\/adse\.ximalaya\.com\/ting\/loading\?appid= - reject-img
^https?:\/\/adse\.ximalaya\.com\/ting\?appid= - reject-img
^https?:\/\/aes\.acfun\.cn\/s\?adzones - reject
^https?:\/\/afd\.baidu\.com\/afd\/entry - reject-img
^https?:\/\/agent-count\.pconline\.com\.cn\/counter\/adAnalyse\/ - reject
^https?:\/\/agn\.aty\.sohu\.com\/m? - reject-img
^https?:\/\/alogs\.umeng\.co - reject-img
^https?:\/\/als\.baidu\.com\/clog\/clog - reject-img
^https?:\/\/api-163\.biliapi\.net\/cover - reject-img
^https?:\/\/api-mifit\.huami\.com\/(discovery\/mi\/discovery\/(homepage|sleep|sport(_(summary|training))?|step_detail|training_video)_ad|v1\/app\/startpages\.json)\? - reject
^https?:\/\/api-new\.app\.acfun\.cn\/rest\/app\/flash\/screen\/ - reject
^https?:\/\/api-release\.wuta-cam\.com\/ad_tree - reject
^https?:\/\/api2\.helper\.qq\.com\/game\/buttons - reject-img
^https?:\/\/api\.(pinduoduo|yangkeduo)\.com\/api\/cappuccino\/splash - reject
^https?:\/\/api\.21jingji\.com\/ad\/ - reject
^https?:\/\/api\.app\.vhall\.com\/v5\/000\/webinar\/launch - reject-img
^https?:\/\/api\.applovefrom\.com\/api\/v\d\/splash\/ - reject
^https?:\/\/api\.appsdk\.soku\.com\/bg\/r - reject-img
^https?:\/\/api\.bilibili\.com\/pgc\/season\/app\/related\/recommend\? - reject
^https?:\/\/api\.bjxkhc\.com\/index\.php\/app\/ios\/ads\/ - reject
^https?:\/\/api\.caijingmobile\.com\/(ad|advert)\/ - reject-200
^https?:\/\/api\.catch\.gift\/api\/v\d\/pagead\/ - reject
^https?:\/\/api\.cdmcaac\.com\/ad\/ - reject
^https?:\/\/api\.chelaile\.net\.cn\/adpub\/ - reject
^https?:\/\/api\.chelaile\.net\.cn\/goocity\/advert\/ - reject
^https?:\/\/api\.club\.lenovo\.cn\/common\/open_ad - reject
^https?:\/\/api\.daydaycook\.com\.cn\/daydaycook\/server\/ad\/ - reject
^https?:\/\/api\.douban\.com\/v2\/app_ads\/common_ads - reject-img
^https?:\/\/api\.douban\.com\/v2\/app_ads\/splash - reject-200
^https?:\/\/api\.eshimin\.com\/api\/core\/version - reject-dict
^https?:\/\/api\.feng\.com[\s\S]*?Claunch_screen - reject
^https?:\/\/api\.feng\.com\/v\d\/advertisement\/.*Claunch - reject-200
^https?:\/\/api\.fengshows\.com\/api\/launchAD - reject-img
^https?:\/\/api\.futunn\.com\/v\d\/ad\/ - reject
^https?:\/\/api\.gaoqingdianshi\.com\/api\/v2\/ad - reject
^https?:\/\/api\.gotokeep\.com\/ads - reject
^https?:\/\/api\.hanju\.koudaibaobao\.com\/api\/carp\/kp\? - reject
^https?:\/\/api\.haohaozhu\.cn\/index\.php\/home\/AppInit\/getStartPhoto - reject
^https?:\/\/api\.huomao\.com\/channels\/loginAd - reject
^https?:\/\/api\.intsig\.net\/user\/cs\/operating\/app\/get_startpic\/ - reject
^https?:\/\/api\.ishansong\.com\/app\/check\/v\d+\/check - reject
^https?:\/\/api\.izuiyou\.com\/ad\/ - reject
^https?:\/\/api\.jr\.mi\.com\/jr\/api\/playScreen - reject
^https?:\/\/api\.jr\.mi\.com\/v\d\/adv\/ - reject
^https?:\/\/api\.jxedt\.com\/ad\/ - reject
^https?:\/\/api\.jxedt\.com\/jump\/EMiCcDNp - reject-img
^https?:\/\/api\.k\.sohu\.com\/api\/channel\/ad\/ - reject-img
^https?:\/\/api\.k\.sohu\.com\/api\/news\/adsense - reject
^https?:\/\/api\.kkmh\.com\/v\d+\/(ad|advertisement)\/ - reject-200
^https?:\/\/api\.laifeng\.com\/v\d\/start\/ads - reject
^https?:\/\/api\.laosiji\.com\/user\/startpage\/ - reject-img
^https?:\/\/api\.m\.jd\.com\/openUpgrade - reject-dict
^https?:\/\/api\.m\.mi\.com\/v\d\/app\/start - reject
^https?:\/\/api\.mddcloud\.com\.cn\/api\/ad\/getClassAd\.action - reject-img
^https?:\/\/api\.mddcloud\.com\.cn\/api\/advert\/getHomepage\.action - reject-img
^https?:\/\/api\.meipian\.me.+?advert - reject
^https?:\/\/api\.mgzf\.com\/renter-operation\/home\/startHomePage - reject
^https?:\/\/api\.mobile\.youku\.com\/layout\/search\/hot\/word - reject-img
^https?:\/\/api\.newad\.ifeng\.com\/ClientAdversApi1508\?adids= - reject-img
^https?:\/\/api\.psy-1\.com\/cosleep\/startup - reject
^https?:\/\/api\.qbb6\.com\/ad\/ - reject
^https?:\/\/api\.qiuduoduo\.cn\/guideimage - reject
^https?:\/\/api\.rr\.tv\/.*?(getAll|Version) - reject
^https?:\/\/api\.rr\.tv\/ad\/ - reject
^https?:\/\/api\.share\.mob\.com\/snsconf - reject-dict
^https?:\/\/api\.smzdm\.com\/v2\/util\/banner - reject-img
^https?:\/\/api\.tv\.sohu\.com\/agg\/api\/app\/config\/bootstrap - reject
^https?:\/\/api\.vc\.bilibili\.com\/dynamic_svr\/v1\/dynamic_svr\/mix_uplist - reject
^https?:\/\/api\.vc\.bilibili\.com\/search_svr\/v\d\/Search\/recommend_words - reject
^https?:\/\/api\.vc\.bilibili\.com\/topic_svr\/v1\/topic_svr - reject
^https?:\/\/api\.videozhishi\.com\/api\/getAdvertising - reject
^https?:\/\/api\.vistopia\.com\.cn\/api\/v\d\/home\/advertisement - reject
^https?:\/\/api\.vuevideo\.net\/api\/v\d\/ad\/ - reject
^https?:\/\/api\.waitwaitpay\.com\/\/api\/splash - reject
^https?:\/\/api\.wallstreetcn\.com\/apiv\d\/advertising\/ - reject
^https?:\/\/api\.weibo\.cn\/2\/statuses\/extend\?gsid= - reject
^https?:\/\/api\.xiachufang\.com\/v\d\/ad/ - reject
^https?:\/\/api\.xueqiu\.com\/ads\/display - reject
^https?:\/\/api\.xueqiu\.com\/brand\/search\/v1\.json - reject
^https?:\/\/api\.yangkeduo\.com\/api\/cappuccino\/splash - reject
^https?:\/\/api\.ycapp\.yiche\.com\/appnews\/getadlist - reject-img
^https?:\/\/api\.ycapp\.yiche\.com\/yicheapp\/getadlist - reject-img
^https?:\/\/api\.ycapp\.yiche\.com\/yicheapp\/getappads\/ - reject-img
^https?:\/\/api\.yizhibo\.com\/common\/api\/api_pz$ - reject
^https?:\/\/api\.zhihu\.com/moments/hybrid\? - reject-dict
^https?:\/\/api\.zhihu\.com\/(notifications\/v3\/count|v3\/package|me\/guides|drama\/living-info|ad|fringe|commercial|market\/popovers|.*featured-comment-ad) - reject-dict
^https?:\/\/api\.zhihu\.com\/ab\/api\/v1\/products\/zhihu\/platforms\/ios\/config - reject-200
^https?:\/\/api\.zhihu\.com\/brand\/question\/\d+/card\? - reject-dict
^https?:\/\/api\.zhihu\.com\/moments\/recent - reject-dict
^https?:\/\/api\.zhuishushenqi\.com\/notification\/shelfMessage - reject
^https?:\/\/api\.zhuishushenqi\.com\/recommend - reject-img
^https?:\/\/api\.zhuishushenqi\.com\/splashes\/ios - reject
^https?:\/\/api\.zhuishushenqi\.com\/user\/bookshelf-updated - reject
^https?:\/\/api\d?\.musical\.ly\/api\/ad\/ - reject-img
^https?:\/\/api\d?\.tiktokv\.com\/api\/ad\/ - reject-img
^https?:\/\/api\d\.futunn\.com\/ad\/ - reject
^https?:\/\/apimobile\.meituan\.com\/appupdate\/mach\/checkUpdate? - reject
^https?:\/\/app-api\.jinse\.com\/v\d\/ad\/ - reject
^https?:\/\/app-api\.niu\.com\/v\d\/advertisement\/ - reject
^https?:\/\/app2\.autoimg\.cn\/appdfs\/ - reject-img
^https?:\/\/app3\.qdaily\.com\/app3\/boot_advertisements\.json - reject
^https?:\/\/app\.10086\.cn\/biz-orange\/DN\/(findSale|homeSale)\/getsaleAdver - reject
^https?:\/\/app\.58\.com\/api\/home\/(advertising|appadv)\/ - reject
^https?:\/\/app\.58\.com\/api\/home\/invite\/popupAdv - reject
^https?:\/\/app\.58\.com\/api\/log\/ - reject
^https?:\/\/app\.api\.ke\.com\/config\/config\/bootpage - reject
^https?:\/\/app\.ddpai\.com\/d\/api\/v\d\/config\/get\/bootscreen - reject
^https?:\/\/app\.mixcapp\.com\/mixc\/api\/v\d\/ad - reject
^https?:\/\/app\.poizon\.com\/api\/v\d\/app\/advertisement\/ - reject
^https?:\/\/app\.relxtech\.com\/dianziyan-api\/api\/screen\/advert\/random - reject
^https?:\/\/app\.variflight\.com\/ad\/ - reject
^https?:\/\/app\.variflight\.com\/v\d\/advert\/ - reject
^https?:\/\/app\.veryzhun\.com\/ad\/admob - reject-img
^https?:\/\/app\.wy\.guahao\.com\/json\/white\/dayquestion\/getpopad - reject
^https?:\/\/app\.xinpianchang\.com\/open_screen\? - reject
^https?:\/\/app\.yinxiang\.com\/ads\/ - reject
^https?:\/\/app\.yinxiang\.com\/ads\/getAdsInfo - reject-img
^https?:\/\/app\.zhuanzhuan\.com\/zzx\/transfer\/getConfigInfo$ - reject
^https?:\/\/appapi\.huazhu\.com:\d{4}\/client\/app\/getAppStartPage\/ - reject
^https?:\/\/appconf\.mail\.163\.com\/mmad\/ - reject
^https?:\/\/apprn\.pizzahut\.com\.cn\/updateCheck\? - reject-dict
^https?:\/\/appv6\.55haitao\.com\/IflyAd\/getAd - reject
^https?:\/\/asp\.cntv\.myalicdn\.com\/.+?\?maxbr=850 - reject
^https?:\/\/ast\.api\.moji\.com\/assist\/ad\/moji\/stat - reject-img
^https?:\/\/atrace\.chelaile\.net\.cn\/adpub\/ - reject-img
^https?:\/\/atrace\.chelaile\.net\.cn\/exhibit\?&adv_image - reject-img
^https?:\/\/aweme\.snssdk\.com\/aweme\/v1\/aweme\/stats\/ - reject-img
^https?:\/\/aweme\.snssdk\.com\/aweme\/v1\/device\/update\/ - reject-img
^https?:\/\/aweme\.snssdk\.com\/aweme\/v1\/screen\/ad\/ - reject-img
^https?:\/\/aweme\.snssdk\.com\/service\/1\/app_logout\/ - reject-img
^https?:\/\/aweme\.snssdk\.com\/service\/2\/app_log - reject-img
^https?:\/\/b-api\.ins\.miaopai\.com\/\d\/ad/ - reject
^https?:\/\/baichuan\.baidu\.com\/rs\/adpmobile\/launch - reject-img
^https?:\/\/bank\.wo\.cn\/v9\/getstartpage - reject-img
^https?:\/\/bbs\.airav\.cc\/data\/.+?\.jpg - reject-img
^https?:\/\/bdsp-x\.jd\.com\/adx\/ - reject
^https?:\/\/bj\.bcebos\.com\/fc-feed\/0\/pic\/ - reject-img
^https?:\/\/bla\.gtimg\.com\/qqlive\/\d{6}.+?\.png - reject-img
^https?:\/\/book\.img\.ireader\.com\/group6\/M00 - reject-img
^https?:\/\/btrace\.qq\.com - reject-200
^https?:\/\/business-cdn\.shouji\.sogou\.com\/wapdl\/hole\/.+?\.jpg - reject
^https?:\/\/business\.msstatic\.com\/advertiser\/ - reject
^https?:\/\/c1\.ifengimg\.com\/.+?_w1080_h1410\.jpg - reject-img
^https?:\/\/c\.m\.163\.com\/nc\/gl\/ - reject
^https?:\/\/c\.minisplat\.cn - reject-img
^https?:\/\/c\.tieba\.baidu\.com\/\w+\/\w+\/(sync|newRnSync|newlog|mlog) - reject
^https?:\/\/c\.tieba\.baidu\.com\/c\/f\/forum\/getAdInfo - reject
^https?:\/\/c\.tieba\.baidu\.com\/c\/p\/img\?src= - reject-img
^https?:\/\/c\.tieba\.baidu\.com\/c\/s\/logtogether\?cmd= - reject-img
^https?:\/\/c\.tieba\.baidu\.com\/c\/s\/splashSchedule - reject
^https?:\/\/cache\.changjingyi\.cn - reject-img
^https?:\/\/cache\.gclick\.cn - reject-img
^https?:\/\/cap\.caocaokeji\.cn\/advert-bss\/ - reject
^https?:\/\/capi.mwee.cn/app-api/V\d+/app/(ad|getstartad) - reject
^https?:\/\/capi\.douyucdn\.cn\/api\/ios_app\/check_update - reject-img
^https?:\/\/capi\.douyucdn\.cn\/api\/v1\/getStartSend?client_sys=ios - reject-img
^https?:\/\/capi\.douyucdn\.cn\/lapi\/sign\/app(api)?\/getinfo\?client_sys=ios - reject-img
^https?:\/\/capis(-?\w*)?\.didapinche\.com\/ad\/boot\? - reject
^https?:\/\/capis(-?\w*)?\.didapinche\.com\/ad\/event? - reject-dict
^https?:\/\/capis(-?\w*)?\.didapinche\.com\/ad\/ride\/detail\? - reject-dict
^https?:\/\/capis(-?\w*)?\.didapinche\.com\/publish\/api\/upgrade - reject-dict
^https?:\/\/ccsp-egmas\.sf-express\.com\/cx-app-base\/base\/app\/ad\/ - reject
^https?:\/\/ccsp-egmas\.sf-express\.com\/cx-app-base\/base\/app\/ad\/queryAdImages - reject
^https?:\/\/ccsp-egmas\.sf-express\.com\/cx-app-base\/base\/app\/appVersion\/detectionUpgrade - reject-dict
^https?:\/\/cdn-1rtb\.caiyunapp\.com/creative/.*$ - reject
^https?:\/\/cdn2\.moji002\.com\/webpush\/ad2\/ - reject-img
^https?:\/\/cdn\.api\.fotoable\.com\/Advertise\/ - reject
^https?:\/\/cdn\.dianshihome\.com\/static\/ad\/ - reject
^https?:\/\/cdn\.kuaidi100\.com\/images\/open\/appads - reject-img
^https?:\/\/cdn\.moji\.com\/(adoss|adlink)\/ - reject
^https?:\/\/cdn\.moji\.com\/adlink\/avatarcard - reject-img
^https?:\/\/cdn\.moji\.com\/adlink\/common - reject-img
^https?:\/\/cdn\.moji\.com\/adlink\/splash\/ - reject-img
^https?:\/\/cdn\.moji\.com\/advert\/ - reject-img
^https?:\/\/cdn\.tiku\.zhan\.com\/banner - reject-img
^https?:\/\/cdnfile1\.msstatic\.com\/cdnfile\/appad\/ - reject-img
^https?:\/\/cdnfile1\.msstatic\.com\/cdnfile\/appad\/resource - reject
^https?:\/\/channel\.beitaichufang\.com\/channel\/api\/v1\/promote\/ios\/start\/page - reject
^https?:\/\/cheyouapi\.ycapp\.yiche\.com\/appforum\/getusermessagecount - reject-img
^https?:\/\/classbox2\.kechenggezi\.com\/api\/v1\/sponge\/pull\?request_time= - reject-img
^https?:\/\/client\.mail\.163\.com\/apptrack\/confinfo\/searchMultiAds - reject
^https?:\/\/client\.qunar\.com\/pitcher-proxy\?qrt=p_splashAd - reject-img
^https?:\/\/clientaccess\.10086\.cn\/biz-orange\/DN\/init\/startInit - reject
^https?:\/\/cloud\.189\.cn\/include\/splash\/ - reject
^https?:\/\/cms\.daydaycook\.com\.cn\/api\/cms\/advertisement\/ - reject
^https?:\/\/cmsapi\.wifi8\.com\/v\d\/(emptyAd|adNew)\/ - reject
^https?:\/\/cmsfile\.wifi8\.com\/uploads\/png\/ - reject-img
^https?:\/\/cntv\.hls\.cdn\.myqcloud\.com\/.+?\?maxbr=850 - reject
^https?:\/\/connect\.facebook\.net\/en_US\/fbadnw\.js - reject-img
^https?:\/\/consumer\.fcbox\.com\/v1\/ad\/OpeningAdInfo\/ - reject-img
^https?:\/\/consumer\.fcbox\.com\/v\d\/ad\/ - reject
^https?:\/\/counter\.ksosoft\.com\/ad\.php - reject
^https?:\/\/cover.baidu.com\/cover\/page\/dspSwitchAds\/ - reject
^https?:\/\/creatives\.ftimg\.net\/ads - reject-img
^https?:\/\/creditcard\.ecitic\.com\/citiccard\/wtk\/piwik\/piwik\.php - reject
^https?:\/\/creditcardapp\.bankcomm\.com\/mapp\/common\/getPopAds\.do$ - reject
^https?:\/\/creditcardapp\.bankcomm\.com\/mapp\/common\/queryGuidePageAds\.do - reject
^https?:\/\/ct\.xiaojukeji\.com\/agent\/v3\/feeds - reject
^https?:\/\/ctrl\.zmzapi\.net\/app\/ads - reject-img
^https?:\/\/ctrl\.zmzapi\.net\/app\/init - reject-img
^https?:\/\/cube\.elemecdn\.com\/.*?\.mp4\? - reject-img
^https?:\/\/cube\.elemecdn\.com\/[\w\/]+\.jpeg\?x-oss-process=image\/resize,m_fill,w_\d{3},h_\d{4}\/format,webp\/ - reject
^https?:\/\/cube\.elemecdn\.com\/\w\/\w{2}\/\w+mp4\.mp4\? - reject
^https?:\/\/d\.1qianbao\.com\/youqian\/ads\/ - reject-img
^https?:\/\/d\.zhangle\.com\/pic\/cft\/interaction\/\d{13}-1242-2248\.jpg - reject
^https?:\/\/d\d.sinaimg.cn - reject
^https?:\/\/daoyu\.sdo\.com\/api\/userCommon\/getAppStartAd - reject
^https?:\/\/dapis\.mting\.info\/yyting\/advertclient\/ClientAdvertList\.action - reject-img
^https?:\/\/dd\.iask\.cn\/ddd\/adAudit - reject-img
^https?:\/\/ddrk\.me\/image\/logo_footer\.png$ - reject-img
^https?:\/\/ddrk\.me\/wp-content\/plugins\/advanced-floating-content-lite\/public\/images\/close\.png - reject-img
^https?:\/\/dict-mobile\.iciba\.com\/interface\/index\.php\?.+?(c=ad|collectFeedsAdShowCount|KSFeedsAdCardViewController) - reject
^https?:\/\/dili\.bdatu\.com\/jiekou\/ad\/ - reject
^https?:\/\/dimg04\.c-ctrip\.com\/images\/\w+(_\d{4}){2} - reject-img
^https?:\/\/discuz\.gtimg\.cn\/cloud\/scripts\/discuz_tips\.js - reject-img
^https?:\/\/dl.app.gtja.com/.+\d+.jpg$ - reject
^https?:\/\/dl\.app.gtja\.com\/.+?\d+\.jpg$ - reject-img
^https?:\/\/dl\.app\.gtja\.com\/dzswem\/kvController\/.+?\.jpg$ - reject
^https?:\/\/dl\.app\.gtja\.com\/operation\/config\/startupConfig\.json - reject-img
^https?:\/\/douyucdn\.cn\/.+?\/appapi\/getinfo - reject-img
^https?:\/\/dsa-mfp\.fengshows\.cn\/mfp\/mfpMultipleDelivery\.do\?.+?adunitid - reject
^https?:\/\/dsp-impr2\.youdao\.com\/adload - reject
^https?:\/\/dsp\.toutiao\.com\/api\/xunfei\/ads\/ - reject
^https?:\/\/dssp\.stnts\.com - reject-img
^https?:\/\/du\.hupucdn\.com\/\w+h\d{4} - reject-img
^https?:\/\/dxy\.com\/app\/i\/ask\/biz\/feed\/launch - reject
^https?:\/\/e\.dangdang\.com\/.+?getDeviceStartPage - reject
^https?:\/\/e\.dangdang\.com\/media\/api.+?\?action=getDeviceStartPage - reject
^https?:\/\/easyreadfs\.nosdn\.127\.net\/ad-material\/ - reject
^https?:\/\/edit\.sinaapp\.com\/ua\?t=adv - reject
^https?:\/\/elemecdn\.com\/.+?\/sitemap - reject-img
^https?:\/\/emdcadvertise\.eastmoney\.com\/infoService - reject-img
^https?:\/\/erebor\.douban\.com\/count\/\?ad= - reject
^https?:\/\/exp\.3g\.ifeng\.com\/coverAdversApi\?gv=\. - reject-img
^https?:\/\/fcvbjbcebos\.baidu\.com\/.+?\.mp4 - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group21\/M03\/E7\/3F\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group21\/M0A\/95\/3B\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group22\/M00\/92\/FF\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group22\/M05\/66\/67\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group22\/M07\/76\/54\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group23\/M01\/63\/F1\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group23\/M04\/E5\/F6\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group23\/M07\/81\/F6\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group23\/M0A\/75\/AA\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group24\/M03\/E6\/09\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group24\/M07\/C4\/3D\/ - reject-img
^https?:\/\/fdfs\.xmcdn\.com\/group25\/M05\/92\/D1\/ - reject-img
^https?:\/\/fds\.api\.moji\.com\/card\/recommend - reject-img
^https?:\/\/fengplus\.feng\.com\/index\.php\?r=api\/slide\/.+?Ads - reject-img
^https?:\/\/fm\.fenqile\.com\/routev2\/other\/getfloatAd\.json - reject-img
^https?:\/\/fm\.fenqile\.com\/routev2\/other\/startImg\.json - reject-img
^https?:\/\/fmapp\.chinafamilymart\.com\.cn\/api\/app\/biz\/base\/appversion\/latest - reject
^https?:\/\/foodie-api\.yiruikecorp\.com\/v\d\/(banner|notice)\/overview - reject
^https?:\/\/free\.sinaimg\.cn\/u1\.img\.mobile\.sina\.cn - reject
^https?:\/\/frontier\.snssdk\.com\/ - reject-img
^https?:\/\/fuss10\.elemecdn\.com\/.+?\.mp4 - reject-img
^https?:\/\/fuss10\.elemecdn\.com\/.+?\/w\/640\/h\/\d{3,4} - reject-img
^https?:\/\/g1\.163\.com\/madfeedback - reject-img
^https?:\/\/g\.cdn\.pengpengla\.com\/starfantuan\/boot-screen-info\/ - reject
^https?:\/\/g\.tbcdn\.cn\/mtb\/ - reject-img
^https?:\/\/games\.mobileapi\.hupu\.com\/.+?\/(interfaceAdMonitor|interfaceAd)\/ - reject-200
^https?:\/\/games\.mobileapi\.hupu\.com\/.+?\/(search|interfaceAdMonitor|status|hupuBbsPm)/(hotkey|init|hupuBbsPm)\. - reject-img
^https?:\/\/games\.mobileapi\.hupu\.com\/.+?\/interfaceAdMonitor\/ - reject
^https?:\/\/games\.mobileapi\.hupu\.com\/.+?\/status\/init - reject
^https?:\/\/games\.mobileapi\.hupu\.com\/\d\/(?:\d\.){2}\d\/status\/init - reject
^https?:\/\/games\.mobileapi\.hupu\.com\/interfaceAdMonitor - reject-img
^https?:\/\/gateway\.shouqiev\.com(:8443)?\/fsda\/app\/bootImage\.json - reject
^https?:\/\/gateway\.shouqiev\.com\/fsda\/app\/bootImage\.json - reject
^https?:\/\/gfp\.veta\.naver\.com\/adcall\? - reject
^https?:\/\/gg\w+?\.cmvideo\.cn\/v\d\/iflyad\/ - reject
^https?:\/\/ggic\d?\.cmvideo\.cn\/ad\/ - reject
^https?:\/\/ggv\.cmvideo\.cn\/v1\/iflyad\/ - reject-img
^https?:\/\/ggx\.cmvideo\.cn\/request\/ - reject
^https?:\/\/gss0\.bdstatic\.com\/.+?\/static\/wiseindex\/img\/bd_red_packet\.png - reject-img
^https?:\/\/gw-passenger\.01zhuanche\.com\/gw-passenger\/car-rest\/webservice\/passenger\/recommendADs - reject
^https?:\/\/gw-passenger\.01zhuanche\.com\/gw-passenger\/zhuanche-passenger-token\/leachtoken\/webservice\/homepage\/queryADs - reject
^https?:\/\/gw-passenger\.01zhuanche\.com\/gw-passenger\/zhuanche-passengerController\/notk\/passenger\/recommendADs - reject
^https?:\/\/gw\.aihuishou\.com\/app-portal\/home\/getadvertisement - reject
^https?:\/\/gw\.csdn\.net\/cms-app\/v\d+\/home_page\/open_advertisement - reject
^https?:\/\/h\w{2}\.hxsame\.hexun\.com - reject
^https?:\/\/haojia\.m\.smzdm\.com\/detail_modul\/banner - reject
^https?:\/\/haojia\.m\.smzdm\.com\/detail_modul\/other_modul - reject
^https?:\/\/haojia\.m\.smzdm\.com\/detail_modul\/user_related_modul - reject
^https?:\/\/haojia\.m\.smzdm\.com\/detail_modul\/wiki_related_modul - reject
^https?:\/\/heic\.alicdn\.com\/tps\/i4\/.+?\.jpg_1200x1200q90\.jpg_\.heic$ - reject
^https?:\/\/hk\.app\.joox\.com\/billsrv\/clientBatchAdReport - reject
^https?:\/\/hk\.app\.joox\.com\/retrieval\/getAd - reject
^https?:\/\/hui\.sohu\.com\/predownload2\/? - reject-img
^https?:\/\/huichuan\.sm\.cn\/jsad - reject
^https?:\/\/i1\.hoopchina\.com\.cn\/blogfile\/.+?_\d{3}x\d{4} - reject-img
^https?:\/\/i\.ys7\.com\/api\/ads - reject
^https?:\/\/i\d\.hoopchina\.com\.cn/blogfile\\/\/d+\\/\/d+\/BbsImg\.(?<=(big.(png|jpg)))$ - reject-img
^https?:\/\/iad.*?mat\.music\.12[67]\.net/\w+\.(jpg|mp4) - reject-img
^https?:\/\/iad.*mat\.[a-z]*\.12[67]\.net/\w+\.(jpg|mp4)$ - reject
^https?:\/\/iadmusicmat\.music.126.net\/.*?jpg$ - reject
^https?:\/\/iapi\.bishijie\.com\/actopen\/advertising\/ - reject
^https?:\/\/ib-soft\.net\/icleaner\/txt\/ad_priority\.txt$ - reject
^https?:\/\/icc\.one\/iFreeTime\/xid32uxaoecnfv2\/ - reject
^https?:\/\/iface2\.iqiyi\.com\/fusion\/3\.0\/fusion_switch - reject-img
^https?:\/\/iface\.iqiyi\.com\/api\/getNewAdInfo - reject
^https?:\/\/ifengad\.3g\.ifeng\.com\/ad\/pv\.php\?stat= - reject-img
^https?:\/\/iflow\.uczzd\.cn\/log\/ - reject
^https?:\/\/ih2\.ireader\.com\/zyapi\/bookstore\/ad\/ - reject
^https?:\/\/ih2\.ireader\.com\/zyapi\/self\/screen\/ad - reject
^https?:\/\/ih2\.ireader\.com\/zycl\/api\/ad\/ - reject
^https?:\/\/iis1\.deliver\.ifeng\.com\/getmcode\?adid= - reject-img
^https?:\/\/image1\.chinatelecom-ec\.com\/images\/.*?\/client\w+\.jpg - reject-img
^https?:\/\/image1\.chinatelecom-ec\.com\/images\/.+?\/\d{13}\.jpg - reject-img
^https?:\/\/image\.airav\.cc\/AirADPic\/.+?\.gif - reject-img
^https?:\/\/image\.suning\.cn\/uimg\/ma\/ad\/ - reject
^https?:\/\/images\.91160\.com\/primary\/ - reject-img
^https?:\/\/images\.client\.vip\.xunlei\.com\/.+?\/advert\/ - reject
^https?:\/\/images\.kartor\.cn\/.+?\.html - reject-img
^https?:\/\/imeclient\.openspeech\.cn\/adservice\/ - reject
^https?:\/\/img-ys011\.didistatic\.com\/static\/ad_oss\/image-\d{4}-\d{4}\/ - reject
^https?:\/\/img01\.10101111cdn\.com\/adpos\/ - reject
^https?:\/\/img01\.10101111cdn\.com\/adpos\/share\/ - reject-img
^https?:\/\/img1\.126\.net\/.+?dpi=\w{7,8} - reject-img
^https?:\/\/img1\.126\.net\/channel14\/ - reject-img
^https?:\/\/img\.53site\.com\/Werewolf\/AD\/ - reject-img
^https?:\/\/img\.ddrk\.me\/ad190824 - reject-img
^https?:\/\/img\.ddrk\.me\/cover\.png - reject-img
^https?:\/\/img\.ihytv\.com\/material\/adv\/img\/ - reject-img
^https?:\/\/img\.jiemian\.com\/ads\/ - reject
^https?:\/\/img\.meituan\.net\/(adunion|display|dpmobile|midas)\/\w+\.(gif|jpg|jpg\.webp)$ - reject
^https?:\/\/img\.meituan\.net\/(adunion|display|midas)\/.+?\.(gif|jpg|jpg\.webp)$ - reject
^https?:\/\/img\.meituan\.net\/(display|midas)\/.+?\.(gif|jpg) - reject
^https?:\/\/img\.meituan\.net\/midas\/ - reject
^https?:\/\/img\.rr\.tv\/banner\/.+?\.jpg - reject-img
^https?:\/\/img\.yun\.01zhuanche\.com\/statics\/app\/advertisement\/.+?-750-1334 - reject-img
^https?:\/\/img\.zuoyebang\.cc\/zyb-image[\s\S]*?\.jpg - reject-img
^https?:\/\/img\d+\.10101111cdn\.com\/adpos\/ - reject
^https?:\/\/img\d+\.360buyimg\.com\/jddjadvertise\/ - reject
^https?:\/\/img\d\.doubanio\.com\/view\/dale-online\/dale_ad\/ - reject
^https?:\/\/img\d{2}\.ddimg\.cn\/upload_img\/.+?\/670x900 - reject-img
^https?:\/\/img\d{2}\.ddimg\.cn\/upload_img\/.+?\/750x1064 - reject-img
^https?:\/\/img\w\.g\.pptv\.com - reject
^https?:\/\/imgcache\.qq\.com\/qqlive\/ - reject-img
^https?:\/\/impservice.+?youdao.com - reject
^https?:\/\/impservice\.dictapp\.youdao\.com\/imp\/request - reject-img
^https?:\/\/interface(\d)?\.music\.163\.com/eapi/(ad|abtest|sp|hot|store|search/(specialkeyword|defaultkeyword|hot)) - reject
^https?:\/\/intl\.iqiyi\.com\/ad_external\/ - reject
^https?:\/\/intl\.iqiyi\.com\/video\/advertise - reject
^https?:\/\/ios\.lantouzi\.com\/api\/startpage - reject
^https?:\/\/ios\.wps\.cn\/ad-statistics-service - reject
^https?:\/\/iphone265g\.com\/templates\/iphone\/bottomAd\.js - reject-img
^https?:\/\/issuecdn\.baidupcs\.com\/issue\/netdisk\/(guanggao|ts_ad)\/ - reject
^https?:\/\/ivy\.pchouse\.com\.cn\/adpuba\/ - reject-img
^https?:\/\/jxd524\.github\.io\/iFreeTime\/xid32uxaoecnfv2\/ - reject
^https?:\/\/kano\.guahao\.cn\/.+?\?resize=\d{3}-\d{4} - reject-img
^https?:\/\/learn\.chaoxing\.com\/apis\/service\/appConfig\? - reject
^https?:\/\/list-app-m\.i4\.cn\/getopfstadinfo\.xhtml - reject
^https?:\/\/lives\.l\.qq\.com\/livemsg\?sdtfrom= - reject-img
^https?:\/\/log.+?baidu\.com - reject
^https?:\/\/log\..+?\.baidu\.com - reject-img
^https?:\/\/m.+?\.china\.com\.cn\/statics\/sdmobile\/js\/ad - reject-img
^https?:\/\/m.+?\.china\.com\.cn\/statics\/sdmobile\/js\/mobile\.advert\.js - reject-img
^https?:\/\/m1\.ad\.10010\.com\/noticeMag\/images\/imageUpload\/2\d{3} - reject-img
^https?:\/\/m5\.amap\.com\/ws\/valueadded\/ - reject
^https?:\/\/m\.360buyimg\.com\/mobilecms\/s640x1136_jfs\/ - reject-img
^https?:\/\/m\.airav\.cc\/images\/Mobile_popout_cn\.gif - reject-img
^https?:\/\/m\.aty\.sohu\.com\/openload? - reject-img
^https?:\/\/m\.caijing\.com\.cn\/startup_ad_ios\.html$ - reject
^https?:\/\/m\.client\.10010\.com\/mobileService\/(activity|customer)\/(accountListData|get_client_adv|get_startadv) - reject
^https?:\/\/m\.client\.10010\.com\/mobileService\/customer\/getclientconfig\.htm - reject-dict
^https?:\/\/m\.client\.10010\.com\/uniAdmsInterface\/(getHomePageAd|getWelcomeAd) - reject
^https?:\/\/m\.coolaiy\.com\/b\.php - reject-img
^https?:\/\/m\.creditcard\.ecitic\.com\/.*?\/appStartAdv - reject-img
^https?:\/\/m\.creditcard\.ecitic\.com\/citiccard\/mbk\/.+?\/appStartAdv - reject-200
^https?:\/\/m\.creditcard\.ecitic\.com\/citiccard\/mbk\/appspace-client\/cr\/sys\/popAdv - reject-img
^https?:\/\/m\.creditcard\.ecitic\.com\/citiccard\/mbk\/appspace-getway\/getWay\/appspace-system-web\/cr\/v5\/appStartAdv - reject
^https?:\/\/m\.ctrip\.com\/restapi\/soa2\/\d+\/json\/getAdsList - reject
^https?:\/\/m\.elecfans\.com\/static\/js\/ad\.js - reject-img
^https?:\/\/m\.ibuscloud.com\/v2\/app\/getStartPage - reject
^https?:\/\/m\.tuniu\.com\/api\/operation\/splash\/ - reject
^https?:\/\/m\.yhdm\.io\/bar\/yfgg.js - reject
^https?:\/\/m\.yhdm\.io\/bar\/yfyh.js - reject
^https?:\/\/m\.youku\.com\/video\/libs\/iwt\.js - reject-img
^https?:\/\/m\d\.amap\.com\/ws\/valueadded\/alimama\/splash_screen\/ - reject
^https?:\/\/ma\.ofo\.com\/adImage\/ - reject
^https?:\/\/ma\.ofo\.com\/ads - reject
^https?:\/\/mage\.if\.qidian\.com\/Atom\.axd\/Api\/Client\/GetConfIOS - reject-img
^https?:\/\/mage\.if\.qidian\.com\/argus\/api\/v\d\/client\/getsplashscreen - reject
^https?:\/\/maicai\.api\.ddxq\.mobi\/advert\/ - reject
^https?:\/\/manga\.bilibili\.com\/twirp\/comic\.v\d\.Comic\/Flash - reject
^https?:\/\/mangaapi\.manhuaren\.com\/v\d\/public\/getStartPageAds - reject
^https?:\/\/mapi\.dangdang\.com\/index\.php\?action=init - reject
^https?:\/\/mapi\.mafengwo\.cn\/ad\/ - reject
^https?:\/\/mapi\.mafengwo\.cn\/travelguide\/ad\/ - reject
^https?:\/\/mbl\.56\.com\/config\/v1\/common\/config\.union\.ios\.do? - reject-img
^https?:\/\/mcupdate\.gstarcad\.com\/api\/v2\/ - reject
^https?:\/\/media\.qyer\.com\/ad\/ - reject
^https?:\/\/mi\.gdt\.qq\.com\/gdt_mview\.fcg - reject-img
^https?:\/\/mime\.baidu\.com\/v\d\/IosStart\/getStartInfo$ - reject
^https?:\/\/mime\.baidu\.com\/v\d\/activity\/advertisement - reject
^https?:\/\/mimg\.127\.net\/external\/smartpop-manger\.min\.js - reject-img
^https?:\/\/mlife\.jf365\.boc\.cn\/AppPrj\/FirstPic\.do\? - reject
^https?:\/\/mm\.app\.joox\.com\/billsrv\/clientBatchAdReport - reject
^https?:\/\/mm\.app\.joox\.com\/retrieval\/getAd - reject
^https?:\/\/mmg\.aty\.sohu\.com\/mqs? - reject-img
^https?:\/\/mmg\.aty\.sohu\.com\/pvlog? - reject-img
^https?:\/\/mmgr\.gtimg\.com\/gjsmall\/qiantu\/upload\/ - reject-img
^https?:\/\/mmgr\.gtimg\.com\/gjsmall\/qqpim\/public\/ios\/splash\/.+?\/\d{4}_\d{4} - reject-img
^https?:\/\/mob\.mddcloud\.com\.cn\/api\/(ad|advert)\/ - reject-200
^https?:\/\/mobi\.360doc\.com\/v\d{2}\/Ajax\/festival\.ashx\?op=getfestivaltheme - reject
^https?:\/\/mobile-api2011.elong.com\/(adgateway|adv)\/ - reject
^https?:\/\/mobile-pic\.cache\.iciba\.com\/feeds_ad\/ - reject
^https?:\/\/mp\.weixin\.qq.com\/mp\/ad_complaint - reject
^https?:\/\/mp\.weixin\.qq.com\/mp\/ad_video - reject
^https?:\/\/mp\.weixin\.qq.com\/mp\/advertisement_report - reject
^https?:\/\/mp\.weixin\.qq\.com\/(s|mp)\/(ad_|advertisement|getappmsgad|report|appmsgreport|appmsgpicreport) - reject-img
^https?:\/\/mpcs\.suning\.com\/mpcs\/dm\/getDmInfo - reject
^https?:\/\/mps\.95508\.com\/mps\/club\/cardPortals\/adv\/\d{25}\.(png|jpg) - reject
^https?:\/\/mrobot\.pcauto\.com\.cn\/v\d\/ad2p - reject
^https?:\/\/mrobot\.pcauto\.com\.cn\/xsp\/s\/auto\/info\/preload\.xsp - reject
^https?:\/\/mrobot\.pconline\.com\.cn\/s\/onlineinfo\/ad\/ - reject
^https?:\/\/mrobot\.pconline\.com\.cn\/v\d\/ad2p - reject
^https?:\/\/ms\.jr\.jd\.com\/gw\/generic\/aladdin\/(new)?na\/m\/getLoadingPicture - reject
^https?:\/\/ms\.jr\.jd\.com\/gw\/generic\/base\/(new)?na\/m\/adInfo - reject
^https?:\/\/msspjh\.emarbox\.com\/getAdConfig - reject
^https?:\/\/mtteve\.beacon\.qq\.com\/analytics - reject-img
^https?:\/\/newapp\.szsmk\.com\/app\/config\/.*?Ad - reject-img
^https?:\/\/news\.ssp\.qq\.com\/app - reject
^https?:\/\/nex\.163\.com\/q - reject-img
^https?:\/\/nnapp\.cloudbae\.cn(:\d+)?\/mc\/api\/advert - reject
^https?:\/\/nnapp\.cloudbae\.cn\/mc\/api\/advert/ - reject
^https?:\/\/nochange\.ggsafe\.com\/ad\/ - reject
^https?:\/\/notch\.qdaily\.com\/api\/v\d\/boot_ad - reject
^https?:\/\/notice\.send-anywhere\.com\/banner - reject
^https?:\/\/oimage([a-z])([0-9])\.ydstatic\.com\/.+?adpublish - reject
^https?:\/\/oimage\w\d\.ydstatic\.com\/image\?.+?=adpublish - reject-img
^https?:\/\/open\.qyer\.com\/qyer\/config\/get - reject
^https?:\/\/open\.qyer\.com\/qyer\/startpage\/ - reject
^https?:\/\/optimus-ads\.amap\.com\/uploadimg\/ - reject-img
^https?:\/\/oral\.youdao\.com\/oral\/adInfo - reject-img
^https?:\/\/oset-api\.open-adx\.com\/ad\/ - reject-img
^https?:\/\/overseas\.weico\.cc\/portal\.php\?a=get_coopen_ads - reject
^https?:\/\/p[^4](c)?\.music\.126\.net\/\w+==\/10995\d{13}\.jpg$ - reject-img
^https?:\/\/p\.c\.music\.126.net\/.*?jpg$ - reject
^https?:\/\/p\.du\.163\.com\/ad\/ - reject
^https?:\/\/p\.kuaidi100\.com\/mobile\/(mainapi|mobileapi)\.do - reject
^https?:\/\/p\d.meituan.net\/movie\/.*?\?may_covertWebp - reject-img
^https?:\/\/p\d\.meituan\.net\/(bizad|wmbanner)\/\w+\.jpg - reject
^https?:\/\/p\d\.meituan\.net\/(mmc|wmbanner)\/ - reject-img
^https?:\/\/p\d\.meituan\.net\/movie\/\w+\.jpg\?may_covertWebp - reject
^https?:\/\/p\d\.meituan\.net\/wmbanner\/[A-Za-z0-9]+\.jpg - reject
^https?:\/\/p\d\.music\.126\.net\/\w+==\/\d+\.jpg$ - reject
^https?:\/\/pagead2\.googlesyndication\.com\/pagead\/ - reject-img
^https?:\/\/pan-api\.bitqiu\.com\/activity\/(getPromoteGuide|getUrlList) - reject-img
^https?:\/\/pan\.baidu\.com\/act\/api\/activityentry - reject
^https?:\/\/pan\.baidu\.com\/rest\/2\.0\/pcs\/adx - reject
^https?:\/\/paopao\w?.qiyipic.com - reject
^https?:\/\/pb\d\.pstatp\.com\/origin - reject-img
^https?:\/\/pcvideoyd\.titan\.mgtv\.com\/pb\/ - reject-img
^https?:\/\/photocdn\.sohu\.com\/tvmobilemvms - reject-img
^https?:\/\/pic1\.chelaile\.net\.cn\/adv\/ - reject
^https?:\/\/pic1cdn\.cmbchina\.com\/appinitads\/ - reject
^https?:\/\/pic\.edaijia\.cn\/adsplash\/ - reject
^https?:\/\/pic\.k\.sohu\.com\/img\d\/wb\/tj\/ - reject
^https?:\/\/pic\.xiami\.net\/images\/common\/uploadpic[\s\S]*?\.jpg$ - reject
^https?:\/\/pic\d\.ajkimg\.com\/mat\/\w+\?imageMogr\d\/format\/jpg\/thumbnail\/\d{3}x\d{4}$ - reject
^https?:\/\/player\.hoge\.cn\/advertisement\.swf - reject-img
^https?:\/\/pocketuni\.net\/\?app=api&mod=Message&act=ad - reject
^https?:\/\/portal-xunyou\.qingcdn\.com\/api\/v\d\/ios\/ads\/ - reject
^https?:\/\/portal-xunyou\.qingcdn\.com\/api\/v\d\/ios\/configs\/(splash_ad|ad_urls) - reject
^https?:\/\/premiumyva\.appspot\.com\/vmclickstoadvertisersite - reject
^https?:\/\/prom\.mobile\.gome\.com\.cn\/mobile\/promotion\/promscms\/sale\w+\.jsp - reject-img
^https?:\/\/pss\.txffp\.com\/piaogen\/images\/launchScreen/ - reject
^https?:\/\/ptmpcap\.caocaokeji\.cn\/advert-bss\/ - reject-img
^https?:\/\/qidian\.qpic\.cn\/qidian_common - reject-img
^https?:\/\/qt\.qq\.com\/lua\/mengyou\/get_splash_screen_info - reject
^https?:\/\/qzonestyle\.gtimg\.cn\/qzone\/biz\/gdt\/mob\/sdk\/ios\/v2\/ - reject-img
^https?:\/\/r1\.ykimg\.com\/\w{30,35}\.jpg - reject-img
^https?:\/\/r1\.ykimg\.com\/material\/.+?\/\d{3,4}-\d{4} - reject-img
^https?:\/\/r1\.ykimg\.com\/material\/.+?\/\d{6}\/\d{4}\/ - reject-img
^https?:\/\/r\.inews\.qq\.com\/(adsBlacklist|getBannerAds|getFullScreenPic|getNewsRemoteConfig|getQQNewsRemoteConfig|searchHotCatList|upLoadLoc) - reject
^https?:\/\/r\.inews\.qq\.com\/getSplash\?apptype=ios&startarticleid=&__qnr= - reject-img
^https?:\/\/r\.inews\.qq\.com\/searchHotCatList - reject-img
^https?:\/\/r\.inews\.qq\.com\/upLoadLoc - reject-img
^https?:\/\/r\.l\.youku\.com\/rec_at_click - reject-img
^https?:\/\/render\.alipay\.com\/p\/s\/h5data\/prod\/spring-festival-2019-h5data\/popup-h5data\.json - reject
^https?:\/\/res-release\.wuta-cam\.com\/json\/ads_component_cache\.json - reject
^https?:\/\/res\.kfc\.com\.cn\/advertisement\/ - reject-img
^https?:\/\/res\.mall\.10010\.cn\/mall\/common\/js\/fa\.js?referer= - reject-img
^https?:\/\/res\.xiaojukeji\.com\/resapi\/activity\/get(Ruled|Preload|PasMultiNotices) - reject
^https?:\/\/res\.xiaojukeji\.com\/resapi\/activity\/mget - reject
^https?:\/\/ress\.dxpmedia\.com\/appicast\/ - reject-img
^https?:\/\/restapi\.iyunmai\.com\/api\/ios\/ad\/ - reject
^https?:\/\/rich\.kuwo\.cn\/AdService\/kaiping\/adinfo - reject-img
^https?:\/\/richmanapi\.jxedt\.com\/api\/(ad|adplus|guideplus|banadplus) - reject
^https?:\/\/richmanapi\.jxedt\.com\/api\/ad\/guideplus - reject-img
^https?:\/\/richmanapi\.jxedt\.com\/api\/banadplus - reject-img
^https?:\/\/richmanmain\.jxedt\.com\/advertisement\/fallback - reject-img
^https?:\/\/rm\.aarki\.net\/v1\/ads - reject-img
^https?:\/\/rtbapi.douyucdn.cn\/japi\/sign\/app\/getinfo - reject
^https?:\/\/s0\.2mdn\.net\/ads\/ - reject-img
^https?:\/\/s1\.api\.tv\.itc\.cn\/v\d\/mobile\/control\/switch\.json - reject
^https?:\/\/s3\.pstatp\.com\/inapp\/TTAdblock\.css - reject-img
^https?:\/\/s3plus\.meituan\.net\/v1\/mss_a002 - reject-img
^https?:\/\/s\.go\.sohu\.com\/adgtr\/\?gbcode= - reject-img
^https?:\/\/s\.go\.sohu\.com\/adgtr\/\?gbcode=(ps|sv|offnavi|newvector|ulog\.imap|newloc)(\.map)?\.(baidu|n\.shifen)\.com - reject
^https?:\/\/s\d\.zdmimg\.com\/www\/api\/v\d\/api\/thirdAd\.php - reject
^https?:\/\/sa\d\.tuisong\.baidu\.com - reject
^https?:\/\/saad\.ms\.zhangyue\.net\/ad - reject
^https?:\/\/sapi\.guopan\.cn\/get_buildin_ad - reject-img
^https?:\/\/sax\w?\.sina\.cn - reject
^https?:\/\/sax\w?\.sina\.com\.cn - reject
^https?:\/\/sdk\.99shiji\.com\/ad\/ - reject-img
^https?:\/\/sdkapp\.uve\.weibo\.com\/interface\/sdk\/(actionad|sdkad)\.php - reject
^https?:\/\/sdkapp\.uve\.weibo\.com\/interface\/sdk\/sdkad\.php - reject
^https?:\/\/server-\w+.imrworldwide.com - reject
^https?:\/\/service\.4gtv\.tv\/4gtv\/Data\/(GetAD|ADLog) - reject
^https?:\/\/service\.iciba\.com\/popo\/open\/screens\/v\d\?adjson - reject
^https?:\/\/sf.*?-ttcdn-tos\.pstatp\.com\/obj\/ad - reject-img
^https?:\/\/sf\w-ttcdn-tos\.pstatp\.com\/obj\/web\.business\.image - reject-img
^https?:\/\/shimo\.im\/api\/ads\?(.+?) - reject
^https?:\/\/show\.api\.moji\.com\/json\/showcase\/getAll - reject-img
^https?:\/\/shp\.qpic\.cn\/pggamehead\/.*?h=\d{4} - reject-img
^https?:\/\/simg\.s\.weibo\.com\/.+?_ios\d{2}\.gif - reject-img
^https?:\/\/slapi.oray.net/client/ad - reject
^https?:\/\/slapi\.oray\.net\/adver - reject
^https?:\/\/slapi\.oray\.net\/client\/ad - reject
^https?:\/\/sm\.domobcdn\.com\/ugc\/\w\/ - reject-img
^https?:\/\/smart\.789\.image\.mucang\.cn\/advert - reject-img
^https?:\/\/smkmp\.96225\.com\/smkcenter\/ad/ - reject
^https?:\/\/smusic\.app\.wechat\.com\/commonCgi\/advertisement\/get_orint_egg$ - reject
^https?:\/\/snailsleep\.net\/snail\/v1\/adTask\/ - reject
^https?:\/\/snailsleep\.net\/snail\/v\d\/screen\/qn\/get\? - reject
^https?:\/\/sp\.kaola\.com\/api\/openad - reject-200
^https?:\/\/splashqqlive\.gtimg\.com\/website\/\d{6} - reject-img
^https?:\/\/ss0\.bdstatic\.com/.+?_\d{3}_\d{4}\.jpg - reject
^https?:\/\/ssl\.kohsocialapp\.qq\.com:\d+\/game\/buttons - reject
^https?:\/\/sso\.ifanr\.com\/jiong\/IOS\/appso\/splash\/ - reject-img
^https?:\/\/sso\.lxjapp\.com\/\/chims\/servlet\/csGetLatestSoftwareVersionServlet - reject-dict
^https?:\/\/stat\.moji\.com - reject-img
^https?:\/\/statc\.mytuner\.mobi\/media\/banners\/ - reject-img
^https?:\/\/static\.api\.m\.panda\.tv\/index\.php\?method=clientconf\.firstscreen&__version=(play_cnmb|(\d+\.){0,3}\d+)&__plat=ios&__channel=appstore - reject-img
^https?:\/\/static\.cnbetacdn\.com\/assets\/adv - reject-img
^https?:\/\/static\.iask\.cn\/m-v20161228\/js\/common\/adAudit\.min\.js - reject-img
^https?:\/\/static\.vuevideo\.net\/styleAssets\/.+?\/splash_ad - reject
^https?:\/\/static\.vuevideo\.net\/styleAssets\/advertisement\/ - reject
^https?:\/\/staticlive\.douyucdn\.cn\/.+?\/getStartSend - reject-img
^https?:\/\/staticlive\.douyucdn\.cn\/upload\/signs\/ - reject-img
^https?:\/\/stats\.tubemogul\.com\/stats\/ - reject-img
^https?:\/\/status\.boohee\.com\/api\/v\d\/app_square\/start_up_with_ad - reject
^https?:\/\/storage\.360buyimg\.com\/kepler-app - reject-img
^https?:\/\/storage\.wax\.weibo\.com\/\w+\.(png|jpg|mp4) - reject-img
^https?:\/\/support\.you\.163\.com\/xhr\/boot\/getBootMedia\.json - reject
^https?:\/\/supportda\.ofo\.com\/adaction\? - reject
^https?:\/\/szextshort\.weixin\.qq\.com\/cgi-bin\/mmoc-bin\/ad\/ - reject-img
^https?:\/\/t\d{2}\.baidu\.com - reject-img
^https?:\/\/tb1\.bdstatic\.com\/tb\/cms\/ngmis\/adsense\/*\.jpg - reject-img
^https?:\/\/tb2\.bdstatic\.com\/tb\/mobile\/spb\/widget\/jump - reject-img
^https?:\/\/thor\.weidian\.com\/ares\/home\.splash\/ - reject
^https?:\/\/tiasdk\.app\.wechat\.com\/retrieval\/getAdInfo$ - reject
^https?:\/\/tiku\.zhan\.com\/Common\/newAd\/ - reject
^https?:\/\/tj\.playcvn\.com\/app\/ads\? - reject
^https?:\/\/tqt\.weibo\.cn\/.+?advert\.index - reject
^https?:\/\/tqt\.weibo\.cn\/api\/advert\/ - reject
^https?:\/\/tqt\.weibo\.cn\/overall\/redirect\.php\?r=(tqt_sdkad|tqtad) - reject
^https?:\/\/tracker-download\.oss-cn-beijing\.aliyuncs\.com\/SIMPlus\/ad_ - reject
^https?:\/\/u1\.img\.mobile\.sina\.cn\/public\/files\/image\/\d{3}x\d{2,4}.+?(png|jpg|mp4) - reject-img
^https?:\/\/u\d\.iqiyipic\.com\/image\/[\w\/]+\/oad_ - reject
^https?:\/\/ugc\.moji001\.com\/sns\/json\/profile\/get_unread - reject-img
^https?:\/\/ulogs\.umeng\.com - reject-img
^https?:\/\/ulogs\.umengcloud\.com - reject-img
^https?:\/\/update\.pan\.baidu\.com\/statistics - reject
^https?:\/\/ups\.youku\.com\/.*?needad=1& - reject
^https?:\/\/v\.17173\.com\/api\/Allyes\/ - reject-img
^https?:\/\/v\.cctv\.com\/.+?850 - reject
^https?:\/\/v\.icbc\.com\.cn\/userfiles\/Resources\/WAP\/advertisement\/ - reject
^https?:\/\/video\.dispatch\.tc\.qq\.com\/\w+\.p20\d\.1\.mp4 - reject
^https?:\/\/vv\.video\.qq\.com\/getvmind\? - reject
^https?:\/\/wap\.js\.10086\.cn\/jsmccClient\/cd\/market_content\/api\/v\d\/market_content\.page\.query - reject
^https?:\/\/wap\.ngchina\.cn\/news\/adverts\/ - reject
^https?:\/\/wapwenku\.baidu\.com\/view\/fengchaoTwojump\/ - reject-img
^https?:\/\/wapwenku\.baidu\.com\/view\/fengchao\/ - reject-img
^https?:\/\/wbapp\.uve\.weibo\.com\/wbapplua\/wbpullad\.lua - reject
^https?:\/\/web\.chelaile\.net\.cn\/api\/adpub\/ - reject
^https?:\/\/webboot\.zhangyue\.com\/zycl\/api\/ad\/ - reject
^https?:\/\/weibointl\.api\.weibo\.cn\/portal\.php\?a=get_coopen_ads - reject
^https?:\/\/weicoapi\.weico\.cc\/img\/ad\/ - reject-img
^https?:\/\/wenku\.baidu\.com\/shifen\/ - reject-img
^https?:\/\/werewolf\.53site\.com\/Werewolf\/.+?\/getAdvertise\.php - reject-img
^https?:\/\/werewolf\.53site\.com\/Werewolf\/.+?\/getShareVideodb\.php - reject-img
^https?:\/\/wmedia-track\.uc\.cn - reject-img
^https?:\/\/www.baidu.com\/?action=static&ms=1&version=css_page_2@0.*? - reject
^https?:\/\/www.icourse163.org\/.*?(Advertisement) - reject-img
^https?:\/\/www1\.elecfans\.com\/www\/delivery\/ - reject-img
^https?:\/\/www\.babyye\.com\/b\.php - reject-img
^https?:\/\/www\.bldimg\.com/(background|splash)/.+?\.png$ - reject
^https?:\/\/www\.bodivis\.com\.cn\/app\/splashAdvertise - reject
^https?:\/\/www\.cmbc\.com\.cn\/m\/image\/loadingpage\/ - reject
^https?:\/\/www\.cntv\.cn\/nettv\/adp\/ - reject
^https?:\/\/www\.dandanzan\.com\/res\/gdsefse\.js - reject
^https?:\/\/www\.didapinche\.com\/app\/adstat\/ - reject
^https?:\/\/www\.duokan\.com/pictures? - reject-img
^https?:\/\/www\.duokan\.com/promotion_day - reject-img
^https?:\/\/www\.flyertea\.com\/source\/plugin\/mobile\/mobile\.php\?module=advis - reject
^https?:\/\/www\.ft\.com\/__origami\/service\/image\/v2\/images\/raw\/https%3A%2F%2Fcreatives\.ftimg\.net%2Fads* - reject-img
^https?:\/\/www\.gwv7\.com\/b\.php - reject-img
^https?:\/\/www\.hxeduonline\.com\/mobileapi2\/index\.php\?act=index&op=interdict - reject
^https?:\/\/www\.icourse163\.org\/mob\/j\/v1\/mobRecommendRPCBean\.getMaxWeightAdvertisement\.rpc - reject
^https?:\/\/www\.inoreader\.com\/adv\/ - reject
^https?:\/\/www\.iyingdi\.cn\/ad - reject
^https?:\/\/www\.lianbijr\.com\/adPage\/ - reject-img
^https?:\/\/www\.likeji\.net\/b\.php - reject-img
^https?:\/\/www\.meituan\.com\/api\/v\d\/appstatus\? - reject
^https?:\/\/www\.myhug\.cn\/ad\/ - reject
^https?:\/\/www\.nfmovies\.com\/pic\/tu\/ - reject-img
^https?:\/\/www\.nfmovies\.com\/templets\/default\/images\/logos - reject-img
^https?:\/\/www\.nfmovies\.com\/uploads\/images\/play\.jpg - reject-img
^https?:\/\/www\.oschina\.net\/action\/apiv2\/get_launcher - reject-img
^https?:\/\/www\.shihuo\.cn\/app\d\/saveAppInfo - reject
^https?:\/\/www\.tsytv\.com\.cn\/api\/app\/ios\/ads - reject-img
^https?:\/\/www\.xiaohongshu\.com\/api\/sns\/v\d\/system_service\/splash_config - reject
^https?:\/\/www\.zhihu\.com\/api\/v4/(questions|anwsers)\/\d+/related-readings - reject-dict
^https?:\/\/www\.zhihu\.com\/api\/v4\/answers\/\d+\/recommendations - reject-dict
^https?:\/\/www\.zhihu\.com\/api\/v4\/hot_recommendation - reject-dict
^https?:\/\/www\.zhihu\.com\/api\/v\d+\/brand\/question/\d+/card\? - reject-dict
^https?:\/\/www\.zhihu\.com\/appview\/(p|v2\/answer|zvideo)\/.*entry=(preload-topstory|preload-search|preload-subscription) - reject
^https?:\/\/www\.zhihu\.com\/commercial_api\/banners_v3\/mobile_banner - reject-dict
^https?:\/\/www\.zybang\.com\/adx\/ - reject
^https?:\/\/xyst\.yuanfudao\.com\/iphone\/splashesV\d - reject
^https?:\/\/xyz\.cnki\.net\/resourcev7\/api\/manualpush\/SlidsList$ - reject
^https?:\/\/y\.gtimg\.cn\/music\/.*?_Ad/\d+\.png - reject-img
^https?:\/\/y\.gtimg\.cn\/music\/common\/upload\/t_splash_info\/ - reject
^https?:\/\/y\.gtimg\.cn\/music\/common\/upload\/targeted_ads - reject-img
^https?:\/\/yxyapi\d\.drcuiyutao\.com\/yxy-api-gateway\/api\/json\/advert\/ - reject
^https?:\/\/zhuanlan\.zhihu\.com\/api\/articles\/\d+\/recommendation - reject-dict
^https?:\/\/zt-app\.go189\.cn\/zt-app\/welcome\/.*?Animation - reject-img
^https?:\/\/(ditu|maps).google\.cn https://maps.google.com 302
^https?:\/\/(www.)?(g|google)\.cn https://www.google.com 302
^https?:\/\/(www.)?(mycleanmymac|xitongqingli)\.com\/ https://macpaw.com/ 302
^https?:\/\/(www.)?abbyychina\.com\/ https://www.abbyy.cn/ 302
^https?:\/\/(www.)?bartender\.cc\/ https://www.macbartender.com/ 302
^https?:\/\/(www.)?beyondcompare\.cc\/ https://www.scootersoftware.com/ 302
^https?:\/\/(www.)?bingdianhuanyuan\.cn\/ https://www.faronics.com/zh-hans/products/deep-freeze 302
^https?:\/\/(www.)?chemdraw\.com\.cn\/ https://www.perkinelmer.com.cn/ 302
^https?:\/\/(www.)?codesoftchina\.com\/ https://www.teklynx.com/ 302
^https?:\/\/(www.)?coreldrawchina\.com\/ https://www.coreldraw.com/cn/ 302
^https?:\/\/(www.)?crossoverchina\.com\/ https://www.codeweavers.com/ 302
^https?:\/\/(www.)?dongmansoft\.com\/ https://www.udongman.cn/ 302
^https?:\/\/(www.)?earmasterchina\.cn\/ https://www.earmaster.com/ 302
^https?:\/\/(www.)?easyrecoverychina\.com\/ https://www.ontrack.com/ 302
^https?:\/\/(www.)?ediuschina\.com\/ https://www.grassvalley.com/ 302
^https?:\/\/(www.)?flstudiochina\.com\/ https://www.image-line.com/ 302
^https?:\/\/(www.)?formysql\.com\/ https://www.navicat.com.cn/ 302
^https?:\/\/(www.)?guitarpro\.cc\/ https://www.guitar-pro.com/ 302
^https?:\/\/(www.)?huishenghuiying\.com\.cn\/ https://www.coreldraw.com/cn/ 302
^https?:\/\/(www.)?iconworkshop\.cn\/ https://www.axialis.com/ 302
^https?:\/\/(www.)?idmchina\.net\/ https://www.internetdownloadmanager.com/ 302
^https?:\/\/(www.)?ign\.xn--fiqs8s\/ http://cn.ign.com/ccpref/us 302
^https?:\/\/(www.)?imindmap\.cc\/ https://www.ayoa.com/previously-imindmap/ 302
^https?:\/\/(www.)?jihehuaban\.com\.cn\/ https://www.chartwellyorke.com/sketchpad/x24795.html 302
^https?:\/\/(www.)?kingdeecn\.cn\/ http://www.kingdee.com/ 302
^https?:\/\/(www.)?logoshejishi\.com https://www.sothink.com/product/logo-design-software/ 302
^https?:\/\/(www.)?luping\.net\.cn\/ https://www.techsmith.com/ 302
^https?:\/\/(www.)?mathtype\.cn\/ https://www.dessci.com/ 302
^https?:\/\/(www.)?mi\.com\/ https://www.mi.com/ 302
^https?:\/\/(www.)?mindmanager\.(cc|cn)\/ https://www.mindjet.com/cn/ 302
^https?:\/\/(www.)?mindmapper\.cc\/ https://www.mindmapper.com/ 302
^https?:\/\/(www.)?nicelabel\.cc\/ https://www.nicelabel.com/zh/ 302
^https?:\/\/(www.)?ntfsformac\.cc\/ https://china.paragon-software.com/home-mac/ntfs-for-mac/ 302
^https?:\/\/(www.)?overturechina\.com\/ https://sonicscores.com/ 302
^https?:\/\/(www.)?passwordrecovery\.cn\/ https://cn.elcomsoft.com/aopr.html 302
^https?:\/\/(www.)?pdfexpert\.cc\/ https://pdfexpert.com/zh 302
^https?:\/\/(www.)?photozoomchina\.com\/ https://www.benvista.com/ 302
^https?:\/\/(www.)?shankejingling\.com\/ https://www.sothink.com/product/flashdecompiler/ 302
^https?:\/\/(www.)?suning\.com\/ https://suning.com/ 302
^https?:\/\/(www.)?taobao\.com\/ https://taobao.com/ 302
^https?:\/\/(www.)?vegaschina\.cn\/ https://www.vegascreativesoftware.com/ 302
^https?:\/\/(www.)?xshellcn\.com\/ https://www.netsarang.com/zh/xshell/ 302
^https?:\/\/(www.)?yhd\.com\/ https://yhd.com/ 302
^https?:\/\/(www.)?yuanchengxiezuo\.com\/ https://www.teamviewer.com/ 302
^https?:\/\/(www.)?zbrushcn.com/ https://pixologic.com/ 302
^https?:\/\/cn\.ultraiso\.net\/ https://cn.ezbsystems.com/ultraiso/ 302
^https?:\/\/hypersnap\.mairuan\.com\/ https://www.keyshot.com/ 302
^https?:\/\/logoshejishi\.mairuan\.com\/ https://www.sothink.com/product/logo-design-software/ 302
^https?:\/\/you\.163\.com\/ https://you.163.com/ 302

#TikTok解锁
(?<=_region=)CN(?=&) JP 307
(^h.+v5\/)(.+) $1 302
(?<=&mcc_mnc=)4 2 307
(?<=eme\/v)2(?=\/f\w{2}d\/\?.*) 1 302

#Q-Search

# - Safari 内输入 命令 + 空格 + 关键词 快速指定搜索引擎搜索
#注：先进入设置更改 Safari 默认搜索为 DuckDuckGO
#可自行修改指令或者添加搜索引擎

# ＞搜索
# gm   (Google图片)
^https:\/\/duckduckgo.com\/\?q=gm\+([^&]+).+ https://www.google.com/search?&tbm=isch&q=$1 302
# gh   (GitHub)
^https:\/\/duckduckgo.com\/\?q=gh\+([^&]+).+ https://github.com/search?q=$1 302
# sof  (Stack Overflow)
^https:\/\/duckduckgo.com\/\?q=sof\+([^&]+).+ https://stackoverflow.com/search?q=$1 302
# se  (StackExchange)
^https:\/\/duckduckgo.com\/\?q=se\+([^&]+).+ https://stackexchange.com/search?q=$1 302
# wa  (WolframAlpha)
^https:\/\/duckduckgo.com\/\?q=wa\+([^&]+).+ https://www.wolframalpha.com/input/?i=$1 302
# wiki  (维基百科)
^https:\/\/duckduckgo.com\/\?q=wiki(\+|%20)([^&]+).+ http://wikipedia.org/wiki/$2 302
# wk  (维基中文)
^https:\/\/duckduckgo.com\/\?q=wk(\+|%20)([^&]+).+ https://zh.wikipedia.org/wiki/$2 302
# mg  (Magi)
^https:\/\/duckduckgo.com\/\?q=mg(\+|%20)([^&]+).+ https://magi.com/search?q=$2 302
# tf  (Google 搜索 TestFlight)
^https:\/\/duckduckgo.com\/\?q=tf(\+|%20)([^&]+).+ https://www.google.com/search?as_q=$2&as_sitesearch=testflight.apple.com 302

# > 翻译
# yd   (有道)
^https:\/\/duckduckgo.com\/\?q=yd\+([^&]+).+ http://dict.youdao.com/search?q=$1 302
# trc  (Google 译至中)
^https:\/\/duckduckgo.com\/\?q=trc\+([^&]+).+ https://translate.google.com/#view=home&op=translate&sl=auto&tl=zh-CN&text=$1 302
# tre  (Google 译至英)
^https:\/\/duckduckgo.com\/\?q=tre\+([^&]+).+ https://translate.google.com/#view=home&op=translate&sl=auto&tl=en&text=$1 302
# trj  (Google 译至日)
^https:\/\/duckduckgo.com\/\?q=trj\+([^&]+).+ https://translate.google.com/#view=home&op=translate&sl=auto&tl=ja&text=$1 302

# ＞社区
# db：豆瓣
^https:\/\/duckduckgo.com\/\?q=db\+([^&]+).+ https://m.douban.com/search/?query=$1 302
# zh: 知乎
^https:\/\/duckduckgo.com\/\?q=zh\+([^&]+).+ https://www.zhihu.com/search?type=content&q=$1 302
# wb: 微博
^https:\/\/duckduckgo.com\/\?q=wb\+([^&]+).+ https://s.weibo.com/weibo/$1 302
# wx: 微信
^https:\/\/duckduckgo.com\/\?q=wx\+([^&]+).+ https://weixin.sogou.com/weixinwap?query=$1 302
# rd  (Reddit)
^https:\/\/duckduckgo.com\/\?q=rd\+([^&]+).+ https://www.reddit.com/search?q=$1 302
# tw (Twitter)
^https:\/\/duckduckgo.com\/\?q=tw\+([^&]+).+ https://twitter.com/search?q=$1 302
# ssp: 少数派
^https:\/\/duckduckgo.com\/\?q=ssp\+([^&]+).+ https://sspai.com/search/post/$1 302
# csdn: CSDN
^https:\/\/duckduckgo.com\/\?q=csdn\+([^&]+).+ https://so.csdn.net/so/search/s.do?q=$1&t=&u= 302

# > 购物
# zdm: 什么值得买
^https:\/\/duckduckgo.com\/\?q=zdm\+([^&]+).+ https://search.m.smzdm.com/?v=b&s=$1 302
# amz: 亚马逊
^https:\/\/duckduckgo.com\/\?q=amz\+([^&]+).+ https://www.amazon.cn/gp/aw/s/?k=$1 302
# jd : 京东
^https:\/\/duckduckgo.com\/\?q=jd\+([^&]+).+ https://so.m.jd.com/ware/search.action?keyword=$1 302
# tb: 淘宝
^https:\/\/duckduckgo.com\/\?q=tb\+([^&]+).+ https://s.m.taobao.com/h5?q=$1 302
# tm: 天猫
^https:\/\/duckduckgo.com\/\?q=tm\+([^&]+).+ https://s.m.tmall.com/m/search.htm?q=$1 302

# ＞视频资源
# ac (Acfun)
^https:\/\/duckduckgo.com\/\?q=ac\+([^&]+).+ https://www.acfun.cn/search?keyword==$1 302
# bli (哔哩哔哩) 
^https:\/\/duckduckgo.com\/\?q=bli\+([^&]+).+ https://m.bilibili.com/search?keyword=$1 302
# ytb  (YouTube)
^https:\/\/duckduckgo.com\/\?q=ytb\+([^&]+).+ https://www.youtube.com/results?search_query=$1 302
# ph  (PornHub) 
^https:\/\/duckduckgo.com\/\?q=ph\+([^&]+).+ https://cn.pornhub.com/video/search?search=$1 302

# ＞网盘
# gd  (Google Drive)
^https:\/\/duckduckgo.com\/\?q=gd\+([^&]+).+ https://www.google.com/search?q=%22Google+Drive%22+$1 302
# tgd  (t.me/gdurl 搜索 Google Drive 资源)
^https:\/\/duckduckgo.com\/\?q=tgd\+([^&]+).+ https://t.me/s/gdurl?q=$1 302
# zgd  (https://zhao.pp.ua 搜索 Google Drive 资源)
^https:\/\/duckduckgo.com\/\?q=zgd(\+|%20)([^&]+).+ https://zhao.pp.ua/?q=$2 302

# ＞默认搜索
# bi: 必应
^https:\/\/duckduckgo.com\/\?q=bi\+([^&]+).+ https://cn.bing.com/search?q=$1 302
# bd: 百度
^https:\/\/duckduckgo.com\/\?q=bd\+([^&]+).+ https://www.baidu.com/s?wd=$1 302
# ddg: DuckDuckGo 
^https:\/\/duckduckgo.com\/\?q=ddg\+([^&]+).+ https://duckduckgo.com/?ia=about&q=$1 302
# 无指令: 谷歌
^https:\/\/duckduckgo.com\/\?q=([^&]+).+ https://www.google.com/search?q=$1 302


[Script]
Rewrite: BoxJs = type=http-request,pattern=^https?://boxjs.com,script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/chavy.box.js, requires-body=true, timeout=120
EmbyPremiere = type=http-response,script-path=https://cdn.jsdelivr.net/gh/aaliyahkqqmbt/3dmmpemby@main/EmbyPremiere.js,pattern=^https?:\/\/mb3admin.com\/admin\/service\/registration\/validateDevice,max-size=131072,requires-body=true,timeout=10,enable=true

京东获取Cookie = type=http-request,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/JD-DailyBonus/JD_DailyBonus.js,pattern=https:\/\/api\.m\.jd\.com\/client\.action.*functionId=signBean,script-update-interval=86400,enable = true
京东签到 = type=cron,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/JD-DailyBonus/JD_DailyBonus.js,cronexpr="5 0 * * *",wake-system=true,timeout=20,script-update-interval=86400,enable=true

#奈飞评分
nf_rating.js = type=http-request,pattern=^https?:\/\/ios(-.*)?\.prod\.ftl\.netflix\.com\/iosui\/user/.+path=%5B%22videos%22%2C%\d+%22%2C%22summary%22%5D,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/nf_rating.js
nf_rating.js = type=http-response,requires-body=1,pattern=^https?:\/\/ios(-.*)?\.prod\.ftl\.netflix\.com\/iosui\/user/.+path=%5B%22videos%22%2C%\d+%22%2C%22summary%22%5D,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/nf_rating.js
#单集评分
nf_rating_season.js = type=http-response,pattern=^https?:\/\/ios(-.*)?\.prod\.ftl\.netflix\.com\/iosui\/warmer/.+type=show-ath,requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/nf_rating_season.js


##########↓↓↓↓↓↓↓↓↓↓去广告区↓↓↓↓↓↓↓↓↓↓##########

TikTok去水印 = type=http-response,pattern=https?:\/\/.*\.tiktokv\.com\/aweme\/v\d\/(feed|mix\/aweme|aweme\/post|(multi\/)?aweme\/detail|follow\/feed|nearby\/feed|search\/item|general\/search\/single|hot\/search\/video\/list|aweme\/favorite),script-path=https://gitee.com/bp233/copywriting-assistant/raw/master/k8.js, requires-body=true, timeout=10

YouTube去广告 = type=http-request,pattern=^https?:\/\/.+?\.googlevideo\.com\/.+&(oad|ctier)=(?!A),script-path=https://choler.github.io/Surge/Script/YouTube.js,script-update-interval=0,enable = true

去微信公众号广告 = type=http-response,pattern=^https?:\/\/mp\.weixin\.qq\.com\/mp\/getappmsgad,requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/QuantumultX/File/Wechat.js

微博去广告 = type=http-response,pattern=^https?://(sdk|wb)app\.uve\.weibo\.com(/interface/sdk/sdkad.php|/wbapplua/wbpullad.lua),requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_launch.js
微博去广告 = type=http-response,pattern=^https?://m?api\.weibo\.c(n|om)/2/(statuses/(unread|extend|positives/get|(friends|video)(/|_)(mix)?timeline)|stories/(video_stream|home_list)|(groups|fangle)/timeline|profile/statuses|comments/build_comments|photo/recommend_list|service/picfeed|searchall|cardlist|page|!/(photos/pic_recommend_status|live/media_homelist)|video/tiny_stream_video_list|photo/info|remind/unread_count),requires-body=1,max-size=-1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/wb_ad.js

BiliBili_动态去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/bilibili/bilibili_plus.js,pattern=^https?:\/\/api\.vc\.bilibili\.com\/dynamic_svr\/v1\/dynamic_svr\/dynamic_(history|new)\?
BiliBili_开屏去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/bilibili/bilibili_plus.js,pattern=^https?:\/\/app\.bilibili\.com\/x\/v2\/splash\/list
BiliBili_我的页面处理 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/bilibili/bilibili_plus.js,pattern=^https?:\/\/app\.bilibili\.com\/x\/v2\/account\/mine
BiliBili_推荐去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/bilibili/bilibili_plus.js,pattern=^https?:\/\/app\.bilibili\.com\/x\/v2\/feed\/index\?
BiliBili_标签页处理 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/bilibili/bilibili_plus.js,pattern=^https?:\/\/app\.bilibili\.com\/x\/resource\/show\/tab
BiliBili_直播去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/bilibili/bilibili_plus.js,pattern=^https?:\/\/api\.live\.bilibili\.com\/xlive\/app-room\/v1\/index\/getInfoByRoom
BiliBili_追番去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/bilibili/bilibili_plus.js,pattern=^https?:\/\/api\.bilibili\.com\/pgc\/page\/bangumi

京东_开屏去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/startup/startup.js,pattern=^https?:\/\/api\.m\.jd\.com\/client\.action\?functionId=start

什么值得买_值会员权益中心banner广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.js,pattern=^https?:\/\/zhiyou\.m\.smzdm\.com\/user\/vip\/ajax_get_banner
什么值得买_好价去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.js,pattern=^https?:\/\/haojia-api\.smzdm\.com\/home\/list
什么值得买_好价详情页去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.js,pattern=^https?:\/\/haojia\.m\.smzdm\.com\/detail_modul\/article_releated_modul
什么值得买_开屏去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.js,pattern=^https?:\/\/app-api\.smzdm\.com\/util\/loading
什么值得买_搜索标签去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.js,pattern=^https?:\/\/s-api\.smzdm\.com\/sou\/filter\/tags\/hot_tags
什么值得买_搜索结果去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.js,pattern=^https?:\/\/s-api\.smzdm\.com\/sou\/list
什么值得买_百科去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.js,pattern=^https?:\/\/baike-api\.smzdm\.com\/home_v3\/list
什么值得买_首页去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/smzdm/smzdm_remove_ads.js,pattern=^https?:\/\/homepage-api\.smzdm\.com\/home

嘀嗒出行_开屏去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/startup/startup.js,pattern=^https?:\/\/capis(-?\w*)?\.didapinche\.com\/ad\/cx\/startup\?

知乎_优化软件配置 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/appcloud2\.zhihu\.com\/v\d+\/config
知乎_信息流去广告及黑名单增强 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/(moments|topstory)(\/|\?)?(recommend|action=|feed_type=)(?!\/people)
知乎_回答内容优化 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/www\.zhihu\.com\/appview\/v2\/answer\/.*(entry=(?!(preload-topstory|preload-search|preload-subscription)))?
知乎_回答列表去广告及黑名单增强 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/v4\/questions
知乎_处理用户信息 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/people
知乎_官方消息去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/notifications\/v3\/(message\?|timeline\/entry\/system_message)
知乎_屏蔽关键字解锁 = type=http-request,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/feed-root\/block
知乎_热搜去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/search\/top_search\/tabs\/hot\/items
知乎_热榜去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/topstory\/hot-lists?(\?|\/)
知乎_获取黑名单 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/settings\/blocked_users
知乎_评论去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/(comment_v5\/)?(answers|comments?|articles|pins)\/\d+\/(root_|child_)?comments?
知乎_预置关键词去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.js,pattern=^https?:\/\/api\.zhihu\.com\/search\/preset_words\?

美团外卖_开屏去广告 = type=http-response,requires-body=1,script-path=https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/startup/startup.js,pattern=^https?:\/\/wmapi\.meituan\.com\/api\/v\d+\/loadInfo?

##########↑↑↑↑↑↑↑↑↑↑去广告区↑↑↑↑↑↑↑↑↑↑##########

##########↓↓↓↓↓↓↓↓↓↓破解vip区↓↓↓↓↓↓↓↓↓↓##########

酷我音乐vip = type=http-response,pattern=^https?:\/\/vip1\.kuwo\.cn\/(vip\/v2\/user\/vip|vip\/spi/mservice),requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/Surge/JS/Kuwo.js
酷我换肤(已经有的皮肤需要先从本地皮肤删除再换) = requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/nzw9314/QuantumultX/master/Script/themekuwo.js,type=http-response,pattern=^https?:\/\/vip1\.kuwo\.cn\/(vip\/v2\/theme)
彩云天气解锁vip = type=http-response,pattern=https?:\/\/biz\.caiyunapp\.com\/(membership_rights|v2\/user),script-path=https://raw.githubusercontent.com/mymoonyue/QuantumultX/master/Scripts/scripts/caiyun_svip.js, requires-body=true, timeout=10

##########↑↑↑↑↑↑↑↑↑↑破解vip区↑↑↑↑↑↑↑↑↑↑##########

[MITM]
enable = true
hostname = mb3admin.com，www.google.cn, duckduckgo.com, *.tiktokv.com,*.byteoversea.com,*.tik-tokapi.com, *.googlevideo.com, api.m.jd.com, api.weibo.cn, mapi.weibo.com, *.uve.weibo.com, ios-*.prod.ftl.netflix.com,ios.prod.ftl.netflix.com, *.kuwo.cn,vip1.kuwo.cn, biz.caiyunapp.com, mp.weixin.qq.com, *.atm.youku.com,*.beacon.qq.com,*.com1.z0.glb.clouddn.com,*.hxsame.hexun.com,*.l.qq.com,*.logic.cpm.cm.kankan.com,101.201.175.228,3gimg.qq.com,47.97.20.12,4gimg.map.qq.com,7n.bczcdn.com,a.apicloud.com,a.qiumibao.com,acs.m.taobao.com,act.vip.iqiyi.com,activity2.api.ofo.com,ad.sina.com,ad.sina.com.cn,adpai.thepaper.cn,aes.acfun.cn,agent-count.pconline.com.cn,api-mifit.huami.com,api-release.wuta-cam.com,api.21jingji.com,api.catch.gift,api.chelaile.net.cn,api.daydaycook.com.cn,api.futunn.com,api.gaoqingdianshi.com,api.gotokeep.com,api.haohaozhu.cn,api.huomao.com,api.intsig.net,api.izuiyou.com,api.jr.mi.com,api.jxedt.com,api.k.sohu.com,api.laifeng.com,api.m.mi.com,api.meipian.me,api.mgzf.com,api.psy-1.com,api.qbb6.com,api.qiuduoduo.cn,api.rr.tv,api.tv.sohu.com,api.videozhishi.com,api.vistopia.com.cn,api.waitwaitpay.com,api.wallstreetcn.com,api.xiachufang.com,api.xueqiu.com,api.yangkeduo.com,api.zhuishushenqi.com,app.58.com,app.api.ke.com,app.mixcapp.com,app.poizon.com,app.variflight.com,app.wy.guahao.com,app.xinpianchang.com,app.yinxiang.com,app.zhuanzhuan.com,app3.qdaily.com,appapi.huazhu.com,appconf.mail.163.com,appv6.55haitao.com,asp.cntv.myalicdn.com,b-api.ins.miaopai.com,b.zhuishushenqi.com,bbs.tianya.cn,bdsp-x.jd.com,business-cdn.shouji.sogou.com,business.msstatic.com,c.m.163.com,c.tieba.baidu.com,cap.caocaokeji.cn,ccsp-egmas.sf-express.com,cdn-1rtb.caiyunapp.com,cdn.api.fotoable.com,cdn.moji.com,cdnfile1.msstatic.com,channel.beitaichufang.com,client.mail.163.com,clientaccess.10086.cn,cms.daydaycook.com.cn,cmsapi.wifi8.com,cntv.hls.cdn.myqcloud.com,consumer.fcbox.com,creditcardapp.bankcomm.com,d.sinaimg.cn,d.zhangle.com,daoyu.sdo.com,dict-mobile.iciba.com,dili.bdatu.com,dl.app.gtja.com,dsa-mfp.fengshows.cn,dsp-impr2.youdao.com,dsp.toutiao.com,e.dangdang.com,easyreadfs.nosdn.127.net,edit.sinaapp.com,flowplus.meituan.net,foodie-api.yiruikecorp.com,g.cdn.pengpengla.com,games.mobileapi.hupu.com,gateway.shouqiev.com,ggic.cmvideo.cn,ggw.cmvideo.cn,ggx.cmvideo.cn,guide-acs.m.taobao.com,gw-passenger.01zhuanche.com,gw.aihuishou.com,gw.alicdn.com,gw.csdn.net,heic.alicdn.com,hk.app.joox.com,i.ys7.com,iadmat.a-z*.1267.net,iapi.bishijie.com,iface.iqiyi.com,ih2.ireader.com,image.suning.cn,images.client.vip.xunlei.com,imeclient.openspeech.cn,img-ys011.didistatic.com,img.jiemian.com,img.meituan.net,img01.10101111cdn.com,imgw.g.pptv.com,ios.lantouzi.com,ios.wps.cn,issuecdn.baidupcs.com,learn.chaoxing.com,list-app-m.i4.cn,m.amap.com,m.client.10010.com,m.ibuscloud.com,m.tuniu.com,ma.ofo.com,manga.bilibili.com,mangaapi.manhuaren.com,mapi.dangdang.com,mapi.mafengwo.cn,media.qyer.com,mlife.jf365.boc.cn,mm.app.joox.com,mobi.360doc.com,mobile-pic.cache.iciba.com,mps.95508.com,mrobot.pcauto.com.cn,mrobot.pconline.com.cn,ms.jr.jd.com,msspjh.emarbox.com,news.ssp.qq.com,nnapp.cloudbae.cn,nochange.ggsafe.com,notch.qdaily.com,notice.send-anywhere.com,oimage*.ydstatic.com,open.qyer.com,overseas.weico.cc,p*.meituan.net,p*.music.126.net,p.du.163.com,p.kuaidi100.com,pan.baidu.com,paopaow.qiyipic.com,pic.edaijia.cn,pic.k.sohu.com,pic1.chelaile.net.cn,pic1cdn.cmbchina.com,portal-xunyou.qingcdn.com,pss.txffp.com,qt.qq.com,r.inews.qq.com,render.alipay.com,res-release.wuta-cam.com,res.xiaojukeji.com,restapi.iyunmai.com,richmanapi.jxedt.com,rtbapi.douyucdn.cn,s.zdmimg.com,s1.api.tv.itc.cn,s3plus.meituan.net,sa.tuisong.baidu.com,saxw.sina.cn,saxw.sina.com.cn,sdkapp.uve.weibo.com,server-w.imrworldwide.com,service.4gtv.tv,service.iciba.com,slapi.oray.net,smkmp.96225.com,smusic.app.wechat.com,ss0.bdstatic.com,ssl.kohsocialapp.qq.com,static.vuevideo.net,static1.keepcdn.com,status.boohee.com,support.you.163.com,supportda.ofo.com,thor.weidian.com,tiasdk.app.wechat.com,tiku.zhan.com,tqt.weibo.cn,update.pan.baidu.com,v.cctv.com,v.icbc.com.cn,vv.video.qq.com,w.cloudfront.net,w.gdt.qq.com,w.kakamobi.cn,w.kingsoft-office-service.com,w.up.qingdaonews.com,w.ximalaya.com,wap.js.10086.cn,wap.ngchina.cn,wbapp.uve.weibo.com,weibointl.api.weibo.cn,www.bldimg.com,www.bodivis.com.cn,www.cmbc.com.cn,www.cntv.cn,www.dandanzan.com,www.didapinche.com,www.flyertea.com,www.hxeduonline.com,www.icourse163.org,www.iyingdi.cn,www.myhug.cn,www.shihuo.cn,www.zybang.com,xyst.yuanfudao.com,xyz.cnki.net,yxyapi*.drcuiyutao.com,*.music.126.net,*.music.127.net,*.tc.qq.com,*.tv.sohu.com,-aweme.snssdk.com,-lark-frontier-hl.snssdk.com,-reading.snssdk.com,101.201.175.228,118.178.214.118,119.18.193.135,122.14.246.33,123.59.30.10,123.59.31.1,182.92.251.113,203.205.255.16,211.98.71.195,211.98.71.196,211.98.71.226,3gimg.qq.com,47.97.20.12,4gimg.map.qq.com,789.kakamobi.cn,7n.bczcdn.com,a.apicloud.com,a.applovin.com,a.qiumibao.com,aarkissltrial.secure2.footprint.net,acs.m.taobao.com,act.vip.iqiyi.com,activity2.api.ofo.com,ad.api.3g.youku.com,ad.api.moji.com,ad.sina.com,ad.sina.com.cn,adm.10jqka.com.cn,adpai.thepaper.cn,adproxy.autohome.com.cn,adse.ximalaya.com,aes.acfun.cn,afd.baidu.com,agent-count.pconline.com.cn,agn.aty.sohu.com,alogs.umeng.co,als.baidu.com,api-163.biliapi.net,api-ks.wtzw.com,api-mifit.huami.com,api-new.app.acfun.cn,api-release.wuta-cam.com,api.21jingji.com,api.app.vhall.com,api.applovefrom.com,api.appsdk.soku.com,api.bilibili.com,api.bjxkhc.com,api.caijingmobile.com,api.catch.gift,api.cdmcaac.com,api.chelaile.net.cn,api.club.lenovo.cn,api.daydaycook.com.cn,api.douban.com,api.eshimin.com,api.feng.com,api.fengshows.com,api.futunn.com,api.gaoqingdianshi.com,api.gotokeep.com,api.hanju.koudaibaobao.com,api.haohaozhu.cn,api.huomao.com,api.intsig.net,api.ishansong.com,api.izuiyou.com,api.jr.mi.com,api.jxedt.com,api.k.sohu.com,api.kkmh.com,api.laifeng.com,api.laosiji.com,api.live.bilibili.com,api.m.jd.com,api.m.mi.com,api.mddcloud.com.cn,api.meipian.me,api.mgzf.com,api.mobile.youku.com,api.musical.ly,api.newad.ifeng.com,api.pinduoduo.com,api.psy-1.com,api.qbb6.com,api.qiuduoduo.cn,api.rr.tv,api.share.mob.com,api.smzdm.com,api.tiktokv.com,api.vc.bilibili.com,api.videozhishi.com,api.vistopia.com.cn,api.vuevideo.net,api.waitwaitpay.com,api.wallstreetcn.com,api.weibo.cn,api.xiachufang.com,api.xueqiu.com,api.yangkeduo.com,api.ycapp.yiche.com,api.yizhibo.com,api.youku.com,api.zhihu.com,api.zhuishushenqi.com,api2.helper.qq.com,apimobile.meituan.com,app-api.jinse.com,app-api.niu.com,app-api.smzdm.com,app.10086.cn,app.58.com,app.api.ke.com,app.bilibili.com,app.ddpai.com,app.mixcapp.com,app.poizon.com,app.relxtech.com,app.variflight.com,app.veryzhun.com,app.wy.guahao.com,app.xinpianchang.com,app.yinxiang.com,app.zhuanzhuan.com,app2.autoimg.cn,app3.qdaily.com,appapi.huazhu.com,appcloud2.zhihu.com,appconf.mail.163.com,apprn.pizzahut.com.cn,appv6.55haitao.com,asp.cntv.myalicdn.com,ast.api.moji.com,atrace.chelaile.net.cn,aweme.snssdk.com,b-api.ins.miaopai.com,b.zhuishushenqi.com,baichuan.baidu.com,baike-api.smzdm.com,bank.wo.cn,bbs.airav.cc,bbs.tianya.cn,bdsp-x.jd.com,bj.bcebos.com,bla.gtimg.com,book.img.ireader.com,btrace.qq.com,business-cdn.shouji.sogou.com,business.msstatic.com,c.m.163.com,c.minisplat.cn,c.tieba.baidu.com,c1.ifengimg.com,cache.changjingyi.cn,cache.gclick.cn,cap.caocaokeji.cn,capi.douyucdn.cn,capi.mwee.cn,capis*.didapinche.com,ccsp-egmas.sf-express.com,cdn-1rtb.caiyunapp.com,cdn.api.fotoable.com,cdn.dianshihome.com,cdn.kuaidi100.com,cdn.moji.com,cdn.tiku.zhan.com,cdn2.moji002.com,cdnfile1.msstatic.com,channel.beitaichufang.com,cheyouapi.ycapp.yiche.com,classbox2.kechenggezi.com,client.mail.163.com,client.qunar.com,clientaccess.10086.cn,cloud.189.cn,cms.daydaycook.com.cn,cmsapi.wifi8.com,cmsfile.wifi8.com,cn.pornhub.com,cn.ultraiso.net,cntv.hls.cdn.myqcloud.com,connect.facebook.net,consumer.fcbox.com,counter.ksosoft.com,cover.baidu.com,creatives.ftimg.net,creditcard.ecitic.com,creditcardapp.bankcomm.com,ct.xiaojukeji.com,ctrl.zmzapi.net,d.1qianbao.com,d.sinaimg.cn,d.zhangle.com,daoyu.sdo.com,dapis.mting.info,dd.iask.cn,dict-mobile.iciba.com,dili.bdatu.com,dimg04.c-ctrip.com,discuz.gtimg.cn,dl.app.gtja.com,dsa-mfp.fengshows.cn,dsp-impr2.youdao.com,dsp.toutiao.com,dssp.stnts.com,du.hupucdn.com,e.dangdang.com,easyreadfs.nosdn.127.net,edit.sinaapp.com,emdcadvertise.eastmoney.com,erebor.douban.com,exp.3g.ifeng.com,fb.fbstatic.cn,fcvbjbcebos.baidu.com,fdfs.xmcdn.com,fds.api.moji.com,fengplus.feng.com,flowplus.meituan.net,fm.fenqile.com,fmapp.chinafamilymart.com.cn,foodie-api.yiruikecorp.com,free.sinaimg.cn,frontier.snssdk.com,fuss10.elemecdn.com,g.cdn.pengpengla.com,g.tbcdn.cn,g1.163.com,games.mobileapi.hupu.com,gateway.shouqiev.com,gfp.veta.naver.com,ggic.cmvideo.cn,ggv.cmvideo.cn,ggw.cmvideo.cn,ggx.cmvideo.cn,gss0.bdstatic.com,gw-passenger.01zhuanche.com,gw.aihuishou.com,gw.csdn.net,haojia-api.smzdm.com,haojia.m.smzdm.com,hd.mina.mi.com,hd.youku.com,heic.alicdn.com,hk.app.joox.com,homepage-api.smzdm.com,hui.sohu.com,huichuan.sm.cn,hypersnap.mairuan.com,i.hoopchina.com.cn,i.ys7.com,i1.hoopchina.com.cn,iadmat.a-z*.1267.net,iapi.bishijie.com,iface.iqiyi.com,iface2.iqiyi.com,ifengad.3g.ifeng.com,iflow.uczzd.cn,ih2.ireader.com,iis1.deliver.ifeng.com,image.airav.cc,image.suning.cn,image1.chinatelecom-ec.com,images.91160.com,images.client.vip.xunlei.com,images.kartor.cn,imeclient.openspeech.cn,img*.ddimg.cn,img-ys011.didistatic.com,img.10101111cdn.com,img.360buyimg.com,img.53site.com,img.ddrk.me,img.doubanio.com,img.ihytv.com,img.jiemian.com,img.meituan.net,img.rr.tv,img.umetrip.com,img.yun.01zhuanche.com,img.zuoyebang.cc,img01.10101111cdn.com,img1.126.net,imgcache.qq.com,imgw.g.pptv.com,impservice.dictapp.youdao.com,interface.music.163.com,intl.iqiyi.com,ios.lantouzi.com,ios.wps.cn,issuecdn.baidupcs.com,ivy.pchouse.com.cn,iyes.youku.com,js.dilidd.com,jxd524.github.io,kano.guahao.cn,learn.chaoxing.com,list-app-m.i4.cn,log.baidu.com,logoshejishi.mairuan.com,m.360buyimg.com,m.airav.cc,m.amap.com,m.aty.sohu.com,m.caijing.com.cn,m.china.com.cn,m.client.10010.com,m.coolaiy.com,m.creditcard.ecitic.com,m.ctrip.com,m.elecfans.com,m.ibuscloud.com,m.tuniu.com,m.yhdm.io,m.youku.com,m1.ad.10010.com,m5.amap.com,ma.ofo.com,mage.if.qidian.com,maicai.api.ddxq.mobi,manga.bilibili.com,mangaapi.manhuaren.com,mapi.dangdang.com,mapi.mafengwo.cn,mbl.56.com,mcupdate.gstarcad.com,media.qyer.com,mi.gdt.qq.com,mime.baidu.com,mimg.127.net,mlife.jf365.boc.cn,mm.app.joox.com,mmg.aty.sohu.com,mmgr.gtimg.com,mob.mddcloud.com.cn,mobi.360doc.com,mobile-api2011.elong.com,mobile-pic.cache.iciba.com,mp.weixin.qq.com,mpcs.suning.com,mps.95508.com,mrobot.pcauto.com.cn,mrobot.pconline.com.cn,ms.jr.jd.com,msg.umengcloud.com,msspjh.emarbox.com,newapp.szsmk.com,news.ssp.qq.com,nex.163.com,nnapp.cloudbae.cn,nochange.ggsafe.com,notch.qdaily.com,notice.send-anywhere.com,oimage*.ydstatic.com,open.qyer.com,optimus-ads.amap.com,oral.youdao.com,oset-api.open-adx.com,overseas.weico.cc,p*.meituan.net,p.c.music.126.net,p.du.163.com,p.kuaidi100.com,pagead2.googlesyndication.com,pan-api.bitqiu.com,pan.baidu.com,paopaow.qiyipic.com,pb.pstatp.com,pcvideoyd.titan.mgtv.com,photocdn.sohu.com,pic.ajkimg.com,pic.edaijia.cn,pic.k.sohu.com,pic.xiami.net,pic1.chelaile.net.cn,pic1cdn.cmbchina.com,player.hoge.cn,portal-xunyou.qingcdn.com,premiumyva.appspot.com,prom.mobile.gome.com.cn,pss.txffp.com,ptmpcap.caocaokeji.cn,qidian.qpic.cn,qt.qq.com,qzonestyle.gtimg.cn,r.inews.qq.com,r.l.youku.com,r1.ykimg.com,render.alipay.com,res-release.wuta-cam.com,res.kfc.com.cn,res.mall.10010.cn,res.xiaojukeji.com,ress.dxpmedia.com,restapi.iyunmai.com,rich.kuwo.cn,richmanapi.jxedt.com,richmanmain.jxedt.com,rm.aarki.net,rtbapi.douyucdn.cn,s-api.smzdm.com,s.go.sohu.com,s.zdmimg.com,s0.2mdn.net,s1.api.tv.itc.cn,s3.pstatp.com,s3plus.meituan.net,sa.tuisong.baidu.com,saad.ms.zhangyue.net,sapi.guopan.cn,saxw.sina.cn,saxw.sina.com.cn,sdk.99shiji.com,sdkapp.uve.weibo.com,server-w.imrworldwide.com,service.4gtv.tv,service.iciba.com,sf-ttcdn-tos.pstatp.com,sfw-ttcdn-tos.pstatp.com,show.api.moji.com,shp.qpic.cn,simg.s.weibo.com,slapi.oray.net,sm.domobcdn.com,smart.789.image.mucang.cn,smkmp.96225.com,smusic.app.wechat.com,sp.kaola.com,splashqqlive.gtimg.com,ss0.bdstatic.com,ssl.kohsocialapp.qq.com,sso.ifanr.com,sso.lxjapp.com,stat.moji.com,statc.mytuner.mobi,static.api.m.panda.tv,static.cnbetacdn.com,static.iask.cn,static.vuevideo.net,staticlive.douyucdn.cn,stats.tubemogul.com,status.boohee.com,storage.360buyimg.com,storage.wax.weibo.com,support.you.163.com,supportda.ofo.com,szextshort.weixin.qq.com,t*.baidu.com,tb1.bdstatic.com,tb2.bdstatic.com,thor.weidian.com,tiasdk.app.wechat.com,tiku.zhan.com,tj.playcvn.com,tqt.weibo.cn,tracker-download.oss-cn-beijing.aliyuncs.com,u*.iqiyipic.com,u1.img.mobile.sina.cn,ugc.moji001.com,ulogs.umeng.com,ulogs.umengcloud.com,update.pan.baidu.com,ups.youku.com,v.17173.com,v.cctv.com,v.icbc.com.cn,video.dispatch.tc.qq.com,vv.video.qq.com,w.cloudfront.net,w.gdt.qq.com,w.jstucdn.com,w.kakamobi.cn,w.kingsoft-office-service.com,w.up.qingdaonews.com,w.ximalaya.com,wap.js.10086.cn,wap.ngchina.cn,wapwenku.baidu.com,wbapp.uve.weibo.com,web.chelaile.net.cn,webboot.zhangyue.com,weibointl.api.weibo.cn,weicoapi.weico.cc,wenku.baidu.com,werewolf.53site.com,wmapi.meituan.com,wmedia-track.uc.cn,www.babyye.com,www.baidu.com,www.bldimg.com,www.bodivis.com.cn,www.cmbc.com.cn,www.cntv.cn,www.dandanzan.com,www.didapinche.com,www.dililitv.com,www.duokan.com,www.flyertea.com,www.ft.com,www.gwv7.com,www.hxeduonline.com,www.icourse163.org,www.inoreader.com,www.iyingdi.cn,www.lianbijr.com,www.likeji.net,www.meituan.com,www.myhug.cn,www.nfmovies.com,www.oschina.net,www.pornhub.com,www.shihuo.cn,www.tsytv.com.cn,www.xiaohongshu.com,www.zhihu.com,www.zybang.com,www1.elecfans.com,xyst.yuanfudao.com,xyz.cnki.net,y.gtimg.cn,you.163.com,yxyapi*.drcuiyutao.com,zhiyou.m.smzdm.com,zhuanlan.zhihu.com,zt-app.go189.cn
ca-passphrase = 
ca-p12 = 
