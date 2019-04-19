<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="heigth" value="" />
<html>
<head>
    <title><%-- ${uskin.siteName} --%>BASE</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7,chrome=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="cache-control" content="max-age=0">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT">
    <meta http-equiv="pragma" content="no-cache">
    
    <link type='text/css' rel='stylesheet' href="/css/main/loginform.css" />
    <link type='text/css' rel='stylesheet' href="/bootstrap/css/bootstrap.css" />


<%-- 	<script type="text/javascript" src="<c:url value="/html/js/common.js"/>"></script> --%>
<%--     <script type="text/javascript" src="<c:url value="/html/js/cookies.js"/>"></script> --%>
<%-- 	<script type="text/javascript" src="<c:url value="/html/js/prototype.js"/>"></script> --%>
<%-- 	<script type="text/javascript" src="<c:url value="/html/jquery/jquery-1.11.1.min.js"/>"></script> --%>
<%-- 	<script type='text/javascript' src="<c:url value="/html/js/queryloader.js"/>"></script>  --%>
<%-- 	<script type="text/javascript" src="<c:url value="/html/js/jquery.tooltip.js"/>"></script>  --%>
	<script type="text/javascript" src="/js/jQuery.js"></script>

	<script type="text/javascript">
    
        var issubmit = false;
        
        function sendAfterCheck(oform){
//             fnSave_Cookies();

		//TODO validation check
//             if($('#userId').val().length > 20){
//         	    alert('아이디는 20글자까지 가능합니다.\n\r아이디를 확인해주세요.');
//         	    $('#userId').focus();
//         	    return false;
//         	}
// 			if($('#pwd').val().length > 16){
//         	    alert('비밀번호는 16글자까지 가능합니다.\n\r비밀번호를 확인해주세요.');
//         	    $('#pwd').focus();
//         	    return false;
//         	}
//             if(document.getElementById("frmLogin").userId.value == ""){
//                 alert("사용자ID를 입력해 주십시오. ");
//                 document.getElementById("frmLogin").userId.focus();
//                 return false;
//             }  
//             if(document.getElementById("frmLogin").pwd.value == ""){
//                 alert("비밀번호를 입력해 주십시오. ");
//                 document.getElementById("frmLogin").pwd.focus();
//                 return false;
//             }
            $('#frm').submit();
        }
        
//         function document_onKeyPress(evt){
//             //IE uses this
//             if(window.event) {
//                 if (window.event.keyCode == 13) {
//                 	sendAfterCheck();	
//                 }
//             }
//             //FF uses this
//             else {
//                 if (evt.which == 13){
//                 	sendAfterCheck();
//                 }
//             } 
//         }
    
//         function fnResetFrameSize() {
//             if (document.getElementById) {
//                 var frameset = parent.document.getElementById('topFrame');
//                 if(frameset != null) {
//                     try{top.location.reload();}catch(e){}
//                 }
//                 else if('<c:out value="${param.stat}"/>' == '0') {
//                     alert('세션이 종료되었습니다. 재로그인 후 처리하시기 바랍니다. ');
//                     try{top.opener.top.location.reload();}catch(e){alert(e.message);}
//                     top.close();
//                 }
//                 else if(frameset == null) {
//                 	try{top.opener.top.location.reload();}catch(e){}
                	
//                 	if (null != top.document.getElementById('topFrame')){
//                 		top.location.reload();
//                 	}
//                 	//if(top.opener != undefined) this.close();
//                 }
    
//             }
//         }

        /**
         * 해당 화면이 onload이벤트시 처리하는 함수
         */
        function fnInitForm(){
//             fnResetFrameSize();
//             fnBrowserHeight();
//             fnGetCookiesData(); 
//             top.document.title = '${uskin.siteName}';
            
//             var LoginErr01Msg = "${LoginErr01}";
//             var LoginErr02Msg = "${LoginErr02}";
			console.log('확인 먼저');

            

        }

//         function fnOpenMain(no){
//         	document.getElementById("frmLogin").pwd.value = no;
//         	document.getElementById("frmLogin").submit();
//         }
        
//         function fnOpenMainNoRelogin(){
//             location.href="<c:url value='/vocindex.voc'/>?url=";
//         }
    /**
    * 쿠키정보 저장하기
    */
//     function fnSave_Cookies()
//     {
//         var d = document.frmLogin;
//         if( d.chkSaveId.checked )
//         {
//             fnSaveUserId(d.userId.value);
//         }
//     }

    /**
     * 쿠키정보 세팅
     */
//     function fnGetCookiesData()
//     {
//         try
//         {
//             fnGetCookiesId();       // 사용자ID

//             var d = document.frmLogin;
//             if( d.userId.value == "" )
//             {
//                 document.getElementById("frmLogin").userId.focus();
//             }
//             else
//             {
//                 document.getElementById("frmLogin").pwd.focus();
//             }

//         }catch( e ){
//             __errorMsg( "fnGetCookiesData", "", e );    // 에러메시지 출력 : Fn_NM, Msg, Error
//         }finally{
//         }
//     }

    /**
     * 쿠키에서 id 가져오기
     */
//     function fnGetCookiesId()
//     {
//         try
//         {
//             var id = fnGetCookie("userId");
//             if(id != ""){
//                 document.frmLogin.userId.value = id;
//                 document.frmLogin.chkSaveId.checked = true;
//             }

//         }catch( e ){
//             __errorMsg( "fnGetCookiesId", "", e );  // 에러메시지 출력 : Fn_NM, Msg, Error
//         }finally{
//         }
//     }

//     function fnBrowserHeight(){
//         var totalHeight = 0;   
//         var scrollHeight = document.documentElement.scrollHeight;     
//         var browserHeight = document.documentElement.clientHeight;       
//         totalHeight = scrollHeight < browserHeight ? browserHeight : scrollHeight;
//         document.getElementById('a').style.height = browserHeight+"px";
//     }

</script>
</head>

<body topmargin="0" marginwidth="0" marginheight="0" leftmargin="0" rightmargin="0" onload=""
	style="background-color:#2b3640;">
<!-- <form id="frmWork" name="frmWork" action=""  method="post"></form> -->
<form id="frm" name="frm" action="/login.do"  method="post">
	<div class="box">
		<div class="input-group input-group-sm">
		  <input type="text" id="userId" name="userId" class="form-control loginForm" placeholder="ID" aria-describedby="sizing-addon3">
		</div>
		
		<div style="height:10px;"></div>
		<div class="input-group input-group-sm">
		  <input type="password" id="pwd" name="pwd" class="form-control loginForm" placeholder="PASS" aria-describedby="sizing-addon3">
		</div>
		<div style="height:10px;"></div>
		
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="width:80px;" onclick="return sendAfterCheck(this.form)">
			Login
		</button>	
			
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="width:80px;">
			Join
		</button>		
	</div>
</form>
<script type='text/javascript'>
try {
    // Frame구조가 있는지를 체크
    var booleanIframeValue = false;
    if (window.parent!=null) {
        booleanIframeValue = true;
    }

    // popup인 경우를 체크    
    var booleanPopupValue = false;
    if (window.opener!=null) {
        booleanPopupValue = true;
    }

    if (booleanIframeValue){
        parent.setBizSubmit(false);
        try{parent.document.getElementById("divProg").style.display = 'none';}catch(e){}
    }
    else if (booleanPopupValue){
        opener.setBizSubmit(false);
        try{opener.document.getElementById("divProg").style.display = 'none';}catch(e){}
    }
    else{
        setBizSubmit(false);
        try{document.getElementById("divProg").style.display = 'none';}catch(e){}
    }           
}catch(e){}

// $('input').tooltip({
//     align: 'autoRight',
//     trigger: {
//         show: 'focus',
//         hide: 'blur'
//     }
// });

</script> 
</body>
</html>
