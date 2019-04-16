<%!
//************************************************************************************
// 업무     : 500 에러페이지 
// 업무설명 : 
// 작업자   : 임진식(jsyim1@hongma.co.kr)
// 작업내역 : 
//************************************************************************************
%>
<%-- <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isErrorPage="true" %> --%>
<%-- <%@taglib prefix="f" uri="/WEB-INF/tld/fn-hongma.tld"%> --%>
<%-- <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> --%>
<%-- <%@page import="hongma.frm.exception.BizException"%> --%>
<%-- <%@page import="hongma.frm.util.HtmlUtil"%> --%>
<%-- <%@page import="java.net.InetAddress"%> --%>
<%-- <%@page import="java.net.UnknownHostException"%> --%>
<%-- <%@page import="hongma.frm.util.StringUtil"%> --%>
<%-- <%@page import="org.apache.log4j.Logger"%> --%>

<%-- <%@page import = "java.util.*" --%>
<%-- 		import = "hongma.frm.util.*" --%>
<%-- 		import = "hongma.frm.exception.*"	 --%>
<%-- 		import = "hongma.frm.startup.*"	 --%>
<%-- 		import = "hongma.voc.common.common.service.UserSession" --%>
<%-- 		import = "java.sql.*" --%>
<%-- 		import = "oracle.sql.*" --%>
<%-- 		import = "java.io.*" --%>
<%-- %> --%>
<%-- <%! --%>
//     static Logger logger = Logger.getLogger("rootLogger");
<%-- %> --%>
<%-- <% --%>

// 	//Throwable t = (Throwable)request.getAttribute("exception");

// 	final String messageDelimiter = new Character((char) 0x8).toString(); //Message 조립시 구분자로 사용한것

// 	String exceptionMessage = "";

// 	if (exception != null) {
// 		if (exception instanceof hongma.frm.exception.MainException) {
// 			hongma.frm.exception.MainException se = (hongma.frm.exception.MainException)exception;
// 			se.setMsgDesc();
// 			exceptionMessage = se.getMsgDesc();
// 		}
// 		else if (exception instanceof BizException) {

// 			BizException be = (BizException)exception;
// 			be.setMsgDesc();
// 			exceptionMessage = be.getMsgDesc();

// 		} else {
// 			exceptionMessage = "[ 예외적 상황 발생 ] " + messageDelimiter + "ELException" + messageDelimiter + "항목을 표시중 오류가 발생되었습니다." + messageDelimiter + exception.getMessage();
// 		}
// 	}else{
//         logger.debug("=== null ===");
// 	}

// 	String msg = HtmlUtil.java2Html(exceptionMessage);
// 	String[] arrMsg = msg.split(messageDelimiter);
	
//     String msg1 = "";
//     if(arrMsg.length > 1){
//         if(!"".equals(arrMsg[1])) { msg1 = arrMsg[1]; }
//     }
//     String msg2 = "";
//     if(arrMsg.length > 2){
//         if(!"".equals(arrMsg[2])) { msg2 = arrMsg[2]; }
//     }   
//     String msg3 = "";
//     if(arrMsg.length > 3){
//         if(!"".equals(arrMsg[3])) {
//             msg3 = arrMsg[3];
//         }
//         else if(arrMsg.length >= 5){
//             if(!"".equals(arrMsg[5])) { msg3 = arrMsg[5]; }
//         }   
//     }	
    

// 	String session_pid = (String)session.getAttribute("session_pid");
// 	String session_bid = (String)session.getAttribute("session_bid");
// 	UserSession userSession = (UserSession)session.getAttribute("userSession");
	
// 	String userEmpno = userSession.getLogin().getUserEmpno();
	
// 	String resultMsg = msg2 + msg3;
	
// 	Connection conn = SYSTEM.getInstance().getConnection();

// 	String selectQuery = "SELECT TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')||LTRIM(TO_CHAR( NVL(SUBSTR(MAX(EXCP_LOG_NO),17)+1,1),'0000')) as excpLogNo "+
//     "FROM TBVC_EXCP_LOG_INFO "+
//     "WHERE EXCP_LOG_NO LIKE TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS') || '%'";

// 	Statement stmt = conn.createStatement();
// 	PreparedStatement pstmt = null;
// 	ResultSet rs = null;
// 	String excpLogNoResult = "";
// 	try{
// 		stmt.execute(selectQuery);
// 	    rs = stmt.getResultSet();
// 	    while (rs.next()) {
// 	    	excpLogNoResult = rs.getString("excpLogNo");
// 	    }
	    
// 	    String insertQuery = "insert into TBVC_EXCP_LOG_INFO (EXCP_LOG_NO, CONTS_ID, BTN_ID, EXCP_CD, EXCP_CNTN, REG_USER, REG_DTTM) "+
// 	    "values (?, ?, ?, ?, ?, ?, TO_CHAR(SYSDATE,'yyyymmddhh24miss'))";
	    
// 	    pstmt = conn.prepareStatement(insertQuery);

// 	    StringReader sr = new StringReader(resultMsg);
	    
	    
// 	    pstmt.setString(1, excpLogNoResult);
// 	    pstmt.setString(2, session_pid);
// 	    pstmt.setString(3, session_bid);
// 	    pstmt.setString(4, msg1);
// 	    pstmt.setCharacterStream(5, sr, resultMsg.length());
// 	    pstmt.setString(6, userEmpno);
	    
// 	    pstmt.execute();
	    
// 	}catch(Exception ex){
// 		System.out.println(ex.getMessage());
// 		ex.getStackTrace();
// 	}finally{
// 		try{
// 			if(rs != null) rs.close();
// 			if(stmt != null) stmt.close();
// 			if(pstmt != null) pstmt.close();
// 			if(conn != null) conn.close();
// 		}catch(Exception e){
// 		}
// 	}

// 	request.getSession().removeAttribute("session_pid");
// 	request.getSession().removeAttribute("session_bid");
<%-- %> --%>
<%-- <%@page import="hongma.frm.config.StaticConfig"%> --%>
<html>
<head>
<title>::: 시스템장애 :::</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta HTTP-EQUIV="Cache-Control" CONTENT="max-age=0">
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<meta http-equiv="expires" content="0">
<meta HTTP-EQUIV="Expires" CONTENT="Tue, 01 Jan 1980 1:00:00 GMT">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<style type="text/css">
.style1 {
    color: #ffffff;
    font-weight: bold;
}
.style2 {color: #FFFFFF}
.style3 {
    color: #FF6600
}
.intxtl {
    border-bottom: #cccccc 1px solid; border-left: #333333 1px solid; font-family: verdana,굴림; letter-spacing: -1px; color: #3b3b3b; font-size: 9pt; border-top: #333333 1px solid; border-right: #cccccc 1px solid
}
body {
    scrollbar-arrow-color: #333333; scrollbar-face-color: #eeeeee; scrollbar-darkshadow-color: #ffffff; scrollbar-base-color: #eeeeee; scrollbar-highlight-color: #ffffff; scrollbar-shadow-color: #b4b4b4; scrollbar-3dlight-color: #b4b4b4
}
form {
    padding-bottom:0; margin:0; padding-left:0; padding-right:0; padding-top:0
}
tr.h {
    background-color: #ffffe8
}
table {
    border-collapse: collapse; font-family: "돋움", "verdana"; color: #555555; font-size: 13px; line-height:15px;
}
img {
    border-bottom:0; border-left:0; border-top:0; border-right:0
}

.title {
    font-family: 돋움,굴림; letter-spacing: -1px; color: #696969; font-size: 10.5pt; text-decoration: none; font-weight: bold; line-height:20px; 
}
.tel {
    font-family: 돋움,굴림; letter-spacing: 1px; color: #494949; font-size: 10pt; text-decoration: none; font-weight: bold; line-height:20px; 
}
</style>
</head>
<body leftmargin=100 topmargin=50 marginwidth="0" marginheight="0">
<form id="frm" name="frm" action="" method="post">
<!-- <table id="error_table" border="0" cellspacing="0" cellpadding="0" width="100%" align="center" height="100%"> -->
<!--     <tbody> -->
<!--     <tr style="height:100%; vertical-align: middle;"> -->
<!--         <td style="text-align: center;"> -->
<!--             <table width="505" border="0" cellspacing="0" cellpadding="0"> -->
<!-- 		        <tr style="height:35px"> -->
<%-- 		            <td align="right" background="<%=request.getContextPath()%>/html/images/error/system_01.gif" style='padding:8px 20px 5px 0; background-repeat : no-repeat'><span class="style1"><%=StaticConfig.APP_COMPANY %></span></td> --%>
<!-- 		        </tr> -->
<!-- 		        <tr style="height:130px"> -->
<%--                     <td background="<%=request.getContextPath()%>/html/images/error/system_02.gif" style='padding:60px 0 0 30px; background-repeat : no-repeat'> --%>
<!-- 			            <span class="title">시스템 장애로 인해 불편을 드려서 죄송합니다.<BR> -->
<!-- 			                        빠른 시간 안에 복구하도록 하겠습니다.  -->
<!-- 			            </span> -->
<%--                         <span class="tel">(문의 : ${f:getTelForm(userSession.chmnTel)})</span> --%>
<!--                     </td> -->
<!-- 				</tr> -->
<!--                 <tr style="height:5px"> -->
<%--                     <td align="center" background="<%=request.getContextPath()%>/html/images/error/system_bg.gif"></td> --%>
<!--                 </tr> -->
<!-- 				<tr> -->
<%-- 					<td align="center" background="<%=request.getContextPath()%>/html/images/error/system_bg.gif"> --%>
<!-- 						<table border="0" cellspacing="0" cellpadding="0" width="90%" bgColor=#f7f7f7> -->
<!-- 						    <colgroup> -->
<!-- 						        <col width="5"> -->
<!--                                 <col width=""> -->
<!--                                 <col width="5"> -->
<!-- 						    </colgroup> -->
<!-- 							<tbody> -->
<!-- 							<tr> -->
<%-- 								<td><img alt="" src="<%=request.getContextPath()%>/html/images/error/system_frame_01.gif"></td> --%>
<%-- 								<td background="<%=request.getContextPath()%>/html/images/error/system_frame_bg01.gif"></td> --%>
<%-- 								<td><img alt="" src="<%=request.getContextPath()%>/html/images/error/system_frame_02.gif"></td> --%>
<!-- 							</tr> -->
<!-- 							<tr> -->
<%-- 								<td background="<%=request.getContextPath()%>/html/images/error/system_frame_bg02.gif">&nbsp;</td> --%>
<!-- 								<td style="padding-left: 5px; padding-top: 5px;"> -->
<!-- 									<table border="0" cellspacing="0" cellpadding="0" width="100%"> -->
<!--                                         <tbody> -->
<!-- 										<tr> -->
<%--                                             <td style="text-align: left">• 코드 : <%=msg1%></td> --%>
<!-- 										</tr> -->
<!-- 										<tr> -->
<%--                                             <td style="padding-top:5px; text-align: left;word-break:break-all;word-wrap:break-word;">• 내용 : <%=msg2%></td> --%>
<!-- 										</tr> -->
<!--                                         <tr style="height:5px;"> -->
<!--                                             <td style="padding-left:25px; text-align:left;"></td> -->
<!--                                         </tr> -->
<!-- 										</tbody> -->
<!--                                     </table> -->
<!--                                 </td> -->
<%-- 								<td background="<%=request.getContextPath()%>/html/images/error/system_frame_bg03.gif">&nbsp;</td> --%>
<!-- 							</tr> -->
<%-- 							<% --%>
// 					        InetAddress ip = null;
// 					        String ipAddress = "";
// 					        try {
// 					            ip = InetAddress.getLocalHost();
// 					            ipAddress = ip.getHostAddress();
// 					        }
// 					        catch(UnknownHostException e) {
// 					        	logger.debug(e.getMessage());
// 					        }
					        
// 					        if("127.0.0.1".equals(ipAddress)) {
<%-- 							%> --%>
<!-- 							<tr> -->
<%-- 								<td background="<%=request.getContextPath()%>/html/images/error/system_frame_bg02.gif">&nbsp;</td> --%>
<!-- 								<td style="PADDING-TOP: 6px" align="center"> -->
<%-- 								    <textarea id="textarea2" name="textarea2" class="intxtl" rows="7" cols="169" style="width:540px; height:350px;"><%=StringUtil.null2void(msg3).replaceAll("<br>","\n")%></textarea>                 --%>
<!-- 								</td> -->
<%-- 								<td background="<%=request.getContextPath()%>/html/images/error/system_frame_bg03.gif">&nbsp;</td> --%>
<!-- 							</tr> -->
<%-- 							<% --%>
// 							}
<%-- 							%> --%>
<!-- 							<tr> -->
<%-- 								<td width="5"><img alt="" src="<%=request.getContextPath()%>/html/images/error/system_frame_03.gif"></td> --%>
<%-- 								<td background="<%=request.getContextPath()%>/html/images/error/system_frame_bg04.gif"></td> --%>
<%-- 								<td width="5"><img alt="" src="<%=request.getContextPath()%>/html/images/error/system_frame_04.gif"></td> --%>
<!-- 							</tr> -->
<!-- 							</tbody> -->
<!--                         </table> -->
<!-- 				    </td> -->
<!-- 				</tr> -->
<!--                 <tr style="height:5px"> -->
<%--                     <td align="center" background="<%=request.getContextPath()%>/html/images/error/system_bg.gif"></td> --%>
<!--                 </tr> -->
<!-- 				<tr style="height:60px"> -->
<%--                     <td background="<%=request.getContextPath()%>/html/images/error/system_03.gif" style='padding:20px 0 5px 20px;background-repeat : no-repeat;'> --%>
<!--                         <span class="style2">• 이전화면으로 돌아가려면</span> <b><a href="javascript:history.back(-1);" class="style3">여기</a></b><span class="style2">를 클릭해주세요.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style2"><strong>VOC SYSTEM</strong></span> -->
<!--                     </td> -->
<!-- 				</tr> -->
<!-- 				<tr> -->
<!-- 				    <td>&nbsp;</td> -->
<!-- 				</tr> -->
<!-- 			</table> -->
<!-- 			<p>&nbsp;</p> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!--     </tbody> -->
<!-- </table> -->

<div id="divProg" style="display:none;">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td>
                <table style="width:198px;">
                    <tr style="height:33px;">
                        <td colspan="3" style="background:url(<c:url value="/html/images/loading/loading_blue_01.gif"/>);"></td>
                    </tr>
                    <tr style="height:61px;">
                        <td style="width:67px; background:url(<c:url value="/html/images/loading/loading_blue_02.gif"/>);"></td>
                        <td style="background:url(<c:url value="/html/images/loading/loading.gif"/>);"></td>
                        <td style="width:66px; background:url(<c:url value="/html/images/loading/loading_blue_03.gif"/>);"></td>
                    </tr>
                    <tr style="height:14px;">
                        <td colspan="3" style="background:url(<c:url value="/html/images/loading/loading_blue_04.gif"/>);"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
<script type="text/javascript">
try{ setTimeout(parent.fn_HourGlassFalse,100);}catch(e){}
try{ setTimeout(parent.parent.fn_HourGlassFalse,100);}catch(e){}
try{ setTimeout(opener.fn_HourGlassFalse,100); }catch(e){}
</script>
</form>
</body>
</html>
