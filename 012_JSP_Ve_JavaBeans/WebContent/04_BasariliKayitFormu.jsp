<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>İş başvurusu için kayıt formu</title>
</head>
<body>


	<jsp:useBean id="kahveCekirdegi"
		class="com.yazilimvideo._04_ElemanSinifi" scope="request" />


	<table cellpadding=1 cellspacing=1 border="7">

		<th bgcolor="CCCCFF" colspan=2><font size=6 color="green">Kayıt
				başarılı</font></th>

		<tr bgcolor="CCFF66">
			<td valign=top><b><font size=3 color="darkblue">Adı</font></b> <br>
				<jsp:getProperty name="kahveCekirdegi" property="adi" /></td>
			<td valign=top><b><font size=3 color="darkblue">Soyadı</font></b>
				<br> <jsp:getProperty name="kahveCekirdegi" property="soyadi" />
			</td>
		</tr>

		<tr bgcolor="CCFF66">
			<td valign=top><b><font size=3 color="darkblue">E-Mail</font></b>
				<br> <jsp:getProperty name="kahveCekirdegi" property="email" />
			</td>
			<td valign=top><b><font size=3 color="darkblue">Posta
						Kodu</font></b> <br> <jsp:getProperty name="kahveCekirdegi"
					property="postakodu" /></td>
		</tr>

		<tr bgcolor="CCFF66">
			<td valign=top><b><font size=3 color="darkblue">Kullanıcı
						Adı</font></b> <br> <jsp:getProperty name="kahveCekirdegi"
					property="kullaniciadi" /></td>
			<td valign=top><b><font size=3 color="darkblue">Cinsiyetiniz</font></b>
				<br> <jsp:getProperty name="kahveCekirdegi" property="cinsiyet" />
			</td>
		</tr>

		<tr bgcolor="CCFF66">
			<td valign=top colspan=2><b><font size=3 color="darkblue">Adres</font></b>
				<br> <jsp:getProperty name="kahveCekirdegi" property="adres" />
			</td>
		</tr>

		<tr bgcolor="CCFF66">
			<td colspan=2 valign=top><b><font size=3 color="darkblue">Tecrübeli
						olduğunuz alanlar</font></b> <br> 
		<%
		 	String[] tecrubealani = kahveCekirdegi.getTecrubealani();
		 	if (!tecrubealani[0].equals("1")) {
		 		out.println("<ul>");
		 		for (int i = 0; i < tecrubealani.length; i++)
		 			out.println("<li>" + tecrubealani[i]);
		 		out.println("</ul>");
		 	} else
		 		out.println("");
		 %>
		 	</td>
		</tr>

	</table>

</body>
</html>