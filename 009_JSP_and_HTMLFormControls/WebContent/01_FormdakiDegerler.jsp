<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p align="left">
		<b>JSP Sayfamızda Form Kullanımı Örnek Form </b>
	</p>

	<form method="post" action="01_FormdakiDegerleriKontrolEt.jsp" name="bilgiFormu">

		<table width="345" border="2" cellpadding="0" cellspacing="1"
			id="ornekTablomuz">

			<tr>
				<td width="98"><strong>Adı</strong></td>
				<td width="254"><input type="text" name="adi" size="40"></td>
			</tr>

			<tr>
				<td><strong>Soyadı</strong></td>
				<td><input type="text" name="soyadi" size="40" /></td>
			</tr>

			<tr>
				<td><strong>Parola</strong></td>
				<td><input type="password" name="parola" size="40"></td>
			</tr>

			<tr>
				<td><strong>Cümle</strong></td>
				<td><textarea name="cumle" id="cumle" cols="30" rows="3"></textarea></td>
			</tr>

		</table>

		<p>
			<input type="submit" value="Değerleri Gönder" name="GonderDugmesi">
			<input type="reset" value="Formu Temizle" name="YenilemeDugmesi">
		</p>
</body>
</html>