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
    <form action="formulaireinsertion.jsp" method="get">
    <h3>Table a Inserer</h3>
        <p>

        <%  out.print(Fonction.selectClasseHtml()); %>
        <input type="submit" value="get Foemulaire insertion">
        </p>
    </form>
        <a href="exit.jsp">Exit</a>
        <a href="home.jsp">Back</a>

</body>
</html>