<%@ page import="connection.*" %>
<%@ page import="exception.*" %>
<%@ page import="fonction.*" %>
<%@ page import="lmd.*" %>
<% 
String classename = request.getParameter("classe");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/formulaireinsertion.css">
    <title>Home</title>
</head>
<body>  
            <h1>Insertion: <%  out.print( classename ); %> </h1>
            <% 
            try {
                
                out.print(Fonction.getFormulaireInsertion(classename)); 
            }
            catch (Exception e)
            {
                out.print(e);
            }
            %>
            <a href="exit.jsp">Exit</a>
</body>
</html>