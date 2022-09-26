<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>

@charset "UTF-8";

/* default Selector */
body,input,button,select,input,txtArea,h1,h2,h3,h4,h5,h6,img,dl,dt,dd,ul,ol,li,legend,hr,em,addres,div,p,strong,fieldset,form{margin:0;padding:0;}
html,body{width:100%;height:100%;position:relative;}
html{overflow-y:scroll}
body,input,textarea,select,button,table {font-size:12px;text-align:left;background:#fff;*word-break:break-all;-ms-word-break:break-all;color:#666;font-family:"Malgun Gothic","Dotum","돋움","gulim","굴림",Apple SD Gothic Neo,Helvetica,Sans-serif;}
fieldset, img {border:0;}
img, fieldset, button,iframe {border:0 none}
menu, ol, ul {list-style: none;}
a {text-decoration: none;}
    
/* common */
.clear {clear:both}
.clear:after,.clear:before {display:block;overflow:hidden;clear:both;content:""}
.blind {position:absolute;clip:rect(0 0 0 0);width:1px;height:1px;margin:-1px;overflow:hidden;}
.ico {display:inline-block;background:url(//img.danawa.com/img/auth/login.png) no-repeat;}
input::-webkit-input-placeholder {color:#b3b3b3;} /* WebKit browsers */
input:-moz-placeholder {color:#b3b3b3;opacity:1;} /* Mozilla Firefox 4 to 18 */
input::-moz-placeholder {color:#b3b3b3;opacity:1;} /* Mozilla Firefox 19+ */
input:-ms-input-placeholder {color:#b3b3b3;} /* Internet Explorer 10+ */
input:-webkit-autofill {-webkit-box-shadow: 0 0 0 30px #fff inset;} 
input:-webkit-autofill, input:-webkit-autofill:hover, input:-webkit-autofill:focus, input:-webkit-autofill:active {transition: background-color 5000s ease-in-out 0s;}

/* tooltip */
.ico_help {display:inline-block;background:url(//img.danawa.com/img/common/icon_help_v2.png) no-repeat;text-indent:-9999px;}
.acc_l {width:10px;height:12px;background-position:0 0;}
.acc_r {width:10px;height:12px;background-position:-14px 0;}
.acc_bl {width:10px;height:12px;background-position:-28px 0;}
.acc_br {width:10px;height:12px;background-position:-42px 0;}
.help_layer .acc_l,.help_layer .acc_r {display:block;position:absolute;top:-11px;left:20px;z-index:10;}
.acc_bl, .acc_br {display:block;position:absolute;bottom:-11px;left:127px;z-index:10;}
.tooltip {width:16px;height:16px;background-position:0 -16px;margin:12px 0 0 8px;vertical-align:top;}
.tooltip_v2 {width:14px;height:14px;background-position:-20px -16px;vertical-align:top;}
.help_layer {display:none;position:absolute;z-index:10;padding:14px 10px;border:1px solid #333;background:#fff;border-radius:5px;}
.convert_layer {width:296px;text-align:left;top:42px;left:193px;}
.tip_tit {display:block;margin-bottom:6px;font-size:13px;color:#0f0f0f;}
.tip_txt {line-height:19px;font-size:12px;color:#666;text-align:center;font-family:dotum !important;}

/* 프로필 수정 (기존 css) */
/* 레이아웃 */
.login_v3_wrap {width:800px;margin:0 auto;height:100%;}
.login_header_wrap {border-bottom:2px solid #c0c0c0;clear:both;overflow:hidden;padding-bottom:7px;margin-top:205px;position:relative;}	
.txt_top_login{float:left;}
.link_cs{position:absolute;padding-right:6px;display:block;line-height:16px;font-size:11px;color:#666;background:url(//img.danawa.com/new/newmain/img/icon_arrow_01.png) no-repeat right -90px;bottom:5px;}

/* login_v3_wrap */
.login_content_wrap {margin:80px 0 120px 0;}
.login_header_wrap {position:relative;}
.login_header_wrap .link_cs{position:absolute;padding-right:6px;display:block;line-height:14px;font-size:11px;color:#666;background:url(//img.danawa.com/new/newmain/img/icon_arrow_01.png) no-repeat right -90px;bottom:10px;right:2px;}
.top_logo {float:left;margin-left:-7px;}
.txt_top_login {font-family:"Malgun Gothic","맑은 고딕",dotum,'돋움',gulim,'굴림','Apple Gothic',Helvetica,sans-serif;font-size:24px;color:#333;font-weight:bold;letter-spacing:-2px;height:24px;float:left;margin-left:15px;line-height:27px;*line-height:27px;margin-left:0;}

/* resp_content_wrap */
.set_nick_wrap {width:260px;margin:20px auto 0 auto;}
.resp_content_wrap {text-align:center;}
.con_top_tit {text-align:center;font-weight:bold;font-size:20px;font-family:'Malgun Gothic','맑은 고딕',dotum,'돋움',gulim,'굴림','Apple Gothic',Helvetica,sans-serif;color:#333;letter-spacing:-1px;}
.nick_inpt_area .input_box {width:260px;height:40px;*height:39px;position:relative;}
.nick_inpt_area .input_box input {width:243px;height:38px;border:1px solid #b3b3b3;color:#1a1a1a;font-weight:bold;font-size:16px;line-height:30px;display:block;position:relative;z-index:8;-webkit-appearance:none;border-radius:0;zoom:1;padding:0 0 0 15px;}
.nick_inpt_area .input_box.focus input {color:#1a1a1a;}
.nick_inpt_area .input_box .red_txt {border-color:#e01c1c;}
.set_nick_wrap .txt_error_area {width:260px;text-align:center;margin:0 auto;}
.set_nick_wrap .txt_error {text-align:left;}
.login_v3_wrap .btn_mback {display:none;}

.guide_txt_area {text-align:center;margin:29px 0 20px 0;}
.guide_txt {color:#666;font-size:12px;font-weight:normal;line-height:20px;}
.btn_nick_enter {background:#0375E0;color:#fff;text-align:center;width:260px;height:40px;cursor:pointer;margin-top:10px;font-size:15px;font-weight:bold;font-family:"Malgun Gothic";letter-spacing:-.06em;}
.btn_center_wrap {text-align:right;margin-top:8px;}
.btn_gray_sty {text-align:right;font-size:11px;text-decoration:none;color:#666;}
.user_photo_area {position:relative;height:81px;}
.user_photo_80 {border-radius:50%;overflow:hidden;width:80px;height:80px;}

/* login_error */
.login_error .input_box {border-color:#e01c1c;}
.login_input_area .focus {border-color:#3273d9;}
.login_error .input_box.focus {border-color:#3273d9;}
.login_error .focus {border-color:#e01c1c;}
.txt_error_area .txt_error {font-size:12px;}

/* myicon_inpt_box */
.myicon_inpt_box {width:100px;height:90px;clear:both;position:absolute;bottom:0;left:50%;margin-left:-50px;}
.myicon_inpt_box:after {display:block;overflow:hidden;clear:both;content:""}
.file_input_div {position:relative;width:100px;height:90px;margin-bottom:20px;}
.file_input_hidden{font-size:73px;position:absolute;right:0px;top:0px;opacity:0;filter:alpha(opacity=0);-ms-filter: "alpha(opacity=0)";-khtml-opacity:0;-moz-opacity:0;cursor:pointer;}
.file_input_button {display:inline-block;width:100px;height:90px;position:absolute;bottom:0;right:0px;background:url(//img.danawa.com/img/auth/ico_add_photo.png) bottom right no-repeat;border:none;cursor:pointer;text-indent:-9999px;background-size:31px;padding:10px 30px 40px 30px;cursor:pointer;}

.file_input_textbox{float:left;margin-left:104px;width:85px;border:none;height:20px;}
.myicon_right .input_wrap3 {position:relative;}
.myicon_right .txt_notok {position:absolute;top:8px;left:110px;font-size:11px;}

/* del_account_wrap */
.guide_txt2 {margin-top:18px;}
.clr_blue {color:#3273d9;}
.btn_delete_wrap {margin:40px auto 0 auto;overflow:hidden;width:400px;}
.btn_del_no {width:193px;height:32px;display:block;text-indent:-9999px;background:url(//img.danawa.com/new/login_new/img/btn_del_no.jpg) no-repeat;float:left;margin-right:14px;}
.btn_del_yes {width:193px;height:32px;float:left;text-indent:-9999px;background:url(//img.danawa.com/new/login_new/img/btn_del_yes.jpg) no-repeat;}
.btn_footer_member {display:none;}

/* mobile_version */
.icon_mb {background:url(//img.danawa.com/new/mdnw/img/icon_s.png) no-repeat;}
.ico_danawa {background-position:0 0;width:90px;height:20px;overflow:hidden;display:block;text-indent:-9999em;padding:10px 0 8px 0;}
.ico_member_back {background-position:12px -30px;width:45px;height:44px;overflow:hidden;display:block;text-indent:-9999em;}
.btn_mback {background:none;border:0 none;cursor:pointer;position:absolute;left:0px;top:0px;width:45px;height:44px;}
.ico_mhp {background-position:-50px -40px;width:14px;height:23px;overflow:hidden;display:inline-block;vertical-align:middle;margin-right:12px;position:relative;top:-2px;}
.ico_mi {background-position:-100px -40px;width:20px;height:22px;overflow:hidden;display:inline-block;vertical-align:middle;margin-right:12px;position:relative;top:-2px;}
.ico_mzoom {background-position:-100px 0;width:20px;height:18px;overflow:hidden;display:inline-block;vertical-align:middle;margin-right:5px;}

@media screen and (-webkit-min-device-pixel-ratio:2){
	.icon_mb {background:url(//img.danawa.com/new/mdnw/img/icon_b.png) no-repeat;-webkit-background-size:150px 150px;background-size:150px 150px;}
	.li_dot01 li{background:url(//img.danawa.com/new/mdnw/img/icon_bul_b.png) no-repeat 0 4px;-webkit-background-size:4px 4px;background-size:4px 4px;}
	.icon_19_limit {background:url(//img.danawa.com/new/mdnw/img/bg_b19.png) no-repeat;-webkit-background-size:55px auto;background-size:55px auto;}
}

.ico_danawa {background-position:0 0;width:90px;height:20px;overflow:hidden;display:block;text-indent:-9999em;padding:10px 0 8px 0;}
.ico_member_back {background-position:12px -30px;width:45px;height:44px;overflow:hidden;display:block;text-indent:-9999em;}
.btn_mback {background:none;border:0 none;cursor:pointer;position:absolute;left:0px;top:0px;width:45px;height:44px;}
.ico_mhp {background-position:-50px -40px;width:14px;height:23px;overflow:hidden;display:inline-block;vertical-align:middle;margin-right:12px;position:relative;top:-2px;}
.ico_mi {background-position:-100px -40px;width:20px;height:22px;overflow:hidden;display:inline-block;vertical-align:middle;margin-right:12px;position:relative;top:-2px;}
.ico_mzoom {background-position:-100px 0;width:20px;height:18px;overflow:hidden;display:inline-block;vertical-align:middle;margin-right:5px;}

/* footer_type1.v2 */
.footer_type1.v2{position:relative;margin-top:56px;border-top:1px solid #d5d5d5;padding-top:50px;}
.service_list {position:absolute;top:0;left:0;bottom:0;right:0;margin:auto;width:246px;height: 12px;}
.service_list .item{float:left;width:80px;position:relative;}
.item .bar{width:1px;height: 11px;position:absolute;left:0;background:#C5C5C5;}
.service_list .item .link{color:#000;}
.footer_type1 {margin:0;width:800px;padding-top:26px;text-align:center;}
.footer_type1 address { margin:5px 0 40px 18px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:9px; color:#757575; font-style:normal;}

.sns_convert {margin-top:84px;position: relative;}
.layer_show {position:relative;}
.sns_convert .layer_show .help_layer {display:block;}
.sns_convert .btn_help {display:inline-block;width:258px;height:38px;line-height:40px;font-size:11px;color:#666;font-weight:bold;border:1px solid #adadad;}
.sns_convert .btn_help:hover {text-decoration:none;}
.sns_convert .btn_help .txt {display: inline-block;font-family:"Malgun Gothic";font-size:15px;letter-spacing:-.06em;}
.sns_convert .help_layer {display:none;position:absolute;z-index:10;padding:10px;border:1px solid #333;background:#fff;border-radius:5px;}
.convert_layer {width:296px;text-align:left;top:42px;left:193px;}
.sns_convert .tip_txt {text-align:left;}
.sns_convert .tip_tit {font-family: "Malgun Gothic";}

/* 반응형 */
@media screen and (max-width: 640px) {
	body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {margin:0;padding:0;font-family:'Apple Gothic','Droid Sans','돋움',dotum,'굴림',Gulim,Helvetica,Arial,verdana,Sans-serif;}
	.resp_login_wrap .login_footer_wrap,.footer_type1 {display:none;}
	.resp_login_wrap .btn_footer_member {display:block;text-align:center;}
	.resp_login_wrap .btn_footer_member .foot_copy {color:#999;font-size:14px;}
	.resp_login_wrap .login_v3_wrap .btn_mback {display:block;}
	.resp_login_wrap,.set_nick_wrap {width:100%;}
	.resp_login_wrap #header {background:#3d414d;position:relative;height:44px;padding:0;margin-top:0;border-bottom:none;}
	.resp_login_wrap .top_logo {display:none;}
	.resp_login_wrap .header_opt {display:none;}
	.resp_login_wrap .txt_top_login {float:none;text-align:center;color:#fff;font-size:19px;line-height:44px;height:44px;font-family:'Apple Gothic','Droid Sans','돋움',dotum,'굴림',Gulim,Helvetica,Arial,verdana,Sans-serif;}
	.resp_content_wrap {margin:0 16px;}
	.resp_login_wrap .con_top_tit {font-size:20px;color:#333;font-family:'Apple Gothic','Droid Sans','돋움',dotum,'굴림',Gulim,Helvetica,Arial,verdana,Sans-serif;}
	.resp_login_wrap .guide_txt {font-size:14px;}
	.resp_login_wrap .input_box input::-webkit-input-placeholder {color:#b2b2b2;font-weight:normal;}
	.resp_login_wrap .input_box input::-moz-placeholder {color:#b2b2b2;font-weight:normal;}
	.resp_login_wrap .input_box input:-moz-placeholder {color:#b2b2b2;font-weight:normal;}
	.resp_login_wrap .input_box input:-ms-input-placeholder {color:#b2b2b2;font-weight:normal;} /* IE10+ */
	.resp_login_wrap .input_box input[type=text],
	.resp_login_wrap .input_box input[type=password],
	.resp_login_wrap .input_box input[type=search],
	.resp_login_wrap .input_box input[type=email]
	{background:transparent;border:0 none;width:100%;font-size:16px;-webkit-apperance:none;color:#333;font-weight:bold;}
	.resp_login_wrap .nick_inpt_area .input_box {border:none;border-bottom:1px solid #d9d9d9;width:100%;}
	.resp_login_wrap .nick_inpt_area .input_box input {width:98%;padding:0 0 0 2%;}
	.resp_login_wrap .btn_nick_enter {box-sizing:border-box;width:100%;height:44px;background:#3273d9;border:1px soild #3273d9;color:#fff;color:#fff;text-indent:0;font-size:20px;font-weight:bold;letter-spacing:-.06em;text-align:center;border-radius:4px;line-height:42px;padding:0;}
	.resp_login_wrap .btn_center_wrap {margin-top:18px;}
	.resp_login_wrap .btn_gray_sty {font-size:15px;}
	.resp_login_wrap .input_img_btn {background:url(//img.danawa.com/new/login_new/img/ico_add_mphotox2.png) bottom right no-repeat;background-size:41px 41px;}
	.resp_login_wrap .login_content_wrap {margin:40px 0 160px 0;}
	.resp_login_wrap .set_nick_wrap .txt_error_area {width:auto;}
	.resp_login_wrap .txt_error_area {display:block;color:#e02828;font-size:13px;padding-bottom:10px;text-align:left;}
	.resp_login_wrap .btn_del_no,.btn_del_yes {display:block;width:100%;float:none;text-indent:0;font-size:20px;font-weight:bold;line-height:44px;letter-spacing:-1px;text-align:center;display:block;border-radius:4px;box-sizing:border-box;height:44px;}
	.btn_del_no,.btn_del_no:link,.btn_del_no:hover,.btn_del_no:visited {background:#3273d9;color:#fff;}
	.btn_del_yes {display:block;width:100%;float:none;background:#fff;border:1px solid #999;margin-top:15px;color:#333;}
	.btn_del_yes:link{color:#333;}
	.btn_delete_wrap{width:100%;}
	.del_account_wrap .guide_txt{text-align:left;}
	.btn_help {box-sizing:border-box;width:100%;height:44px;line-height:44px;font-size:18px;color:#333;font-weight:bold;border-color:#999;border-radius:4px;}
	.btn_help .txt {font-size:20px;color:#666;}
	.tooltip {width:18.5px;height:18.5px;margin-top:12px;background:url(//img.danawa.com/img/m/common/ico_tooltip.png) no-repeat;background-size:18.5px auto;}
	.sns_convert .help_layer {background:#e9e9e9;border:none;}
	.sns_convert .convert_layer {top:40px;left:10%;width:68%;}
	.sns_convert .tip_tit {font-size:12px;}
	.sns_convert .tip_txt {color:#333;}
	.ico_help.acc_r {width:11px;height:9px;top:-9px;left:auto;right:14px;background:url(//img.danawa.com/img/m/common/tip_acc_r.png) no-repeat;background-size:11px 9px;}
}


/* layout */
.login_wrap {width:920px;margin:0 auto;}

/* header */
.header {position:relative;padding:72px 0 16px 0;border-bottom:2px solid #bfbfbf;clear:both;font-family: "Malgun Gothic","맑은 고딕";}
.header:after,.header:before {display:block;overflow:hidden;clear:both;content:""}
.logo {display:block;float:left;height:30px;}
.h_logo {width:126px;height:30px;background-position:0 0;}
.s_tit {float:left;font-size:24px;letter-spacing:-0.05em;color:#333;font-family: "Malgun Gothic","맑은 고딕";}
.h_opt {position: absolute;top:75px;right:0;}
.h_opt .btn_help {display:block;margin-top:11px;color:#666;}
.h_opt .btn_help:hover {text-decoration:underline;}
.h_opt .btn_help:after {content:"";display:inline-block;width:4px;height:8px;margin-left:6px;background:url(//img.danawa.com/img/auth/login.png) -140px -20px no-repeat;}

/* footer */
.footer {position:relative;padding:27px 0 40px;border-top:1px solid #bfbfbf;text-align:center;}
.footer address {font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 12px;color:#757575;letter-spacing: -.5px;font-style:normal;}

/* container */
.container {min-height:712px;}

/* login_form : 로그인 페이지 */
.login_form {width: 430px;margin:0 auto;padding:60px 0;box-sizing:border-box;}
.login_form * {font-family: "Malgun Gothic","맑은 고딕", "Apple SD Gothic Neo";}

/* check_form : 인증 페이지 */
.check_form {padding:35px 0 40px;}

/* select_area */
.select_area {position:relative;height:21px;margin-bottom:12px;padding-left: 240px;}
.rdo_list {clear:both;}
.rdo_list:after,.rdo_list:before {display:block;overflow:hidden;clear:both;content:""}
.rdo_list li {float: left;margin-right:20px;}
.rdo_list input {position: absolute;clip: rect(0,0,0,0);width: 1px;height: 1px;margin: -1px;overflow: hidden;}
.rdo_list label {display:block;position:relative;font-size:13px;letter-spacing:-0.03em;color:#919191;cursor:pointer;}
.i_rdo {width:17px;height:17px;background-position:0 -40px;vertical-align:-3px;margin-right:5px;}
.rdo_list li.check .i_rdo {background-position:-21px -40px;}
.rdo_list li.check label {color:#0f0f0f;font-weight:bold;}
.btn_right {position: absolute;top:-2px;right:0;}
.btn_nonmember {display:block;padding:2px 6px;color:#2964e0;border:1px solid #2964e0;font-family:dotum;}
.btn_nonmember:after {content:"";display:inline-block;width:14px;height:14px;margin-left:4px;vertical-align:-2px;background:url(//img.danawa.com/img/auth/login.png) no-repeat;background-position:-140px 0;}
.btn_nonmember:hover {text-decoration:none;}
.btn_right.on .order_layer {display:block;}
.order_layer {width:238px;top:-63px;left:-10px;}
.noti {color:#919191;font-size:13px;letter-spacing:-.02em;font-weight:bold;}

.id_area,.pw_area {position:relative;margin-bottom:10px;}
.captcha_area {position:relative;margin-bottom:17px;}
.input_wrap {position:relative;height:29px;margin:0 0 10px 0;padding:10px 50px 10px 21px;border:solid 1px #bfbfbf;border-radius: 4px;background:#fff;}
.input_wrap.error {border-color:#db3838;}
.input_wrap.focus {border-color:#2964e0;}
.err_txt {margin-bottom:10px;color:#e53b38;font-size:13px;letter-spacing:-.02em;}
.input_box {display:block;overflow:hidden;}
.lb {font-size:15px;line-height:16px;position:absolute;z-index:8;top:16px;left:21px;color:#b3b3b3;letter-spacing:-.02em;}
.int {font-size:15px;line-height:16px;position:relative;z-index:9;width:100%;height:17px;padding:6px 0;letter-spacing:-.02em;color:#0f0f0f;border:none;background:#fff;-webkit-appearance:none;}
.int:focus::placeholder {font-size:0}
.int::-ms-clear {display: none;}
.int:focus {outline:0}
.btn_del {display:none; position:absolute;top:13px;right:20px;width:23px;height:23px;border:0;background:transparent;cursor:pointer;z-index:10;}
.btn_del.on {display:block;}
.i_del {width:23px;height:23px;background-position:-90px -40px;text-indent:-9999px;}
.btn_pwview {position: absolute;top:15px;right:20px;border:0;font-size:15px;background:#fff;color:#b3b3b3;cursor: pointer;z-index:10;}
.btn_pwview:before {content:"";display:inline-block;width:19px;height:19px;background:url(//img.danawa.com/img/auth/login.png) no-repeat;background-position:-42px -40px;vertical-align:-3px;margin-right:4px;}
.btn_pwview.on {color:#2964e0;}
.btn_pwview.on:before {background-position:-65px -40px;}
.btn_login {display:block;width:100%;height:50px;line-height:49px;background:#2964e0;border:0;border-radius: 4px;color:#fff;text-align:center;font-size:15px;font-weight:bold;cursor: pointer;}

/* menu_area */
.menu_area {margin:17px 0 0 0;}
.login_set {position:relative;clear:both;float: left;}
.login_set:after,.login_set:before {display:block;overflow:hidden;clear:both;content:""}
.chk_w {position:relative;display:block;width:102px;height:17px;float:left;}
.chk_w input {position:absolute;top:0;left:0;width:17px;height:17px;cursor:pointer;}
.chk_w label {position:absolute;top:0;left:0;height:17px;padding-left:22px;cursor:pointer;font-size:13px;line-height:17px;background-position:-160px 0;}
.chk_w.on label {color:#0f0f0f;font-weight:bold;background-position:-160px -20px;}
.login_help {position:relative;float:right;font-size:13px;letter-spacing:-0.02em;}
.help_w {display:inline-block;}
.help_w a {color:#666;}
.help_w + .help_w:before {content:"";display:inline-block;position: relative;margin:0 4px;top:2px;left:0;width:1px;height:12px;background:#e0e0e0;}

/* sns_area */
.sns_area {margin:42px 0 0 0;}
.sns_area .btn_sns {position:relative;display:block;width:100%;height:46px;margin-bottom:8px;text-align:left;line-height:46px;border:1px solid #e0e0e0;border-radius:5px;color:#333;cursor: pointer;font-size:15px;}
.sns_area .btn_sns:hover {text-decoration:none;}
.sns_area .ico {position: absolute;}
.ico.naver {top:13px;left:141px;width:20px;height:19px;background-position:0 -70px;}
.ico.kakao {top:12px;left:140px;width:22px;height:21px;background-position:-30px -70px;}
.ico.facebook {top:9px;left:144px;width:13px;height:26px;background-position:-63px -70px;}
.btn_sns .txt {padding:0 0 0 185px;}

/* notice_area */
.notice_area {margin:26px 0;}
.notice_area * {font-family:dotum;}
.ntc_list li {margin-bottom:6px;padding-left:12px;background: url(//img.danawa.com/img/auth/dot.gif) 0 6px no-repeat;letter-spacing: -0.02em;color:#666;font-size:11px;line-height:16px;}
.ntc_list a {color:#2964e0;}

/* banner_area */
.banner_area {width:430px;height:110px;}

/* top_area */
.top_area {width:100%;height:126px;background:#f7f7f7;font-family: "Malgun Gothic","맑은 고딕";}
.top_area .inner {position:relative;display:table;height:70px;padding:28px 0 28px 106px;}
.top_area .inner:before {content:"";position: absolute;display:inline-block;width:70px;height:70px;background:url(//img.danawa.com/img/auth/login.png) no-repeat;}
.top_area .i_age:before {background-position:0 -100px;}
.top_area .i_adult:before {background-position:-80px -100px;}
.txt_a {display:table-cell;vertical-align:middle;padding-left:90px;}
.a_tit {margin-bottom:6px;font-size:18px;color:#333;letter-spacing:-.05em;}
.a_txt {font-size:13px;color:#666;letter-spacing:-.02em;line-height:18px;}

.non_login {clear:both;margin-top:22px;}
.non_login:after,.non_login:before {display:block;overflow:hidden;clear:both;content:""}
.btn_half {width:212px;float:left;font-weight:normal;}
.btn_half + .btn_half {margin-left:6px;}

/* SNS 회원 자동로그인 적용 */
/* 로그인 */
.header__login .ico,
.icon__auth,
.btn_idsave:before,
.thumb__sns:before,
.search__method em:after,
.condition__dl dd:before,
.terms__checkbox input[type=checkbox] + label:before,
.terms__toggle:after,
.join button:after,
.selectbox button:after,
.selectbox label:after {
	background: url("//img.danawa.com/img/auth/icon_login_220120.png") no-repeat;
	display: inline-block;
}

.body__login {background-color:#f5f5f5; font-family:"Malgun Gothic", "Apple SD Gothic Neo"}
.body__login .login_wrap {width: 600px;height:100%;margin:0 auto;background-color:#fff;}
.body__login .join_wrap {width: 600px;height:auto;margin:0 auto;background-color:#fff;}
.header__login {width:440px;margin:0 auto;padding: 105px 0 0;position: relative;}
.header__login:after {content:""; display:block; clear:both}
.header__login .h_logo {width:128px; height: 28px;}
.header__login .guest_orders {position:absolute;top:auto;bottom: -2px;letter-spacing: -.5px;line-height: 26px;right:0;border-radius: 2px;}
.header__login .guest_orders:hover{text-decoration: none;}
.header__login .btn_nonmember:after{content:none}
.icon__auto--logo {display:block; width: 88px; height: 20px; margin: 32px 0 0 0;}
.guest_orders {position: absolute; top:0;right:0; text-decoration: none; border:1px solid #bfbfbf; line-height:20px; border-radius: 4px; background-color:#fff; padding:0 8px;}
.guest_orders:after {content:""; position:absolute; top:0;left:0;padding:4px 0}
.guest_orders span {font-size: 13px;color:#666;}

.login_info {text-align: center;font-size: 13px;}

.login_help .chk_w {color:#666}
.btn_idsave:before {background-position: -144px -40px;width:18px;height: 20px;}
.btn_idsave.on:before {background-position: -120px -40px;}
.input-wrap--id .btn_del {right:78px}
.content__sns {display: block;margin: 40px auto 50px;text-align:center;}
.content__sns a:hover{text-decoration: none;}
.content__sns a:first-child {margin-left: 42px;}
.link__sns {text-decoration: none;display: inline-block;margin: 0 32px 0 0;}
.thumb__sns {margin: 0 auto 12px;width: 68px;height: 68px;box-sizing: border-box;border:1px solid #E0E0E0;border-radius: 50%;background-color:#fff;position: relative;}
.title__sns {font-size:13px; color:#666;}
.thumb__sns:before {position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); display:block; background-position: 0 -68px; width:22px; height: 22px; content:"";}
.link__sns--kakao .thumb__sns:before {width:26px; height: 26px; background-position: -32px -68px}
.link__sns--facebook .thumb__sns:before {width:14px; height: 28px; background-position: -68px -68px}

.chk_w--check.on:after {position:absolute; display:block; content:"";}
.layer__login {position:absolute;bottom: 37px;z-index: 1;left:0;background-color:#2964E0;text-align:left;line-height:16px;padding: 8px 34px 6px 13px;border-radius: 4px;}
.layer__login:before {content:"";display:block;position:absolute;content: '';width:0;height: 0;border: 6px solid transparent;border-top-color:#2964E0;left: 34px;bottom: -10px;border-width: 10px 6px 0 6px;}
.layer__login span{color:#fff;font-weight:100;letter-spacing: -.8px;font-size: 11px;font-family: "dotum";}
.layer__button--close {position:absolute;top:0;right:0;background:none;border:none;width: 38px;height: 30px;}
.layer__button--close:after {content:""; display:block; position:absolute; top:8px; right:8px; background:url("//img.danawa.com/img/auth/icon_tooltip_close.png") no-repeat; width:16px; height: 16px;}

.content__login {min-height: auto;background-color: #fff;}
.content__login--search {min-height: 540px;}
.content__login .noti {color:#666}
.content__login .login_form {width: 440px;padding-top:45px;padding-bottom: 0;}
.content__login .chk_w{position:absolute; top:0; left:0}
.content__login .rdo_list li {margin-right: 25px;}
.content__login .rdo_list li + li {margin-right: 0}
.content__login .menu_area {margin-bottom:40px}
.content__login .banner_area{width:440px;background-color:#EBECEF;text-align: center;}
.content__login .login_help{margin-top:27px}
.content__login .input-wrap--id {padding-right: 80px;}
.content__login .top_area{padding: 0;background-color:#fff;}
.content__login .top_area .inner:before {top: 30px;left: 80px;}
.content__login .txt_a{padding:0}
.content__login .a_tit {color:#0f0f0f;padding-left: 124px;padding-right: 50px;line-height: 25px;margin-bottom: 20px;letter-spacing: -.5px;}
.content__login .a_txt {letter-spacing: -.4px;line-height: 20px;padding: 0 36px;font-size: 12px;}
.content__login .login_tab {margin-top:8px}
.content__login .login_tab li{border:0;}
.content__login .login_tab a {font-size:16px; border-bottom:1px solid #e0e0e0}
.content__login .login_tab .select a{color:#2964E0; border-bottom:2px solid #2964E0}
.content__login .id_area .btn_del {right: 83px;}
.content__login .input_wrap {padding-right:80px}
.content__login .captcha_area {margin-bottom:10px}
.content__login .captcha_area img{width:100%}
.content__login .select_area .noti {color:#666;letter-spacing: -.7px;}
.content__login .top_area .inner {padding: 42px 51px 25px 52px;border-bottom: 1px solid #f2f2f2;}

.noti_area {padding:36px 0;}
.content__login--adult .input_wrap,
.content__login--age .input_wrap{margin-bottom:0}
.content__sns--adult,
.content__sns--age {margin-bottom:16px}

.content__login--adult .content__sns {margin:40px auto 0; padding-bottom:50px}

.content__login--age .a_tit {padding-right: 30px;}
.content__login--age .noti_area {padding:20px 0 33px;}
.content__login--age .content__sns {margin-bottom: 44px;}
.content__login--age .btn_half,
.content__login--adult .btn_half {width:215px;background-color:#fff;color:#2964E0;border:1px solid #2964E0;font-weight: bold;}

.footer__login {border-top:0;min-height: 60px;padding: 96px 0 0;background-color: #fff;}
.footer__login address,.footer__join address {font-size: 9px;}
.footer__login--age {padding: 86px 0 0;min-height: 128px;}
.footer__login--adult {padding-bottom:0;min-height: 200px;}
.tit_login_sns{margin-top:24px}

/* 아이디/비밀번호 */
.search__wrap {width:440px;padding-top: 38px; margin:0 auto; box-sizing: border-box;}
.search__tab {font-size: 0;margin-bottom: 32px;}
.search__tab-button {display:inline-block; width:50%; text-align: center; height: 44px;box-sizing: border-box; border-bottom:1px solid #E0E0E0;cursor: pointer;}
.search__tab-button h2 {font-size:18px; color:#B3B3B3; font-weight: normal;}
.search__tab-button--select {height:43px;border-bottom:2px solid #2964E0}
.search__tab-button--select h2 {color:#2964E0; font-weight:bold}

.notice-text {margin: 0 0 32px;}
.notice-text p {font-size:15px; color:#0f0f0f; letter-spacing: -.8px;}

.search__h3 {font-size:16px; color:#0f0f0f; margin-bottom:8px;}

.search__form {position:relative}
.search__form label{position:absolute;top:14px;left:16px; font-size:15px; color:#b2b2b2}
.search__form input {display:block;width:100%;box-sizing: border-box;font-size:15px;height:46px;line-height: 46px;color:#0f0f0f;padding-left:16px;border:1px solid #bfbfbf;border-radius: 4px;outline: 0;}
.search__form--error input{border-color:#DB3838}
.search__notice {display:none;margin:6px 0 13px;font-size:13px; color:#DB3838}
.search__form--error .search__notice {display:block;}
.search__button {margin-top:8px;display:block;text-align:center;line-height: 50px;width:100%;background-color:#2964E0;border-radius: 4px;cursor: pointer;}
.search__button strong {color:#fff; font-size:16px}

.search__method {margin:40px 0 50px;}
.search__method em{font-style: normal; color:#666; font-size:13px; letter-spacing: -.8px;}
.search__method em:after {background-position:-201px -1px; display:inline-block; width:10px; height:6px; content:""; vertical-align: top; margin: 5px 0 0 4px;}
.search__method--select em:after {background-position: -217px -1px}
.search__method p {margin:16px 0 10px;}
.search-option__wrap > p {color:#0f0f0f; font-size:13px}
.search__confirm {display:none; margin-top:6px; font-size:13px; color:#2964E0}
.search__form--confirm .search__confirm {display:block;}

.search-option__wrap {display:none;}
.search__method--select .search-option__wrap {display:block;}

.search-option__link {display:block; width:100%; border:1px solid #2964E0; border-radius: 4px; line-height: 50px; text-align:center; margin-bottom:8px;cursor: pointer;}
.search-option__link:hover {text-decoration:none;}
.search-option__link strong {color:#2964E0; font-size:16px}

p.name-change__text {font-size:15px; color:#666; letter-spacing: -.9px}
.name-change__text a {font-weight: bold; color:#2964E0; text-decoration: underline;}

.search__notice--password {margin:32px 0 8px;font-size:15px;color:#0f0f0f;letter-spacing: -1px;}
.search__notice--password strong {color: #2964E0;}
.search__form--password {margin-bottom:50px}
.search__form--password .search__button {background-color:#fff; border:1px solid #2964e0;}
.search__form--password .search__button strong{color:#2964E0}

.search__send {font-size:16px; color:#333; text-align: center; padding:46px 0; line-height: 26px;}
.search__send p strong{color: #2964E0;}
.search__send .search__button {margin-top:78px}

.search__subtitle {font-size:16px; color:#0f0f0f; display:block; margin-bottom:10px}

/* 비밀번호 재설정 */
.content__login--search .login_form--reset-password {padding-top:0}
.login_form--reset-password .select_area{padding:0;margin-bottom: 8px;}
.login_form--reset-password .input_wrap{padding: 8px 50px 8px 21px;}
.login_form--reset-password .pw_area{margin-bottom:10px}
.login_form--reset-password .id_area .btn_del,
.login_form--reset-password .pw_area .btn_del {right: 20px;}
.reset__title{font-size:16px; color:#0f0f0f}

.condition__dl{background-color:#F6F8FF;padding:30px;margin-top:45px}
.condition__dl dt{color:#0f0f0f;font-size:16px;font-weight: bold; margin-bottom:13px}
.condition__dl dd{position: relative;color:#333;font-size:15px;line-height: 27px;padding-left:20px;}
.condition__dl dd:before{content:"";position:absolute;top: 8px;left: 5px;width: 12px;height: 12px;background-position: -83px -21px;background-size:142px auto;}
.condition__dl .checked{color:#2964E0}
.condition__dl .checked:before{background-position: -97px -20px;}

/* 회원가입  .content__login--join */
.s_tit--join {margin-left:8px}
.content__login--join .search__tab-button {color:#B3B3B3}
.content__login--join .search__tab-button--select {color:#2964E0}
.content__login--join .search__tab-button h3{font-size:19px}
.content__login--join .search__wrap{padding-top:32px}
.content__login--join .search__tab{margin-bottom:8px}

/* 회원가입  .content__login--join */
.content__login--business{padding-bottom: 70px;}
.content__login--business .terms__title{margin-top:18px;}
/* terms__checkbox */
.terms__notice {background: #F6F8FF 0% 0% no-repeat padding-box;
text-align:center;height:60px; line-height: 60px;letter-spacing: -.9px; margin-bottom:19px}
.terms__notice p{color:#2964E0;font-size:15px}

.terms__title {margin-bottom:14px}

/* 모듈 */
.terms__checkbox {position: relative; margin-bottom:8px}
.terms__checkbox input[type=checkbox]{position: absolute;left: 2px;bottom: 3px;z-index: 10;background:none;}
.terms__checkbox input[type=checkbox] + label{
	color:#0f0f0f;
	font-size:16px;
	letter-spacing: -.96px;
	display:inline-block;
	cursor: pointer;
	padding-left:25px;
	z-index: 5
}
.terms__checkbox input[type=checkbox] + label:before{
	z-index:5;
	content: "";
	display: inline-block;
	width: 17px;
	height: 17px;
	margin-right: 10px;
	position: absolute;
	left: 0;
	bottom: 0;
	background-color:#fff;
	background-position: -224px -40px;
}
.terms__checkbox input[type=checkbox]:checked + label{
	font-weight: bold;
}
.terms__checkbox input[type=checkbox]:checked + label:before{
	background-position: -244px -40px;
}
.terms__checkbox input[type=checkbox] {border:0 none; z-index:0}
.terms__checkbox input[type=checkbox]:checked {border:0 none; z-index:0}
.terms__subtitle{margin-bottom: 9px;position: relative;}
.terms__subtitle .terms__checkbox input[type=checkbox] + label {color:#666;font-size:13px}
.terms__subtitle .terms__checkbox input[type=checkbox] + label strong {color:#DB3838;font-weight: normal;}
.terms__subtitle .terms__checkbox input[type=checkbox] + label span {color:#2964E0;font-weight: normal;}
.terms__subtitle .terms__checkbox input[type=checkbox]:checked + label strong,
.terms__subtitle .terms__checkbox input[type=checkbox]:checked + label span{
	font-weight: bold;
}
.terms__toggle{position: absolute;right:0;top:0;color: #919191;font-size:13px; letter-spacing: -.91px;}
.terms__toggle:after {content:"";display:inline-block;vertical-align:top; margin: 6px 0 0 4px;background-position:-201px -1px; width:10px; height:6px;transform:rotate(180deg);}
.terms__toggle--hide:after {transform:rotate(0);}
.terms__toggle--hide+div {display:none}
.terms__desc textarea {width:100%; height:160px;padding:12px; font-size:12px; color:#666; box-sizing: border-box; border:0; background-color:#f9f9f9;}
.terms__desc textarea{outline:0 none;}
.terms__subtitle.event{margin-top: 12px;margin-bottom: 20px;}

.event .terms__desc {padding: 14px 12px 3px;background-color:#f9f9f9;}
.event .terms__desc p{font-size:12px; color:#333}
.event .terms__desc dl{border-top:1px solid #e0e0e0;margin-top: 8px;padding-top: 14px;}
.event .terms__desc dl:after{content:""; display:block; clear:both}
.event .terms__desc dt{font-size:12px;color:#333;float:left;width:14%;font-weight: bold;  margin-bottom:8px}
.event .terms__desc dd{font-size:12px;color:#666;float:right;width: 86%; margin-bottom:8px}
.event .terms__desc dd span{font-size:15px;font-weight:bold;text-decoration:underline}
.join__wrap {border-top:1px solid #f2f2f2;margin-top: 20px;}
.join {position: relative;padding-top: 30px;margin-top: 16px;}
.join label{position:absolute;top:0;left:0;font-size:16px;color:#0f0f0f;letter-spacing: -.96px;}
.join input{border:1px solid #bfbfbf; border-radius: 4px; font-size:15px;color:#333; display:block; width:100%;padding-left:16px; height:48px; line-height: 48px;box-sizing: border-box;}
.join input::placeholder {color:#b2b2b2}
.join input:focus{outline: none;border-color:#2070eb}
.join--error input{border-color:#e53b38}
.join p {margin-top:10px;font-size:13px; color:#333}
.join .btn_del {top:auto;bottom:13px}
.join + .txt_error_area {margin-top:5px}
.button__join {display:block; width:100%; height:52px; line-height: 52px; font-size:17px; font-weight:bold; background-color:#2964E0; color:#fff;text-align:center; cursor: pointer; margin-top:24px;border-radius:4px}
.button__join:disabled {background-color:#E9E9E9;color:#b2b2b2}
.footer__join {width:600px;background-color:#fff;margin:0 auto;border-top:0;padding: 92px 0;}
.join__sns{padding:20px 0 5px;}
.join__sns strong{font-size:16px; color:#0f0f0f; display:block; text-align:center; margin:5px 0;}
.join__sns p{text-align:center;font-size:15px; color:#333; line-height:22px}
.content__login--join-sns .search__wrap{padding-top:52px}
.join--nickname {margin-top:22px;padding-top:18px}
.join--nickname .nick__notice {margin-bottom:8px; letter-spacing: -.9px;font-size:15px}
.join_wrap.join_wrap--finish {height:100%}
.join_wrap.join_wrap--sns {height:calc(100% - 200px)}
.join__finish {width:440px; margin:115px auto;}
.join__finish h3{font-size:18px; line-height:26px; color:#0f0f0f; text-align:center; letter-spacing: -.72px;}
.join__finish p{margin:12px 0 40px;font-size:15px; color:#333; text-align:center; letter-spacing: -.6px}
.col_4_txt{font-size:15px;font-weight:bold;text-decoration:underline;}
.join--phone {padding-left: 120px;position: relative;}
.selectbox label{position: relative;}
.selectbox label:after, .selectbox button:after{content:"";position: absolute;right: -95px;top: 7px;display:block;width:12px;height:10px;background-position: -242px 0;}
.selectbox button:after {right: 17px;top: 18px;}
.selectbox button:focus {outline: none;border-color:#2964E0}
.selectbox {position:absolute;left:0;bottom:0;width: 112px;height:48px;}
.selectbox select, .selectbox button {width:100%;height:100%;border:1px solid #bfbfbf;border-radius: 4px;font-size:15px;color:#666;padding: 10px 16px;-webkit-appearance: none;-moz-appearance: none;-o-appearance: none;appearance: none;}
.selectbox select::-ms-expand {
    display: none;
}
.selectbox__layer {position: absolute;top: 77px;left:0;width: 112px;box-sizing: border-box;border:1px solid #bfbfbf;border-radius: 4px;}
.selectbox__layer button {display:block; width:100%; border-radius: 4px; height:34px; font-size:15px; color:#666;padding:0 15px; cursor: pointer;}
.selectbox__layer button:hover {background-color:#F6F8FF}

/* 개인정보 수집 시스템 */
.terms__subtitle .terms__checkbox input[type=checkbox] + label .require{color:#2070eb;letter-spacing:-0.6px}
.priv_r_tbl .member_info_tbl td{text-align:center;padding:9px 8px}
.terms__txt{margin:6px 0 20px;color:#333;position:relative;padding-left:15px}
.terms__txt:before{content:'※';display:inline-block;position:absolute;top:0;left:0}
.member__wrap{border-top:1px solid #f2f2f2}
.member__wrap .member_txt{padding-top:26px;font-size:12px;color:#333}
.member__wrap .info_txt{padding-top:10px;font-size:12px;color:#333}
.member__wrap .join{padding-top:20px}
.member__wrap .join input{margin-top:10px}
.member__wrap .join .addr_first_del{top:100px}
.join--disable input{background:#f8f8f8;border-color:#e0e0e0;color:#b2b2b2}
.join .addr_num_del{top:42px;right:159px}
.join .address_wrap{margin-bottom:10px;overflow:hidden}
.join .addr_num{width:300px;float:left}
.join .addr_num_btn{float:left;margin-left:10px;display:block;font-weight:bold;font-size:14px;width:130px;height:48px;line-height:47px;box-sizing:border-box;text-align:center;border-radius:4px;border:1px solid #bfbfbf;cursor:pointer;margin-top:10px}
.join_file{margin-top:16px;position:relative}
.join_file .file_title{font-size:16px;color:#0f0f0f;margin-bottom:8px}
.join_file .file_title span{font-size:13px;color:#666}
.join_flie .file_area{display:table}
.join_file .file_box{display:table-cell;vertical-align:top}
.join_file .file_box .imgfile{display:block;width:100px;height:100px;border:1px solid #bfbfbf;border-radius:4px;letter-spacing:-0.4px;text-align:center;cursor:pointer;box-sizing:border-box}
.join_file .file_box .imgfile:before{content:"";background:url("//img.danawa.com/img/auth/icon_login_220120.png") no-repeat;margin:26px 33px 3px;display:inline-block;background-position:-184px -70px;width:32px;height:26px;}
.join_file .file_box input[type="file"]{position:absolute;clip:rect(0 0 0 0);width:1px;height:1px;margin:-1px;overflow:hidden}
.join_file .img_list{display:table-cell}
.join_file .img_list .img_item{float:left;padding-left:11px;width:100px;height:120px;padding-bottom:14px}
.join_file .img_list .img_item .attach_img{border:1px solid #bfbfbf;width:100px;height:100px;position:relative;box-sizing:border-box}
.join_file .img_list .img_item .attach_img img{width:98px;height:98px}
.join_file .img_list .img_item .btn_attachdel{text-indent:-9999px;position:absolute;top:0;right:0;background:url("//img.danawa.com/img/auth/icon_login_220120.png") no-repeat;background-position:-92px -70px;width:20px;height:20px;cursor:pointer}
.join_file .img_list .img_item .attach_txt{margin-top:4px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden}
.join--error .file_box .imgfile{border-color:#e53b38}
.join_file + .txt_error_area{margin-top:5px}
.button_member{display:block;width:100%;height:52px;line-height:52px;font-size:17px;font-weight:bold;background-color:#2070eb;color:#fff;text-align:center;cursor:pointer;margin-top:26px;border-radius:4px}
.button_member:disabled{background-color:#E9E9E9;color:#b2b2b2}

/* 휴면계정 및 기타페이지 */
.header__dormant{width:440px;margin:0 auto;padding:105px 0 0;position:relative}
.header__dormant:after{content:"";display:block;clear:both}
.header__dormant .h_logo{background:url("//img.danawa.com/img/auth/icon_login_220120.png") no-repeat}
.header__dormant .s_tit--join{margin-left:20px}
.btn_certi{display:block;border-radius:4px;background:#2070eb;color:#fff;font-size:17px;font-weight:bold;width:100%;height:52px;line-height:52px;text-align:center;box-sizing:border-box}
.btn_certi + .btn_certi{margin-top:16px}
.btn_certi:hover{text-decoration:none}
.dormant_wrap{width:440px;margin:72px auto 180px}
.dormant_wrap .dormant_title{font-weight:bold;font-size:18px;color:#2964e0;margin-bottom:15px;letter-spacing:-0.05em;text-align:center}
.dormant_wrap .dormant_txt{font-size:15px;color:#333;line-height:23px;text-align:center}
.dormant_wrap .btn_wrap{margin-top:64px}
.dormant_wrap .btn_wrap .withdraw_btn{background:#fff;color:#666;border:1px solid #bfbfbf}
.dormant_wrap .dormant_done_txt{font-size:15px;color:#333;line-height:23px;text-align:center;letter-spacing:-.6px;padding-bottom:56px}
.dormant_wrap .button__join:hover{text-decoration:none}
.account_wrap{width:440px;margin:0 auto}
.account_wrap .account_top{margin-top:72px;border-bottom:1px solid #f2f2f2;padding-bottom:20px}
.account_wrap .account_title{font-weight:bold;font-size:18px;color:#0f0f0f;margin-bottom:15px;letter-spacing:-0.05em;text-align:center}
.account_wrap .point{color:#2070eb}
.account_wrap .account_date .date{font-size:15px;font-weight:bold;color:#2070eb;text-align:center;margin-bottom:4px}
.account_wrap .account_date .txt{font-size:13px;color:#666;text-align:center;letter-spacing:-.52px}
.account_wrap .account_search_area{margin-top:20px}
.account_wrap .account_search_area p{font-size:15px;color:#333;letter-spacing:-0.3px;text-align:center}
.account_wrap .account_search_area .search_info{line-height:24px}
.account_wrap .search_container{margin-top:20px}
.account_wrap .account_search{margin-bottom:12px}
.account_wrap .account_search input{border:1px solid #bfbfbf;border-radius:4px;font-size:15px;color:#333;display:block;width:100%;padding-left:16px;height:48px;line-height:48px;box-sizing:border-box}
.account_wrap .account_search input::placeholder{color:#b2b2b2}
.account_wrap .account_search input:focus{outline:none;border-color:#2070eb}
.account_wrap .account_search_area .search_help{margin-top:12px;font-size:13px;color:#666;letter-spacing:-.78px}
.account_wrap .account_search_area .search_help .certi_check{color:#2964e0;font-weight:bold;text-decoration:none;margin-left:6px}
.account_wrap .account_search_area .search_help .certi_check:after{content:"";background:url("//img.danawa.com/img/auth/icon_login_210407.png") no-repeat;display:inline-block;width:5px;height:9px;background-position:-230px 0;margin-left:5px}
.account_wrap .account_search_area .search_help .certi_check:hover{text-decoration:underline}
.account_wrap .account_btm{margin-top:54px}
.account_wrap .account_btm .support_box{padding:20px 18px;background:#fafafa;margin-top:10px}
.account_wrap .account_btm .support_box .title{font-size:13px;color:#333;font-weight:bold;letter-spacing:-.52px;text-align:center;margin-bottom:2px}
.account_wrap .account_btm .support_box .list_txt:before{content:"";display:inline-block;width:4px;height:4px;background:#666;border-radius:5px;position:absolute;top:7px;left:0}
.account_wrap .account_btm .support_box .list_txt{font-size:13px;color:#666;letter-spacing:-.78px;line-height:20px;position:relative;margin-top:8px;padding-left:8px}
.account_wrap .account_btm .support_box .txt{font-size:13px;color:#666;letter-spacing:-.78px;line-height:20px;margin-top:8px}
.account_wrap .account_btm .support_box .help_mail{font-size:13px;color:#666;margin-top:11px;text-align:center}
.account_wrap .snspause_cont{border-bottom:1px solid #f2f2f2;margin-top:104px;padding-bottom:20px}
.account_wrap .snspause_cont .txt{font-size:18px;line-height:24px;letter-spacing:-0.2px;color:#0f0f0f;font-weight:bold;text-align:center}
.account_wrap .snspause_cont .date{font-size:15px;line-height:20px;letter-spacing:-0.2px;color:#2070eb;font-weight:bold;text-align:center;margin-top:15px}
.account_wrap .snspause_info{margin-top:20px}
.account_wrap .snspause_info .info_txt{font-size:15px;line-height:24px;letter-spacing:-0.2px;color:#333;text-align:center;margin-bottom:48px}
.account_wrap .snspause_subinfo{margin-top:54px}
.account_wrap .snspause_subinfo .subinfo_box{background:#fafafa;padding:20px 0 20px 18px}
.account_wrap .snspause_subinfo .subinfo_box .title{font-size:13px;color:#333;font-weight:bold;letter-spacing:-0.2px;text-align:center;margin-bottom:10px}
.account_wrap .snspause_subinfo .subinfo_box .title:before{content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_220120.png") no-repeat;background-position:-226px -12px;width:5px;height:12px;margin-right:4px;vertical-align:-1px}
.account_wrap .snspause_subinfo .subinfo_box .list_txt{font-size:13px;color:#666;line-height:17px;position:relative;padding-left:8px}
.account_wrap .snspause_subinfo .subinfo_box .list_txt + .list_txt{margin-top:8px}
.account_wrap .snspause_subinfo .subinfo_box .list_txt:before{content:"";display:inline-block;width:4px;height:4px;background:#666;border-radius:5px;position:absolute;top:7px;left:0}
.certi_box{width:440px;margin:115px auto 208px}
.certi_box h3{font-size:18px;line-height:26px;color:#0f0f0f;text-align:center;letter-spacing:-.72px}
.certi_box p{margin:12px 0 40px;font-size:15px;color:#333;text-align:center;letter-spacing:-.6px}
.mail_ad_wrap{width:440px;margin:115px auto 277px}
.mail_ad_wrap .title{font-size:18px;line-height:26px;color:#0f0f0f;text-align:center;letter-spacing:-.72px;padding-bottom:16px}
.mail_ad_wrap .noti_date{margin-bottom:22px}
.mail_ad_wrap .noti_date p{font-weight:bold;text-align:center;font-size:18px;color:#0f0f0f;letter-spacing:-.72px;line-height:27px}
.mail_ad_wrap .noti_date .date{color:#2964e0}
.mail_ad_wrap .button__join:hover{text-decoration:none}
.mail_ad_wrap .btn_wrap{margin-top:24px}
.mail_ad_wrap .btn_submit{display:inline-block;width:214px;height:52px;line-height:52px;border-radius:4px;text-align:center;font-size:17px;font-weight:bold;box-sizing:border-box}
.mail_ad_wrap .btn_submit:hover{text-decoration:none}
.mail_ad_wrap .accept{background:#2964e0;color:#fff}
.mail_ad_wrap .cancel{background:#fff;color:#666;border:1px solid #bfbfbf;margin-left:6px}
.box_refund{width:440px;margin:68px auto 0}
.box_refund .box_text{text-align:center}
.box_refund .box_text .text_title{font-size:18px;line-height:24px;letter-spacing:-0.8px;color:#0f0f0f}
.box_refund .box_text .text{font-size:14px;line-height:18px;letter-spacing:-0.2px;color:#0f0f0f;margin-top:8px}
.box_refund .box_text .text_sub{font-size:12px;line-height:18px;letter-spacing:-0.2px;color:#777;margin-top:2px}
.box_refund .box_agree{border:1px solid #bfbfbf;border-radius:2px;margin-top:24px}
.box_refund .box_agree .box_agree_header{font-size:14px;line-height:18px;letter-spacing:-0.4px;color:#333;padding:13px 10px;border-bottom:1px solid #c4c4c4}
.box_refund .box_agree .box_agree_header .text_required{color:#db3838}
.box_refund .box_agree .box_agree_cont{padding:10px;background:#f8f8f8}
.box_refund .box_agree .box_agree_cont .agree_info{display:table;width:100%;background:#fff;border:1px solid #e6e6e6}
.box_refund .box_agree .box_agree_cont .agree_info .cont{display:table-cell;width:33.33%;padding:8px;box-sizing:border-box}
.box_refund .box_agree .box_agree_cont .agree_info .cont + .cont{border-left:1px solid #e6e6e6}
.box_refund .box_agree .box_agree_cont .agree_info .cont .text_title{font-size:13px;line-height:20px;letter-spacing:-0.4px;color:#333;font-weight:bold}
.box_refund .box_agree .box_agree_cont .agree_info .cont .text{font-size:13px;line-height:20px;letter-spacing:-0.4px;color:#555}
.box_refund .box_agree .box_agree_cont .agree_info .cont .text_point{font-weight:bold;text-decoration:underline}
.box_refund .box_agree .box_agree_cont .text_required{font-size:13px;line-height:20px;color:#e53b38;margin-top:10px}
.box_refund .box_confirm{padding:15px 0 42px}
.box_refund .box_confirm .checkbox{position:relative}
.box_refund .box_confirm .checkbox input{position:absolute;clip:rect(0 0 0 0);width:1px;height:1px;margin:-1px;overflow:hidden}
.box_refund .box_confirm .checkbox label{display:block;position:absolute;top:0;right:0;bottom:0;left:0;font-size:0;box-sizing:border-box;z-index:1}
.box_refund .box_confirm .checkbox .checkbox_check{position:absolute;top:50%;left:0;width:20px;transform:translateY(-50%)}
.box_refund .box_confirm .checkbox .checkbox_check .ico_check{display:block;width:20px;height:20px;background:url(//img.danawa.com/img/auth/icon_login_220705.png) no-repeat;background-position:-224px -70px}
.box_refund .box_confirm .checkbox .checkbox_wrap{font-size:13px;line-height:20px;letter-spacing:-0.2px;color:#0f0f0f;padding-left:26px}
.box_refund .box_confirm .checkbox input:focus + label + .checkbox_check .ico_check{outline:1px dotted;outline:-webkit-focus-ring-color auto 5px}
.box_refund .box_confirm .checkbox input:checked + label + .checkbox_check .ico_check{background-position:-248px -70px}
.box_refund .box_confirm .checkbox input:checked + label + .checkbox_check + .checkbox_wrap{color:#333;font-weight:bold}

/* 회원정보수정 */
.body__login .modify_wrap{width:800px;margin:0 auto;background:#fff}
.footer__modify{width:800px;background-color:#fff;margin:0 auto;border-top:0;padding:92px 0}
.footer__modify address{font-size:9px}
.header__modify{width:631px;margin:0 auto;padding:105px 0 0;position:relative}
.header__modify:after{content:"";display:block;clear:both}
.account_modify_wrap{width:640px;margin:59px auto 96px}
.account_modify_info{margin-bottom:26px}
.account_modify_info_btm{margin-top:48px}
.account_modify_info .title{font-size:20px;color:#000;font-weight:bold;letter-spacing:-1.2px}
.account_modify_info .txt_box{margin-top:16px}
.account_modify_info .txt{font-size:12px;letter-spacing:-0.24px;line-height:21px}
.account_modify_area{border-top:1px solid #e0e0e0;border-bottom:1px solid #e0e0e0;width:640px}
.account_modify_area .modify_row{display:table;table-layout:fixed;width:100%}
.account_modify_area .modify_row + .modify_row{border-top:1px solid #f2f2f2}
.account_modify_area .modify_title{font-size:15px;letter-spacing:-0.9px;color:#0f0f0f;font-weight:bold;width:122px;display:table-cell;padding:13px 0 13px 10px;vertical-align:top}
.account_modify_area .modify_exec{line-height:44px}
.account_modify_area .info{font-size:14px;letter-spacing:-0.28px;color:#333;float:left}
.account_modify_area .modify_cont{padding:13px 0;display:table-cell}
.account_modify_area .modify_cont:after{content:"";display:block;clear:both}
.account_modify_area .modify_input_area:after{content:"";display:block;clear:both}
.account_modify_area .input_txt{display:block;font-size:14px;float:left;width:340px;height:44px;line-height:44px;border-radius:4px;border:1px solid #bfbfbf;color:#333;padding-left:16px;box-sizing:border-box}
.account_modify_area .input_txt:focus{outline:none;border-color:#2964e0}
.account_modify_area .btn_email_chk{display:block;width:162px;height:44px;float:left;line-height:44px;font-size:14px;color:#666;margin-left:6px;letter-spacing:-0.56px;font-weight:bold;box-sizing:border-box;text-align:center;border:1px solid #bfbfbf;text-decoration:none;border-radius:4px}
.account_modify_area .modify_txt_box{margin-top:10px}
.account_modify_area .modify_txt{font-size:12px;letter-spacing:-0.24px;line-height:21px}
.account_modify_area .btn_rename{float:right;font-size:13px;color:#919191;letter-spacing:-0.26px}
.account_modify_area .inpt_pw_area{display:table;table-layout:fixed}
.account_modify_area .inpt_pw_area + .inpt_pw_area{margin-top:6px}
.account_modify_area .inpt_pw_area .change_pw_txt{font-size:14px;letter-spacing:-0.28px;color:#333;display:table-cell;width:87px;padding-right:13px}
.account_modify_area .input_pw{display:table-cell;width:240px;height:32px;line-height:32px;border-radius:4px;border:1px solid #bfbfbf;box-sizing:border-box;padding-left:10px;font-size:13px;color:#666}
.account_modify_area .input_pw:focus{outline:none;border-color:#2964e0}
.account_modify_area .btn_area{margin-top:10px;margin-left:100px}
.account_modify_area .btn_area:after{content:"";display:block;clear:both}
.account_modify_area .btn_area .btn_pw{display:block;font-size:13px;letter-spacing:-0.52px;text-align:center;font-weight:bold;width:72px;height:32px;line-height:32px;float:left;border-radius:4px;box-sizing:border-box;border:1px solid #bfbfbf;cursor:pointer}
.account_modify_area .btn_area .cancle{font-weight:normal;margin-left:6px}
.account_modify_area .modify_error{border-color:#db3838}
.account_modify_area .modify_err_txt{font-size:12px;color:#db3838;letter-spacing:-0.36px;margin-top:4px}
.account_modify_area .btn_rename:after{content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;width:5px;height:9px;background-position:-184px -12px;margin-left:5px;vertical-align:1px}
.account_modify_area .btn_change_pw{font-size:14px;color:#333;letter-spacing:-0.56px}
.account_modify_area .btn_change_pw:after{content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;width:9px;height:5px;background-position:-192px -12px;margin-left:5px;vertical-align:3px}
.account_modify_area .modify_checkbox{position:relative}
.account_modify_area input[type=checkbox]{position:absolute;left:2px;bottom:3px;z-index:0;background:none;border: 0 none}
.account_modify_area input[type=checkbox] + label:before{z-index:5;content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;width:17px;height:17px;margin-right:10px;position:absolute;left:0;bottom:0;background-color:#fff;background-position:-160px 0;}
.account_modify_area input[type=checkbox]:checked + label:before{background-position:-160px -20px;}
.account_modify_area input[type=checkbox]:checked + label{font-weight:bold;color:#0f0f0f}
.account_modify_area .modify_checkbox label{padding-left:25px;font-size:14px;letter-spacing:-0.84px;cursor:pointer}
.account_modify_area .myicon_left{width:48px;height:48px;border-radius:50%;overflow:hidden;float:left;margin-top:-2px}
.account_modify_area .myicon_left img{width:100%;height:100%}
.account_modify_area .myicon_right{float:left;margin-left:12px}
.account_modify_area .myicon_right:after{content:"";display:block;clear:both}
.account_modify_area .myicon_right input[type=file]{position:absolute;clip:rect(0 0 0 0);width:1px;height:1px;margin:-1px;overflow:hidden}
.account_modify_area .myicon_file_area{float:left}
.account_modify_area .myicon_file_area:after{content:"";display:block;clear:both}
.account_modify_area .myicon_file{float:left}
.account_modify_area .myicon_txt{display:block;font-size:14px;font-weight:bold;width:150px;height:42px;line-height:42px;border-radius:4px;border:1px solid #bfbfbf;letter-spacing:-0.84px;text-align:center;cursor:pointer}
.account_modify_area .btn_del_myicon{display:block;font-size:14px;letter-spacing:-0.56px;float:left;width:64px;height:44px;line-height:43px;margin:0 10px 0 6px;border-radius:4px;border:1px solid #bfbfbf;text-align:center;cursor:pointer}
.account_modify_area .myicon_info{float:left;margin-top:2px}
.account_modify_area .myicon_info .modify_txt{line-height:20px}
.account_modify_wrap .bundle_btn{margin-top:14px}
.account_modify_wrap .bundle_btn:after{content:"";display:block;clear:both}
.account_modify_wrap .convert_btn{float:left;font-size:13px;color:#666;letter-spacing:-0.26px}
.account_modify_wrap .convert_btn:after{content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;width:5px;height:9px;background-position:-184px -12px;margin-left:5px;vertical-align:1px}
.account_modify_wrap .leave_btn{float:right;font-size:13px;color:#666;letter-spacing:-0.26px}
.account_modify_wrap .btn_wrap{width:440px;margin:43px auto 0}
.account_modify_wrap .btn_submit{display:block;float:left;width:216px;height:52px;line-height:52px;text-align:center;box-sizing:border-box;font-weight:bold;font-size:16px;border-radius:4px;text-decoration:none}
.account_modify_wrap .cancel{background:#fff;border:1px solid #bfbfbf;color:#333}
.account_modify_wrap .accept{background:#2964e0;border:1px solid #2964e0;color:#fff;margin-left:8px}
.convert_wrap{width:640px;margin:59px auto 4px}
.convert_info{margin-bottom:26px}
.convert_info .title{font-size:20px;color:#000;font-weight:bold;letter-spacing:-1.2px}
.convert_info .txt_box{margin-top:4px}
.convert_info .txt{font-size:12px;letter-spacing:-0.24px;line-height:19px;margin-top:12px;position:relative;padding-left:9px}
.convert_info .txt:before{content:"-";display:inline-block;position:absolute;top:0;left:0;}
.convert_area{border-top:1px solid #e0e0e0;border-bottom:1px solid #e0e0e0;width:640px}
.convert_area .modify_row{display:table;table-layout:fixed;width:100%}
.convert_area .modify_row + .modify_row{border-top:1px solid #f2f2f2}
.convert_area .modify_title{font-size:15px;letter-spacing:-0.9px;color:#0f0f0f;font-weight:bold;width:122px;display:table-cell;padding:13px 0 13px 10px;vertical-align:top}
.convert_area .modify_exec{line-height:44px}
.convert_area .info{font-size:14px;letter-spacing:-0.28px;color:#333;float:left}
.convert_area .modify_cont{padding:13px 0;display:table-cell}
.convert_area .modify_cont:after{content:"";display:block;clear:both}
.convert_area .modify_input_area:after{content:"";display:block;clear:both}
.convert_area .input_txt{display:block;font-size:14px;float:left;width:340px;height:44px;line-height:44px;border-radius:4px;border:1px solid #bfbfbf;color:#333;padding-left:16px;box-sizing:border-box}
.convert_area .input_txt:focus{outline:none;border-color:#2964e0}
.convert_area .input_num_wrap{display:inline-block;vertical-align:middle}
.convert_area .input_num{display:block;font-size:14px;width:104px;height:44px;line-height:44px;border-radius:4px;border:1px solid #bfbfbf;color:#333;padding-left:16px;box-sizing:border-box}
.convert_area .input_num:focus{outline:none;border-color:#2964e0}
.convert_area .modify_txt_box{margin-top:8px}
.convert_area .modify_txt{font-size:12px;letter-spacing:-0.24px;line-height:21px;position:relative;padding-left:9px}
.convert_area .modify_txt:before{content:"*";display:inline-block;position:absolute;top:0;left:0}
.convert_area .modify_radio{display:inline-block;vertical-align:middle;margin-left:16px}
.convert_area .radio_box{position:relative;display:inline-block}
.convert_area .radio_box + .radio_box{margin-left:16px}
.convert_area input[type=radio]{position:absolute;left:2px;bottom:3px;z-index:0;background:none;border: 0 none}
.convert_area input[type=radio] + label:before{z-index:5;content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;width:17px;height:17px;margin-right:10px;position:absolute;left:0;bottom:0;background-color:#fff;background-position:-160px 0;}
.convert_area input[type=radio]:checked + label:before{background-position:-160px -20px;}
.convert_area input[type=radio]:checked + label{font-weight:bold;color:#0f0f0f}
.convert_area .radio_box label{padding-left:25px;font-size:14px;letter-spacing:-0.84px;cursor:pointer}
.convert_wrap .btn_wrap{width:216px;margin:39px auto 0}
.convert_wrap .btn_convert{display:block;font-size:16px;color:#fff;font-weight:bold;width:216px;height:52px;line-height:52px;text-align:center;border-radius:4px;background:#2964e0;box-sizing:border-box;text-decoration:none}
.leave_account_wrap{width:640px;margin:59px auto 0}
.leave_account_wrap .title{font-size:20px;color:#000;letter-spacing:-1.2px}
.leave_account_wrap .leave_info_top{padding-bottom:33px;border-bottom:1px solid #e0e0e0}
.leave_account_wrap .leave_info_top .notice_box{margin-top:16px}
.leave_account_wrap .leave_info_top .txt{font-size:12px;letter-spacing:-0.24px;line-height:19px}
.leave_account_wrap .leave_info_top .txt + .txt{margin-top:16px}
.leave_account_wrap .leave_info_top .btn_ars_noti{font-size:12px;font-weight:bold;color:#666;letter-spacing:-0.24px;display:inline-block;margin-left:12px}
.leave_account_wrap .leave_info_top .btn_ars_noti:after{content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;width:5px;height:9px;background-position:-204px -12px;margin-left:5px}
.leave_account_wrap .leave_info_btm{padding-top:33px}
.leave_account_wrap .leave_info_btm .notice_box{margin-top:15px}
.leave_account_wrap .leave_info_btm .notice_list{font-size:13px;letter-spacing:-0.26px;list-style:decimal;margin-left:17px}
.leave_account_wrap .leave_info_btm .notice_list + .notice_list{margin-top:12px}
.leave_account_wrap .leave_info_btm .check_area{margin:23px 0 20px;padding:16px 0;position:relative;border-top:1px solid #e0e0e0;border-bottom:1px solid #e0e0e0}
.leave_account_wrap input[type=checkbox]{position:absolute;left:2px;top:18px;z-index:0;background:none;border: 0 none}
.leave_account_wrap input[type=checkbox] + label:before{z-index:5;content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;width:17px;height:17px;margin-right:10px;position:absolute;left:0;top:17px;background-color:#fff;background-position:-160px 0;}
.leave_account_wrap input[type=checkbox]:checked + label:before{background-position:-160px -20px;}
.leave_account_wrap input[type=checkbox]:checked + label{font-weight:bold;color:#0f0f0f}
.leave_account_wrap .check_area label{font-size:14px;letter-spacing:-0.84px;cursor:pointer;padding-left:25px}
.leave_account_wrap .check_content{background:#fafafa;padding:24px 30px}
.leave_account_wrap .check_content:after{content:"";display:block;clear:both}
.leave_account_wrap .check_content .chk_form{float:left;line-height:48px}
.leave_account_wrap .check_content .chk_form + .chk_form{margin-left:48px}
.leave_account_wrap .check_content .chk_txt{display:inline-block;font-size:15px;color:#333;letter-spacing:-0.9px;font-weight:bold}
.leave_account_wrap .check_content .chk_info{display:inline-block;margin-left:16px;font-size:15px;color:#333}
.leave_account_wrap .check_content input{font-size:15px;width:290px;height:48px;line-height:48px;border:1px solid #bfbfbf;border-radius:4px;color:#333;display:block;padding-left:16px;box-sizing:border-box}
.leave_account_wrap .check_content input:focus{outline:none;border-color:#2964e0}
.leave_account_wrap .btn_wrap{width:440px;height:52px;margin:40px auto 0}
.leave_account_wrap .btn_submit{display:block;float:left;width:216px;height:52px;line-height:52px;text-align:center;box-sizing:border-box;font-weight:bold;font-size:16px;border-radius:4px;text-decoration:none}
.leave_account_wrap .cancel{background:#fff;border:1px solid #bfbfbf;color:#333}
.leave_account_wrap .accept{background:#2964e0;border:1px solid #2964e0;color:#fff;margin-left:8px}
.check_wrap{width:440px;margin:110px auto 198px}
.check_wrap .check_top{text-align:center;margin-bottom:32px}
.check_wrap .check_top .title{font-size:20px;color:#0f0f0f;font-weight:bold;margin-bottom:12px;letter-spacing:-1.2px}
.check_wrap .check_top .txt{font-size:14px;letter-spacing:-0.56px}
.check_wrap .check_content{background:#fafafa;padding:38px 30px 36px}
.check_wrap .check_content .chk_form{display:table;width:100%;table-layout:fixed}
.check_wrap .check_content .chk_form + .chk_form{margin-top:26px}
.check_wrap .check_content .chk_txt{display:table-cell;width:57px;font-size:15px;color:#333;letter-spacing:-0.9px;font-weight:bold}
.check_wrap .check_content .chk_info{display:table-cell;padding-left:16px;font-size:15px;color:#333}
.check_wrap .check_content input{font-size:15px;width:307px;height:48px;line-height:48px;border:1px solid #bfbfbf;border-radius:4px;color:#333;display:block;padding-left:16px;box-sizing:border-box}
.check_wrap .check_content input:focus{outline:none;border-color:#2964e0}
.check_wrap .check_content .chk_error{border-color:#db3838}
.check_wrap .check_content .chk_err_txt{font-size:12px;color:#db3838;letter-spacing:-0.6px;margin-top:4px}
.check_wrap .btn_wrap{margin-top:16px}
.check_wrap .btn_submit{display:block;float:left;width:216px;height:52px;line-height:52px;text-align:center;box-sizing:border-box;font-weight:bold;font-size:16px;border-radius:4px;text-decoration:none}
.check_wrap .cancel{background:#fff;border:1px solid #bfbfbf;color:#333}
.check_wrap .accept{background:#2964e0;border:1px solid #2964e0;color:#fff;margin-left:8px}
.change_name_wrap{width:513px;margin:110px auto 203px}
.change_name_wrap .change_name_info{text-align:center}
.change_name_wrap .title{font-size:20px;color:#0f0f0f;font-weight:bold;margin-bottom:12px;letter-spacing:-1.2px}
.change_name_wrap .txt{font-size:14px;letter-spacing:-0.56px;line-height:23px}
.change_name_wrap .btn_wrap{width:440px;margin:40px auto 0}
.del_account_box{width:520px;margin:110px auto 216px;text-align:center}
.del_account_box .del_account_info{margin:16px 0 40px}
.del_account_box .title{font-size:20px;color:#0f0f0f;font-weight:bold;margin-bottom:12px;letter-spacing:-1.2px}
.del_account_box .txt{font-size:14px;letter-spacing:-0.7px;line-height:23px}
.del_account_box .point{color:#2964e0}
.del_account_box .btn_wrap{width:440px;margin:0 auto}
.del_account_box .btn_certi{font-size:16px}
.del_account_box .withdraw_btn{background:#fff;color:#333;border:1px solid #bfbfbf}
.profile_modify_wrap{width:440px;margin:94px auto 133px}
.profile_modify_wrap .profile_area{position:relative}
.profile_modify_wrap .profile_area .myicon_box{position:absolute;bottom:0;right:164px}
.profile_modify_wrap .profile_area .profile_txt{display:block;width:35px;height:35px;background:#2964e0;border-radius:50%;cursor:pointer;}
.profile_modify_wrap .profile_area .profile_txt:before{content:"";display:inline-block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;background-position:-160px -70px;width:20px;height:16px;margin:9px 8px 11px}
.profile_modify_wrap .profile_area input[type=file]{position:absolute;clip:rect(0 0 0 0);width:1px;height:1px;margin:-1px;overflow:hidden}
.profile_modify_wrap .user_photo_wrap{width:80px;height:80px;border-radius:50%;overflow:hidden;margin:0 auto}
.profile_modify_wrap .thumb{width:100%;height:100%}
.profile_modify_wrap .thumb_notice{width:238px;margin:20px auto 24px}
.profile_modify_wrap .thumb_notice li{font-size:14px;letter-spacing:-0.56px;line-height:23px}
.profile_modify_wrap .check_content{background:#fafafa;padding:24px 30px}
.profile_modify_wrap .check_content .chk_form{display:table;width:100%;table-layout:fixed}
.profile_modify_wrap .check_content .chk_txt{display:table-cell;width:57px;font-size:15px;color:#333;letter-spacing:-0.9px;font-weight:bold}
.profile_modify_wrap .check_content .chk_info{display:table-cell;padding-left:16px;font-size:15px;color:#333}
.profile_modify_wrap .check_content input{font-size:15px;width:307px;height:48px;line-height:48px;border:1px solid #bfbfbf;border-radius:4px;color:#333;display:block;padding-left:16px;box-sizing:border-box}
.profile_modify_wrap .check_content input:focus{outline:none;border-color:#2964e0}
.profile_modify_wrap .check_content .chk_error{border-color:#db3838}
.profile_modify_wrap .check_content .chk_err_txt{font-size:12px;color:#db3838;letter-spacing:-0.6px;margin-top:4px}
.profile_modify_wrap .btn_wrap{margin-top:28px;height:124px;position:relative}
.profile_modify_wrap .btn_submit{display:block;float:left;width:440px;height:52px;line-height:52px;text-align:center;box-sizing:border-box;font-weight:bold;font-size:16px;border-radius:4px;text-decoration:none}
.profile_modify_wrap .accept{background:#2964e0;border:1px solid #2964e0;color:#fff;margin-bottom:20px}
.profile_modify_wrap .convert_btn{background:#fff;border:1px solid #bfbfbf;color:#333}
.profile_modify_wrap .convert_btn .btn_help{font-size:12px;display:inline-block;color:#666;width:18px;height:18px;border-radius:50%;margin-left:6px;border:1px solid #bfbfbf;line-height:19px;vertical-align:1px}
.profile_modify_wrap .bundle_btn{text-align:right;margin-top:10px}
.profile_modify_wrap .leave_btn{font-size:13px;color:#666;letter-spacing:-0.26px}
.profile_modify_wrap .profile_layer{position:absolute;z-index:10;border:1px solid #333;background:#fff;border-radius:5px;width:296px;text-align:left;top:100%;left:270px;box-sizing:border-box}
.profile_modify_wrap .profile_layer:before{content:"";display:block;background:url("//img.danawa.com/img/auth/icon_login_210701.png") no-repeat;background-position:-214px -12px;width:10px;height:12px;margin-top:-11px;margin-left:43px}
.profile_modify_wrap .profile_ly_cont{padding:10px}
.profile_modify_wrap .profile_layer .tit{display:block;margin-bottom:6px;font-size:13px;color:#0f0f0f}
.profile_modify_wrap .profile_layer .txt{line-height:19px;font-size:12px;color:#666}
.modify_finish_wrap{width:450px;margin:110px auto 232px}
.modify_finish_wrap .modify_finish_top{text-align:center;margin-bottom:60px}
.modify_finish_wrap .modify_finish_top .title{font-size:20px;color:#0f0f0f;font-weight:bold;margin-bottom:12px;letter-spacing:-1.2px}
.modify_finish_wrap .modify_finish_top .txt{font-size:14px;letter-spacing:-0.56px}
.modify_finish_wrap .btn_submit{display:block;float:left;width:216px;height:52px;line-height:52px;text-align:center;box-sizing:border-box;font-weight:bold;font-size:16px;border-radius:4px;text-decoration:none}
.modify_finish_wrap .home{background:#fff;border:1px solid #bfbfbf;color:#333}
.modify_finish_wrap .relogin{background:#2964e0;border:1px solid #2964e0;color:#fff;margin-left:8px}

/* 기존 서비스 코딩 복사 */
.priv_r_tbl {height:160px;overflow-y:auto;padding: 12px;background: #f9f9f9;box-sizing: border-box;}
.event .priv_r_tbl {margin-bottom:20px}
.priv_r_tbl .text_w p {line-height:20px;}
.priv_r_tbl table {margin:5px 0;width:100%;border-collapse:collapse;border-spacing:0;border:1px solid #b3b3b3;font-size:12px;color:#666;font-weight:normal;}
.priv_r_tbl th {padding-top:5px;border-left:1px solid #b3b3b3;font-weight:normal;text-align:center;background:#fafafa;height:25px;}
.priv_r_tbl td {border-left:1px solid #b3b3b3;border-top:1px solid #b3b3b3;padding:5px;line-height:16px;}
.priv_r_tbl .col_1 {width:62px;}
.priv_r_tbl .col_2 {width:60px;text-align:center;}
.priv_r_tbl .col_4 {width:120px;}

.dnw_service_wrap {width:460px;margin:2px auto;font-family:"Malgun Gothic",Dotum,"돋움","Apple SD Gothic Neo",Helvetica,Sans-serif;overflow: hidden;}
.dnw_service_wrap .tit{font-size:15px;font-weight: bold;margin-bottom:15px;}
.dnw_service_wrap .blue_txt{font-size:15px;}
.dnw_service_wrap .list{float:left;border:1px solid #d3d3d3; border-left:none;border-right:none; width:100%;height: 34px;margin-bottom:20px;}
.dnw_service_wrap .service{float:left;}
.dnw_service_wrap .service span{float:left;display:block;line-height: 34px;padding:0 15px;color:#000;background:url(//img.danawa.com/new/login_new/img/ico_bullet_blue.png)no-repeat 9px 50%;}
.dnw_service_wrap .first span{margin-left:30px;}
/* // 기존 코드 복사 */

</style>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style type="text/css">
		
		</style>
		
		<script type="text/javascript">
		
		</script>
	</head>
	
	
		
		<body class="body__login">
    <!-- login_wrap -->
    <div id="wrap" class="login_wrap">
        <!-- header -->
        <div id="header" class="header__login">
            <h1 class="logo"><a href="#" class="ico h_logo"><span class="blind">DANAWA</span></a></h1>
            <h2 class="s_tit blind">로그인</h2>
            
            
                
                
                    <a href="#" class="guest_orders">
                        <span>비로그인 주문조회</span>
                    </a>
                
            
        </div>
        <!--// header -->
        <!-- container -->
        <div id="container" class="container content__login">
             <!-- login_form -->
            <form class="login_form" action="/login" id="danawa-member-login-loginForm" method="post">
                <input type="hidden" id="danawa-member-login-redirectUrl" name="redirectUrl" value="http://www.danawa.com/?src=adwords&amp;kw=GA0000020&amp;gclid=EAIaIQobChMInO7gqtOx-gIVxWOLCh2e6waLEAAYASAAEgLXkvD_BwE">
                <div class="select_area">
                    <span class="chk_w">
                        <!-- 체크 시 on 클래스 추가 -->
                        <input type="checkbox">
                        <label>로그인 유지</label>
                    </span>
<!--                     <div class="layer__login layer__login--keeplogin" id="danawa-member-login-autoLogin-hint" style="display: none"> -->
<!--                         <span>로그인이 30일간 유지됩니다.<br> -->
<!--                             개인정보 보호를 위해 개인기기에서만 사용하세요.</span> -->
<!--                         <button type="button" class="layer__button--close" id="danawa-member-login-autoLogin-hintClose"> -->
<!--                             <span class="blind">닫기</span> -->
<!--                         </button> -->
<!--                     </div> -->
                    <ul class="rdo_list">
						<li id="danawa-member-login-loginType-general-check" class="check">
							<input type="radio" id="danawa-member-login-loginType-general" name="loginMemberType" checked="checked" value="general">
							<label for="danawa-member-login-loginType-general"><i class="ico i_rdo"></i>일반회원</label>
						</li>
						<li id="danawa-member-login-loginType-cooperationCompanies-check">
							<input type="radio" id="danawa-member-login-loginType-cooperationCompanies" name="loginMemberType" value="company">
							<label for="danawa-member-login-loginType-cooperationCompanies"><i class="ico i_rdo"></i>협력사 관리자</label>
						</li>
                    </ul>
                </div>
                <div class="id_area">
                    <div class="input_wrap" id="danawa-member-login-loginIdInputArea">
                        <span class="input_box">
                            <label for="danawa-member-login-input-id" class="lb" style="display:block;">아이디/인증 이메일</label><!-- input 입력시 display:none; -->
                            <input type="text" id="danawa-member-login-input-id" maxlength="40" name="id" class="int" placeholder="아이디/인증 이메일" value="" style="z-index: 10;">
                            <button type="button" id="danawa-member-login-input-id-del" class="btn_del on"><span class="ico i_del"></span></button><!-- 입력시 on 클래스 추가 -->
                        </span>
                        <button type="button" class="btn_pwview btn_idsave on" id="danawa-member-login-saveId">저장</button>
                        <input type="hidden" name="isSaveId" id="danawa-member-login-input-saveId" value="true">
                    </div>
                </div>
                <div class="pw_area">
                    <div class="input_wrap" id="danawa-member-login-loginPwdInputArea">
                        <span class="input_box">
                            <label for="danawa-member-login-input-pwd" class="lb" style="display:block;">비밀번호</label><!-- input 입력시 display:none; -->
                            <input type="password" maxlength="20" id="danawa-member-login-input-pwd" name="password" class="int" placeholder="비밀번호"><!-- 표시 버튼 체크하면 input type="text" 로 변경 -->
                            <button type="button" id="danawa-member-login-input-pwd-del" class="btn_del"><span class="ico i_del"></span></button><!-- 입력시 on 클래스 추가 -->
                        </span>
                    </div>
                </div>
				
				<div class="txt_error_area" id="danawa-member-login-error-area" style="display: none;">
					<p class="err_txt" id="danawa-member-login-error-message"></p>
				</div>
                <button class="btn_login" id="danawa-member-login-loginButton" type="button">로그인</button>
                <div class="menu_area clear">
                    <div class="login_info">
                        <div class="help_w">
                            <a href="#" id="danawa-member-login-helpMenu-searchId">아이디 찾기</a>
                        </div>
                        <div class="help_w">
                            <a href="#" id="danawa-member-login-helpMenu-searchPwd">비밀번호 찾기</a>
                        </div>
                        <div class="help_w">
                            <a href="#" id="danawa-member-login-helpMenu-joinMember">회원가입</a>
                        </div>
                    </div>
                </div>

				
            </form>
            <!--// login_form -->
        </div>
        <!--// container -->
        <!-- footer -->

        <!--// footer -->

    </div>
    <!--// login_wrap -->



</body>
	
</html>