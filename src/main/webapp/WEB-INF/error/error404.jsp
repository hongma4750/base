<%!
//************************************************************************************
// 업무     : 404 에러페이지 
// 업무설명 : 
// 작업자   : 임진식(jsyim1@hongma.co.kr)
// 작업내역 : 
//************************************************************************************
%>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isErrorPage="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@page --%>
<%-- 	import = "java.util.*" --%>
<%-- 	import = "hongma.frm.util.*" --%>
<%-- 	import = "hongma.frm.exception.*"	 --%>
<%-- 	import = "hongma.frm.startup.*"	 --%>
<%-- 	import = "hongma.voc.common.common.service.UserSession" --%>
<%--  	import = "java.sql.*" --%>
<%--  	import = "oracle.sql.*" --%>
<%--  	import = "java.io.*" --%>
<%-- %> --%>
<html>
<head>
<%-- <% --%>
// 	UserSession userSession = (UserSession)session.getAttribute("userSession");
// 	if(userSession == null){
// 		return;
// 	}
		
// 	String userEmpno = userSession.getLogin().getUserEmpno();
	
// 	response.setStatus(HttpServletResponse.SC_OK);
	
// 	String url = request.getAttribute("javax.servlet.forward.request_uri").toString();

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

// 	    StringReader sr = new StringReader("페이지를 찾을 수 없습니다.");
	    
// 	    pstmt.setString(1, excpLogNoResult);
// 	    pstmt.setString(2, url);
// 	    pstmt.setString(3, "검색");
// 	    pstmt.setString(4, "HTTP 404");
// 	    pstmt.setCharacterStream(5, sr, "페이지를 찾을 수 없습니다.".length());
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
// 		}catch(Throwable e){
// 		}
		
// 	}

// 	request.getSession().removeAttribute("session_pid");
// 	request.getSession().removeAttribute("session_bid");
<%-- %> --%>
	<title><fmt:message key="app.title" /></title>
	<style type="text/css">
		.style1 { color: #FFFFFF}
		.font03 { font-size:9pt; font-family: 돋움,굴림;  letter-spacing:0;  color: #094D88; text-decoration: none; font-weight:bold;}
	</style>
</head>
<body leftmargin=0 topmargin=0 marginwidth="0" marginheight="0">
<form id="frm" name="frm" action="" method="post">
<table id="error_table" border="0" cellspacing="0" cellpadding="0" width="100%" align="center" height="100%">
  <tbody>
    <tr style="height:100%; vertical-align: middle;">
    <td style="text-align: center;">
      <table style="width:450px;" border="0" align="center" cellpadding="0" cellspacing="0">
        <tbody>
        <tr>
          <td style="width:450px; height:390px; padding:0 0 0 10px;" background="<%=request.getContextPath()%>/html/images/error/404.png">
            <table style="width:200px;" border="0" cellSpacing="0" cellPadding="0">
              <tbody>
              <tr>
                <td>
                  <table style="width:285px;" border="0" cellSpacing="0" cellPadding="0">
                    <tbody>
                    <tr>
                      <td style="width:50px;">&nbsp;</td>
                      <td style="width:293px; height:187px;">&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td class="font03" style="width:293px; line-height:17px; padding-left:5px;"><span class="style1"> <br>
                        </span>
                      </td>
                    </tr>
                    <tr>
                      <td style="height:5px;">&nbsp;</td>
                      <td align="right" class="font03" style="padding-top:5px;">
                        <font color=#ffffff></font>
                      </td>
                    </tr>
                    </tbody>
                    </table>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </tr>
        </tbody>
      </table>
    </td>
  </tr>
  </tbody>
</table>
        
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