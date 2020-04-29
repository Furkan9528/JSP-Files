<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Degerlendirme Sayfasi</title>
</head>
<body>
	<%@ page import="java.util.*"%>
	<jsp:useBean id="kahveCekirdegi" class="com.yazilimvideo._04_ElemanSinifi" scope="request">
		<jsp:setProperty name="kahveCekirdegi" property="adi" />
		<jsp:setProperty name="kahveCekirdegi" property="soyadi" />
		<jsp:setProperty name="kahveCekirdegi" property="adres" />
		<jsp:setProperty name="kahveCekirdegi" property="cinsiyet" />
		<jsp:setProperty name="kahveCekirdegi" property="email" />
		<jsp:setProperty name="kahveCekirdegi" property="kullaniciadi" />
		<jsp:setProperty name="kahveCekirdegi" property="parola1" />
		<jsp:setProperty name="kahveCekirdegi" property="parola2" />
		<jsp:setProperty name="kahveCekirdegi" property="postakodu" />
		<jsp:setProperty name="kahveCekirdegi" property="tecrubealani" />
	</jsp:useBean>
	<%
		if (kahveCekirdegi.kontrolFonksiyonu()) {
	%>
	<jsp:forward page="04_BasariliKayitFormu.jsp" />
	<%
		} else {
	%>
	<jsp:forward page="04_TekrarDeneFormu.jsp" />
	<%
		}
	%>
</body>
</html>