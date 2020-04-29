<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="jb" type="com.yazilimvideo._01_BizimSinifimiz"
	class="com.yazilimvideo._01_BizimSinifimiz" scope="session" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JavaBeans ve Form İşlemi Sonucu</title>
</head>
<body>
	<h2>JavaBeans ve Form İşlemi Sonucu</h2>
	
	<table border="1" width="41%" cellspacing="1" cellpadding="0"
		id="sonuctablosu">

		<tr>
			<td width="33%">Adı</td>
			<td><strong><%=jb.getAdi()%></strong></td>
		</tr>

		<tr>
			<td width="33%">Soyadı</td>
			<td><strong><%=jb.getSoyadi()%></strong></td>
		</tr>

		<tr>
			<td width="33%">Telefonu</td>
			<td><strong><%=jb.getTelefon()%></strong></td>
		</tr>

		<tr>
			<td width="33%">Cinsiyeti</td>
			<td><strong><%=jb.getCinsiyet()%></strong></td>
		</tr>

		<tr>
			<td width="33%">Adres</td>
			<td><strong><%=jb.getAdres()%></strong></td>
		</tr>

		<tr>
			<td width="33%">Ülke</td>
			<td><strong><%=jb.getUlke()%></strong></td>
		</tr>

		<tr>
			<td>Meslek</td>
			<td><strong><%=jb.getMeslek()%></strong></td>
		</tr>

		<tr>
			<td>Tecrübe Yılı</td>
			<td><strong><%=jb.getTecrube()%></strong></td>
		</tr>

		<tr>
			<td>Yaşı</td>
			<td><strong><%=jb.getYasi()%></strong></td>
		</tr>
	</table>


</body>
</html>