<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.util.Date,java.text.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
	<link rel="stylesheet" type="text/css" href="style.css">
    <title>sql:transaction Etiketi</title>
</head>
<body>
    <h2>JSTL SQL sql:transaction Tag</h2>

    <sql:setDataSource var="veriKaynagi" 
                       driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/companydb"
                       user="root"  
                       password=""/>

    <sql:query dataSource="${veriKaynagi}" sql="SELECT * FROM personel" var="sorgu" />

    <!--
    <sql:query dataSource="${veriKaynagi}" var="sorgu">
       SELECT * FROM personel;
    </sql:query>
    -->  

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
        <c:forEach var="satir" items="${sorgu.rows}">
            <tr>
                <td><c:out value="${satir.personelid}"/></td>
                <td><c:out value="${satir.personeladi}"/></td>
                <td><c:out value="${satir.personelsoyadi}"/></td>
                <td><c:out value="${satir.personelposta}"/></td>
                <td><c:out value="${satir.personelgorevi}"/></td>
                <td><c:out value="${satir.personelmaasi}"/></td>
                <td><c:out value="${satir.personelkayittarihi}"/></td>
            </tr>
        </c:forEach>
    </table>
    
    
    
    
   
    
	<%
    
      Date tarih = new Date();
      SimpleDateFormat ft = new SimpleDateFormat ("E yyyy.MM.dd ' ***** ' hh:mm:ss a zzz");
      System.out.println("ZAMAN BILGISI : " + ft.format(tarih));
             out.println("ZAMAN BILGISI : " + ft.format(tarih));
      
		int secilenPersonelid = 1;
	%>


 	Transaction seviyeleri (READ_COMMITTED, READ_UNCOMMITTED, REPEATABLE_READ, SERIALIZABLE)
 
	<sql:transaction dataSource="${veriKaynagi}">
	    
	   <sql:update var="güncelleme">
	      UPDATE personel 
	      SET 
	      personeladi = 'Cemre', 
	      personelkayittarihi = ?  
	      WHERE personelid = ?
		   <sql:dateParam value="<%=tarih%>" type="DATE" /> 
		   <sql:param value="<%=secilenPersonelid%>" />
   
	   </sql:update>
	      
	
	   <sql:update var="Ekleme">
	    INSERT INTO personel 
	    (personeladi,personelsoyadi, personelposta, personelgorevi, personelmaasi)
	     VALUES
	    ("Eren", "Donmez", "erendonmez@hotmail.com", "JSP Developer", "2023");
	   </sql:update>
	
	   <sql:update var="güncelleme">
	      UPDATE personel 
	      SET 
	      personeladi = 'Umut',  
	      personelsoyadi = 'Erman'   
	      WHERE personelid = 7
	   </sql:update>
	 
	</sql:transaction>


    <sql:query dataSource="${veriKaynagi}" var="sorgu2">
       SELECT * from personel;
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
                <td><c:out value="${satir2.personelid}"/></td>
                <td><c:out value="${satir2.personeladi}"/></td>
                <td><c:out value="${satir2.personelsoyadi}"/></td>
                <td><c:out value="${satir2.personelposta}"/></td>
                <td><c:out value="${satir2.personelgorevi}"/></td>
                <td><c:out value="${satir2.personelmaasi}"/></td>
                <td><c:out value="${satir2.personelkayittarihi}"/></td>
            </tr>
        </c:forEach>
    </table>
    

</body>
</html>