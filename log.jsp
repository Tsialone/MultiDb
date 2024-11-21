<%@ page import="connection.*" %>
<%@ page import="exception.*" %>
<%@ page import="fonction.*" %>
<%@ page import="lmd.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logs</title>
</head>
<body>
    <h3>Voir les Erreurs recents: </h3>
    <% out.print(Fonction.log()); %>
</body>
</html>