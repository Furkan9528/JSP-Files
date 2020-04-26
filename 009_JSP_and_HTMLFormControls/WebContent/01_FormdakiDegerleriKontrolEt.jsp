<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Yapısı</title>
</head>
<body>

	<b>JSP Sayfamızda Formdan Gelen Değerler </b>

	<table border="2" width="49%" id="gelenDegerlerinTablosu">

		<tr>
			<td width="14%" bgcolor="#FFFF66"><strong>Adı</strong></td>
			<td width="86%" bgcolor="#FFFF66"><em><strong><%=request.getParameter("adi")%></strong></em></td>
		</tr>

		<tr>
			<td bgcolor="#FFFF66"><strong>Soyadı</strong></td>
			<td bgcolor="#FFFF66"><em><strong><%=request.getParameter("soyadi")%></strong></em></td>
		</tr>

		<tr>
			<td><strong>Parola</strong></td>
			<td><em><strong><%=request.getParameter("parola")%></strong></em></td>
		</tr>

		<tr>
			<td bgcolor="red"><strong>Cümle</strong></td>
			<td bgcolor="#FFFF66"><em><strong><%=request.getParameter("cumle")%></strong></em></td>
		</tr>

	</table>

</body>
</html>