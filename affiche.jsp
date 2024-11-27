<%@ page import="connection.*" %>
<%@ page import="exception.*" %>
<%@ page import="fonction.*" %>
<%@ page import="lmd.*" %>
<% String classe   = request.getParameter("classe"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Home</title>
</head>
<body>
        <p>voir aussi: <a href="log.jsp">les logs</a></p>
        <% 
        try {
            out.print(Fonction.tableHtml(classe)); 
        }
         catch (Exception e)
         {
         }
         %>
        <a href="exit.jsp">Exit</a>

</body>
</html>