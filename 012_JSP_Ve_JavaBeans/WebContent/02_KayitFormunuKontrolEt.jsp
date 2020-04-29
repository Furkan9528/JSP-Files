<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.yazilimvideo._02_GirilenDegerleriKontrolEdenSinif"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kayıt Formunu Kontrol Et</title>
</head>

	<jsp:useBean id="jb" class="com.yazilimvideo._02_GirilenDegerleriKontrolEdenSinif" />
	<jsp:setProperty name="jb" property="kullaniciadimiz" />
	<jsp:setProperty name="jb" property="parolamiz" />
	<!-- property yerine yıldızda konabilirdi -->

		<%
			_02_GirilenDegerleriKontrolEdenSinif denetlemeNesnesi =(_02_GirilenDegerleriKontrolEdenSinif)pageContext.getAttribute("jb");
		
			denetlemeNesnesi.hatalariKontrolEdenFonksiyon(request);
		
			String hatalar = (String) request.getAttribute("hatalar");
		
			if (hatalar != null && hatalar.trim().length() > 0) {
				%>
				<jsp:forward page="02_KayitFormu.jsp"></jsp:forward>
				<%
			}
		%>
	
	<h3>
		<font face=verdana color=green>Girilen degerler gecerlidir.</font>
	</h3>

	<table border="1" width="20%">
	
		<tr>
			<td width="30%">Adı</td>
			<td width="70%"><strong><%=denetlemeNesnesi.getKullaniciadimiz()%></strong></td>
		</tr>
	
		<tr>
			<td>Parola</td>
			<td><strong><%=denetlemeNesnesi.getParolamiz()%></strong></td>
		</tr>
	</table>
	
	<h3>
		<font face=verdana color=darkblue>Beans(Fasulyeler)ini Alan Form</font>
	</h3>
	<a href="02_KayitFormu.jsp">Kayıt Formuna Dönmek için Tıklayınız.</a>

</body>

</body>
</html>