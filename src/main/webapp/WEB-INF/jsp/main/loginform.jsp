<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="heigth" value="" />
<html>
<head>
    <title>${uskin.siteName}</title>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7,chrome=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="cache-control" content="max-age=0">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT">
    <meta http-equiv="pragma" content="no-cache">
    
    <link type='text/css' rel='stylesheet' href="<c:url value="${uskin.skinCSSFolder}/loginform.css"/>" >

<style type="text/css">
	/* Tooltip -Styles */
	.jQtooltip {
	padding: 5px;
	font-size: 11px;
	filter: alpha(opacity=85);
	background-repeat: no-repeat;
	background-image: url(/html/images/icon/tooltip.gif);
	}
	.jQtooltip-inner {
	padding: 5px 10px;
	max-width: 300px;
	pointer-events: none;
	color: black;
	text-align: left;
	background-color: #FAF4C0;
	border-radius: 3px;
	box-shadow: 0 0 3px rgba(0, 0, 0, 0);
	border: 1px solid  #000;
	}
	.jQtooltip-bottom {
	background-position: top left;
	background-image: url(/html/images/icon/BtooltipPad.gif);
	}
	.jQtooltip-top {
	background-position: bottom left;
	background-image: url(/html/images/icon/BtooltipPad.gif);
	}
	.jQtooltip-left {
	background-position: right center;
	}
	.jQtooltip-right {
	background-position: left center;
	}
	img{border:0}
	a {selector-dummy: expression(this.hideFocus=true);}
	input[type="text"],
	input[type="password"] {
	  height: auto;  /* 높이 초기화 */
	  line-height: normal;  /* line-height 초기화 */
	  padding: 1em .8em;  /* 여백 설정 */
	}
</style>

	<script type="text/javascript" src="<c:url value="/html/js/common.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/html/js/cookies.js"/>"></script>
<%-- 	<script type="text/javascript" src="<c:url value="/html/js/prototype.js"/>"></script> --%>
	<script type="text/javascript" src="<c:url value="/html/jquery/jquery-1.11.1.min.js"/>"></script>
	<script type='text/javascript' src="<c:url value="/html/js/queryloader.js"/>"></script> 
	<script type="text/javascript" src="<c:url value="/html/js/jquery.tooltip.js"/>"></script> 

<script type="text/javascript">
    
        var issubmit = false;
        
        function sendAfterCheck(oform){
            fnSave_Cookies();
            if($('#userId').val().length > 20){
        	    alert('아이디는 20글자까지 가능합니다.\n\r아이디를 확인해주세요.');
        	    $('#userId').focus();
        	    return false;
        	}
			if($('#pwd').val().length > 16){
        	    alert('비밀번호는 16글자까지 가능합니다.\n\r비밀번호를 확인해주세요.');
        	    $('#pwd').focus();
        	    return false;
        	}
            if(document.getElementById("frmLogin").userId.value == ""){
                alert("사용자ID를 입력해 주십시오. ");
                document.getElementById("frmLogin").userId.focus();
                return false;
            }  
            if(document.getElementById("frmLogin").pwd.value == ""){
                alert("비밀번호를 입력해 주십시오. ");
                document.getElementById("frmLogin").pwd.focus();
                return false;
            }
            document.getElementById("frmLogin").submit();
        }
        
        function document_onKeyPress(evt){
            //IE uses this
            if(window.event) {
                if (window.event.keyCode == 13) {
                	sendAfterCheck();	
                }
            }
            //FF uses this
            else {
                if (evt.which == 13){
                	sendAfterCheck();
                }
            } 
        }
    
        function fnResetFrameSize() {
            if (document.getElementById) {
                var frameset = parent.document.getElementById('topFrame');
                if(frameset != null) {
                    try{top.location.reload();}catch(e){}
                }
                else if('<c:out value="${param.stat}"/>' == '0') {
                    alert('세션이 종료되었습니다. 재로그인 후 처리하시기 바랍니다. ');
                    try{top.opener.top.location.reload();}catch(e){alert(e.message);}
                    top.close();
                }
                else if(frameset == null) {
                	try{top.opener.top.location.reload();}catch(e){}
                	
                	if (null != top.document.getElementById('topFrame')){
                		top.location.reload();
                	}
                	//if(top.opener != undefined) this.close();
                }
    
            }
        }
        /**
         * 해당 화면이 onload이벤트시 처리하는 함수
         */
        function fnInitForm(){
            fnResetFrameSize();
            
            fnBrowserHeight();
            
            fnGetCookiesData(); 
    
            top.document.title = '${uskin.siteName}';
            
            var LoginErr01Msg = "${LoginErr01}";
            var LoginErr02Msg = "${LoginErr02}";

            <c:choose>
	            <c:when test="${!empty LoginErr01}">
	            	alert('${LoginErr01}');
	            </c:when>
	            <c:when test="${!empty LoginErr02}">
					if(confirm('이미 접속중입니다. 기존의 접속을 종료하시겠습니까?')){
		                document.getElementById("frmLogin").action = "<c:url value='/relogin.do'/>";
		                document.getElementById("frmLogin").submit();          
					}
	            </c:when>
	            <c:when test="${!empty sso && sso == 'fail_SSO'}">
	            	alert('SSO 인증 로그인에 실패하였습니다. 담당자에게 문의하세요.  '); 
	            </c:when>
	            <c:when test="${!empty sso && sso == 'fail_VOC'}">
	            	alert('해당 사용자가 VOC 내부고객으로 존재하지 않습니다. 담당자에게 문의하세요.  ');
	            </c:when>
            </c:choose>

        }

        function fnOpenMain(no){
        	document.getElementById("frmLogin").pwd.value = no;
        	document.getElementById("frmLogin").submit();
        }
        
        function fnOpenMainNoRelogin(){
            location.href="<c:url value='/vocindex.voc'/>?url=";
        }
    /**
    * 쿠키정보 저장하기
    */
    function fnSave_Cookies()
    {
        var d = document.frmLogin;
        if( d.chkSaveId.checked )
        {
            fnSaveUserId(d.userId.value);
        }
    }

    /**
     * 쿠키정보 세팅
     */
    function fnGetCookiesData()
    {
        try
        {
            fnGetCookiesId();       // 사용자ID

            var d = document.frmLogin;
            if( d.userId.value == "" )
            {
                document.getElementById("frmLogin").userId.focus();
            }
            else
            {
                document.getElementById("frmLogin").pwd.focus();
            }

        }catch( e ){
            __errorMsg( "fnGetCookiesData", "", e );    // 에러메시지 출력 : Fn_NM, Msg, Error
        }finally{
        }
    }

    /**
     * 쿠키에서 id 가져오기
     */
    function fnGetCookiesId()
    {
        try
        {
            var id = fnGetCookie("userId");
            if(id != ""){
                document.frmLogin.userId.value = id;
                document.frmLogin.chkSaveId.checked = true;
            }

        }catch( e ){
            __errorMsg( "fnGetCookiesId", "", e );  // 에러메시지 출력 : Fn_NM, Msg, Error
        }finally{
        }
    }

    function fnBrowserHeight(){
        var totalHeight = 0;   
        var scrollHeight = document.documentElement.scrollHeight;     
        var browserHeight = document.documentElement.clientHeight;       
        totalHeight = scrollHeight < browserHeight ? browserHeight : scrollHeight;
        document.getElementById('a').style.height = browserHeight+"px";
    }

</script>
</head>
<body topmargin="0" marginwidth="0" marginheight="0" leftmargin="0" rightmargin="0" onload="fnInitForm();">
<form id="frmWork" name="frmWork" action=""  method="post"></form>
<form id="frmLogin" name="frmLogin" action="/login.do"  method="post">
    <p style="position:absolute;">
       <c:if test="${!empty loginForwardAction}">
       <input type="hidden" id="forwardAction" name="forwardAction" value="<c:url value="${loginForwardAction}"/>">
       </c:if>
    </p>        
	<table id="a" width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="background:url(${uskin.skinImageFolder}/logindemo/back.png) repeat-x;" >
	  <tr>
	    <td align="center">
	      <tr>
	        <td>&nbsp;</td>
	        <td style="width:936px; height:100%;">
	        <!-- 로그인박스 S-->
	        <table style="width:936px; height:100%;" border="0" cellspacing="0" cellpadding="0">
	          <tr style="height:180px;">
	            <td style="vertical-align: top; padding-top: 20px;">
	            	<img src="<c:url value="${uskin.skinImageFolder}/loginform/logo_hongma.png"/>"/>
	            </td>
	          </tr>
	          <tr> 
	            <td style="height:396px; vertical-align: middle; text-align: center;">
		            <!-- 폼박스 S-->
		            <table style="margin-bottom: 200px;width:936px; height:396px; background:url(${uskin.skinImageFolder}/logindemo/loginback.png) no-repeat;" border="0" cellspacing="0" cellpadding="0">
		              <tr style="height: 180px;">
		                <td colspan="3">&nbsp;</td>
		              </tr>
		              <tr style="height: 70px;">
		                <td style="width: 540px;" rowspan="3">&nbsp;</td>
		                <td style="width: 240px; height: 70px; vertical-align: top;">
		                	<c:choose>
			                    <c:when test="${!empty userid}">
			                        <input type="text" name="userId" id="userId" style="width: 200px;" value="${userId }" maxlength="20" readOnly class="table_button" size="20" tabindex="1"  title="최대20자">
			                    </c:when>
			                    <c:otherwise>
			                         <input type="text" name="userId" id="userId" style="width: 200px;" value="R0006" maxlength="20" class="table_button" size="20" tabindex="1"  title="최대 20자">
			                    </c:otherwise>
			                </c:choose>
		                </td>
		                <td rowspan="3" style="vertical-align: top; text-align: left; padding-left: 15px; padding-top: 8px;">
		                	<img alt="로그인" src="<c:url value="${uskin.skinImageFolder}/logindemo/login.png"/>" style="cursor:pointer;" onclick="return sendAfterCheck(this.form);"/>
		                </td>
		              </tr>
		              <tr style="height: 70px;">
		                <td style="width: 240px; height: 70px; vertical-align: top;">
		                	<input type="password" id="pwd" name="pwd" style="width: 200px;" value="redvoc1!" class="table_button" size="20" maxlength="16" tabindex="2" title="최대 16자" onkeydown="document_onKeyPress(event)">
		                </td>
		              </tr>
		              <tr style="height: 76px;">
		                <td>&nbsp;</td>
		              </tr>
		              <tr>
		                <td colspan="3" class="login_text_01"><input type="hidden" name="chkSaveId" id="chkSaveId"></td>
		              </tr>
		            </table>
		            <!-- 폼박스 E-->
	            </td>
	            </tr>
	        </table>
	        <!-- 로그인박스 E-->
	        </td>
	        <td>&nbsp;</td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	</table>
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

$('input').tooltip({
    align: 'autoRight',
    trigger: {
        show: 'focus',
        hide: 'blur'
    }
});

</script> 
</body>
</html>
