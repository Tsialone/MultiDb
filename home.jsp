<%@ page import="connection.*" %>
<%@ page import="exception.*" %>
<%@ page import="fonction.*" %>
<%@ page import="lmd.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Home</title>
</head>
<body>
    <form action="affiche.jsp" method="get">
    <h3>Recherche</h3>
        <p>
            <input type="text" value=""  name="classe" >
            <input type="submit" value="chercher">
        </p>
    </form>
        <a href="exit.jsp">Exit</a>
</body>
</html>