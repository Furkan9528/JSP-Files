<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selam JavaBeans</title>
</head>
<body bgcolor="#ffffff" background="resimler/arka_zemin.png">

<%@ page import="com.yazilimvideo._03_SelamlamaSinifi"%>
<%@ page info="Selam JavaBeans"%>

<jsp:useBean id="jb" scope="page" class="com.yazilimvideo._03_SelamlamaSinifi" /> <!-- scope tüm sayfayı dahil ediyor -->
<jsp:setProperty name="jb" property="*" />


<%@ include file="03_SelamJavabeansEkSayfasi.jsp"%>

	<form name="selamJavabeansFormu" method="get" action="03_SelamJavaBeans.jsp">


		<table border="0" width="700">
			<tr>
				<td width="10">&nbsp;</td>
				<td width="550">
					<h3>Lütfen adınızı soyadınızı ve selamlama mesajınızı giriniz.</h3>
				</td>
			</tr>
			<tr>
				<td width="10">&nbsp;</td>
				<td width="550">



					<table border="0" width="400">

						<tr>
							<td><strong>Ad :</strong></td>
							<td><input type="text" name="isim" size="40" /></td>
						</tr>

						<tr>
							<td><strong>Soyadı :</strong></td>
							<td><input type="text" name="soyisim" size="40" /></td>
						</tr>

						<tr>
							<td><strong>Mesaj :</strong></td>
							<td><input type="text" name="mesaj" size="40" /></td>
						</tr>

						<tr>
							<td><strong>&nbsp;</strong></td>
							<td><strong>&nbsp;</strong></td>
						</tr>

						<tr>
							<td></td>
							<td><input type="reset" value="Temizle" /> <input
								type="submit" value="Tamam" /></td>
						</tr>

					</table>

				</td>
			</tr>

		</table>

	</form>


	<%@ include file="03_SelamJavabeansCevapSayfasi.jsp"%> <!-- burası 03_SelamJavabeansCevapSayfasi.jsp sayfasında yazdığımızı getiriyor
																istesek bunu yazmayı o sayfadaki tüm yazıları kes yapıp buraya yapıştırabiliriz
																amaç kod fazlalığını azaltmak	 -->


</body>
</html>