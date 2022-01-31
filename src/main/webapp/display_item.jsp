<%@page import="dto.ItemDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%  String status=(String)session.getAttribute("status");
    if(status == null){ %>

        <style>
            body {
                background-color: rgb(221, 215, 162);
            }
            
            table {
                border: 3px solid #f1f1f1;
                background-color: rgb(168, 231, 219)
            }
            
            ,
            th,
            td {
                border-collapse: collapse;
            }
            
            th,
            td {
                padding: 15px;
            }
        </style>


        <%
    
        List<ItemDto> items = (List<ItemDto>)request.getAttribute("itemList");
    %>

            <%@ include file="itemnavbar.jsp" %>

                <center>
                    <table border="2" align="autofocus">
                </center>
                <br>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Cost</th>
                    <th>Type</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>

                <%
            for(ItemDto item : items) {
        %>

                    <tr>
                        <td>
                            <%=item.getId() %>
                        </td>
                        <td>
                            <%=item.getName() %>
                        </td>
                        <td>
                            <%=item.getQuantity() %>
                        </td>
                        <td>
                            <%=item.getCost() %>
                        </td>
                        <td>
                            <%=item.getType() %>
                        </td>
                        <td>
                            <a href="getitem?itemId=<%=item.getId() %>">Edit</a>
                        </td>
                        <td>
                            <a href="deleteitem?itemId=<%=item.getId() %>">Delete</a>
                        </td>

                    </tr>
                    <%
            }
        %>
                        </table>

                        <%} 
     else 
    { %>
                            <%@include file="login.jsp" %>
                                <%} %>
</body>
</html>