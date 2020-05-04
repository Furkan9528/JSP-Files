
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sql:dateParam Etiketi</title>
</head>
<body>
	<h2>JSTL SQL sql:dateParam Tag</h2>

	<sql:setDataSource var="veriKaynagi" 
					   driver="com.mysql.jdbc.Driver"
					   url="jdbc:mysql://localhost/companydb"
					   user="root" 
					   password="" />

	<sql:query dataSource="${veriKaynagi}" sql="SELECT * FROM companydb.personel" var="sorgu" />

	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>ADI</th>
			<th>SOYADI</th>
			<th>E-POSTA</th>
			<th>GÖREVİ</th>
			<th>MAAŞI</th>
			<th>TARIHI</th>
		</tr>
		<c:forEach var="satir" items="${sorgu.rows}">
			<tr>
				<td><c:out value="${satir.personelid}" /></td>
				<td><c:out value="${satir.personeladi}" /></td>
				<td><c:out value="${satir.personelsoyadi}" /></td>
				<td><c:out value="${satir.personelposta}" /></td>
				<td><c:out value="${satir.personelgorevi}" /></td>
				<td><c:out value="${satir.personelmaasi}" /></td>
				<td><c:out value="${satir.personeltime}" /></td>
			</tr>
		</c:forEach>
	</table>

	<%@ page import="java.util.Date, java.text.*"%>


	<%
		Date tarih = new Date();
	
		java.util.Date zaman = new java.util.Date();

		int secilenPersonelid = 7;

		System.out.println("Konsolda zaman : " + zaman);
	%>
	
		 Web sayfasında zaman 1 :<%=zaman%>
	<br> Web sayfasında zaman 2 :
			<%
				out.println(String.valueOf(zaman));
			%>

	<c:set var="parametrePersonelid" value="<%=secilenPersonelid%>" />
	<c:set var="parametrePersonelAdi" value="Eren" />
	<c:set var="parametrePersonelSoyadi" value="Cemre" />
	<c:set var="parametrePersonelMail" value="Erencemre@gmail.com" />
	<c:set var="parametrePersonelGorevi" value="JAVA Junior developer" />
	<c:set var="parametrePersonelMaasi" value="12500" />
	<c:set var="parametrePersonelTime" value="<%=tarih%>" /> <!--  ve aşağı notla birlikte yapıp bu kısmı silerdik -->


	<sql:update dataSource="${veriKaynagi}" var="guncelle_silme_ekleme">
    

		UPDATE companydb.personel
		SET
		personelgorevi = ?,
		personeladi = ?,
		personelsoyadi = ?,
		personelkayittarihi = ?, 
		personelmaasi = ? ,
		personelposta = ?
		
		WHERE personelid = ?
	
	    <sql:param value="${parametrePersonelGorevi}" />
		<sql:param value="${parametrePersonelAdi}" />
		<sql:param value="${parametrePersonelSoyadi}" />
		<sql:param value="${parametrePersonelTime}" /> 
		<sql:param value="${parametrePersonelMaasi}" />
		<sql:param value="${parametrePersonelMail}" />
		<sql:param value="${parametrePersonelid}" />
	

	</sql:update>

	<!-- Yukarıda time kısmana value =" < %=tarih% >" type="DATE" />  " de diyebilirdik -->

	<sql:query dataSource="${veriKaynagi}" var="sorgu2">
       SELECT * FROM personel;
    </sql:query>

	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>ADI</th>
			<th>SOYADI</th>
			<th>E-POSTA</th>
			<th>GÖREVİ</th>
			<th>MAAŞI</th>
			<th>KAYIT TARİHİ</th>
		</tr>
		<c:forEach var="satir2" items="${sorgu2.rows}">
			<tr>
				<td><c:out value="${satir2.personelid}" /></td>
				<td><c:out value="${satir2.personeladi}" /></td>
				<td><c:out value="${satir2.personelsoyadi}" /></td>
				<td><c:out value="${satir2.personelposta}" /></td>
				<td><c:out value="${satir2.personelgorevi}" /></td>
				<td><c:out value="${satir2.personelmaasi}" /></td>
				<td><c:out value="${satir2.personelkayittarihi}" /></td>
			</tr>
		</c:forEach>
	</table>



</body>
</html>