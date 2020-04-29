<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JavaBeans Formunu Alan Form</title>
</head>
<body>


	<jsp:useBean id="jb" type="com.yazilimvideo._01_BizimSinifimiz"
						 class="com.yazilimvideo._01_BizimSinifimiz" 
						 scope="session" />

	<jsp:setProperty name="jb" property="*" /> 
	<!-- orada ki * java kısmındaki tüm değerleri set etmektir
	Ama istersen istediklerini böle set edersin. Bu islem bence 
	ilk sayfadaki textlerin icine request.getParameter() yazmamiza
	gerek kalmadi.
	jsp:setProperty name="jb" property="kullaniciadimiz" 
	jsp:setProperty name="jb" property="parolamiz"  -->

	<h1>JavaBeans Formunu Alan Form</h1>

	<a href="01_JavaBeansFormunuGoster.jsp">JavaBeans Formunu Göstermek için Tıklayınız.</a>
</body>
</html>