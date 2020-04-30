<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag import="java.util.Date" import="java.text.DateFormat"%>

<%
    DateFormat tarih = DateFormat.getDateInstance(DateFormat.FULL);
    Date simdi = new Date(System.currentTimeMillis());
    out.println(tarih.format(simdi));
    out.println("Selamın Alekyüm");
%>
