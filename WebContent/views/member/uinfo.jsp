<%@ page import="com.sds.icto.mysite.vo.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
	MemberVo authMember = (MemberVo)session.getAttribute("authMember");
%>
<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<div id="header">
			<jsp:include page="/views/include/header.jsp" flush="false"/>
		</div>
		<div id="content">
			<div id="user">
			<h3><%=authMember.getName() %>님의 회원정보</h3><p>
				<table>
					<tr>
						<td><label class="block-label" for="name">이름 : </label></td>
						<td><%=authMember.getName() %></td>
					</tr>
					<tr>
						<td><label class="block-label" for="email">이메일 : </label></td>
						<td><%=authMember.getEmail() %></td>
					</tr>
					<tr>
						<td><label class="block-label">패스워드 : </label></td>
						<td><%=authMember.getPassword() %></td>
					</tr>
					<tr>
						<td><label class="block-label">성별 : </label></td>
						<td><%=authMember.getGender() %></td>
					</tr>
				</table>
			</div>
		</div>
		<div id="navigation">
			<jsp:include page="/views/include/navigation.jsp"/>
		</div>
		<div id="footer">
			<jsp:include page="/views/include/footer.jsp"/>
		</div>
	</div>
</body>
</html>