<%-- 
    Document   : page1
    Created on : 18 mai 2020, 15:28:00
    Author     : AdminEtu
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="TP_CPOAC.impl.PenseBeteLocal"%>
<%@page import="TP_CPOAC.pensebete"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>PAGE 1</title>
    </head>
    <body>
        <%
            String date="";
            String contenu="";
            
            try {        
                
                contenu = request.getParameter("contenu");
                
                PenseBeteLocal pl = (PenseBeteLocal) request.getSession().getAttribute("sessionPenseBete");
                if (pl == null) {
                    InitialContext ctx = new InitialContext();
                    pl = (PenseBeteLocal) ctx.lookup("java:global/TP_CPOAC/pensebete"+"!TP_CPOAC.impl.PenseBeteLocal");
                    request.getSession().setAttribute("sessionPenseBete", pl);     
                }
                
                if (contenu != null) {
                    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
                    LocalDateTime now = LocalDateTime.now();  
                    pl.enregistrePenseBete(request.getParameter("contenu"), now.toString());
                }
                
                
                
                date = pl.getDate();
                contenu = pl.getContenu();
                
            } catch(Exception e) {
                e.printStackTrace();
            }
        %>
        <h1>PAGE 1</h1>
        <a href="index.html">Revenir a l'accueil</a>
        <a href="page2.jsp">Page 2</a>
        <a href="page3.jsp">Page 3</a>
        
        <p>
            Blablalblalalal</br>
            la page 1
        </p>
        
         <form action=>
             <textarea  rows=4 cols=40 name="contenu"><%=contenu%></textarea>
            <p><%=date%></p>
            <input type="submit" value="Enregistrer fiche">
        </form>
    </body>
</html>
