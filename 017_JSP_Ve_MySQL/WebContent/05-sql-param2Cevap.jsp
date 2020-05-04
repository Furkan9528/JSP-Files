<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>sql:param Etiketi</title>
</head>
<body>
	<h2>JSTL SQL sql:param Tag</h2>


	<sql:setDataSource var="veriKaynagi"
					   driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost/companydb" 
					   user="root"
					   password="" />
		
	<sql:query dataSource="${veriKaynagi}" var="sorgu">
		SELECT * FROM companydb.personel
		WHERE personelid = ?
		<sql:param value="${param.personelidParametresi}" /> 
	</sql:query>
	
	<!-- Diger sayfadan birsey gelmisse 'param.birsey' kullanilir -->


	<table border="1">
		<!-- Kolonların Başlıkları -->
		<tr>
			<c:forEach var="kolonBasligi" items="${sorgu.columnNames}">
				<th><c:out value="${kolonBasligi}" /></th>
			</c:forEach>
		</tr>
		<!-- Kolonların Bilgileri -->
		<c:forEach var="satir" items="${sorgu.rowsByIndex}">
			<tr>
				<c:forEach var="kolon" items="${satir}">
					<td><c:out value="${kolon}" /></td>
				</c:forEach>
			</tr>
		</c:forEach>

	</table>

	<!------------------------ 2.Tablo----------------------->
	<!-- sorgu.rows[0] demek yukaridaki sql:query sorgusunu cagiriyor bu sorgudan fazla fazla olsaydi index sayisina gore istedigimize islem uygulayabilirdik -->
	<c:set var="ozelKayitBilgisi" scope="request" value="${sorgu.rows[0]}" />

	<hr>
	<table border="0">
		<thead>
			<tr>
				<th colspan="2">Personel Bilgileri</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><strong>ID </strong></td>
				<td><span style="font-size: 16px; font-style: italic;">${ozelKayitBilgisi.personelid}</span></td>
			</tr>
			<tr>
				<td><strong> Adı Soyadı: </strong></td>
				<td>${ozelKayitBilgisi.personeladi} ${ozelKayitBilgisi.personelsoyadi}</td>
			</tr>

			<tr>
				<td><strong>Görevi: </strong></td>
				<td>${ozelKayitBilgisi.personelgorevi}</td>
			</tr>
			<tr>
				<td><strong>E-Posta: </strong></td>
				<td><strong> <a
						href="mailto:${ozelKayitBilgisi.personelposta}">${ozelKayitBilgisi.personelposta}</a>
				</strong></td>
			</tr>
		</tbody>
	</table>
</body>
</html>