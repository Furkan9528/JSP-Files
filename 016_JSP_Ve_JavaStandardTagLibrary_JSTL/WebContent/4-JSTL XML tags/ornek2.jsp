<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
     <title>JSTL XML Tags</title>
<body>
     <h2>JSTL XML Tags Kullanımı</h2>


  <table border="1">

     <thead>
         <tr>
             <th><b>ARABA MARKASI</b></th>
         </tr>
     </thead>

   <tbody>
     <tr>  
         <td>
            <form  method="POST" action="ornek2yeCevapVer.jsp">
                <select name="markaadi">
                  <option value="MERCEDES">MERCEDES
                  <option value="BMW">BMW
                  <option value="ANADOL">ANADOL
                  <option value="TOYOTA">TOYOTA
                  <option value="KARTAL">KARTAL
                </select>
                <input type=submit name="Tamam">
            </form>
        </td>
     </tr>
   </tbody>

</table>

</body>
</html>