<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="java.util.*" %>
<%@ page import="zyf.entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
    <table align="center" width="450" border="1">
        <tr>
            <td align="center" colspan="5">
                <h2>������Ʒ��Ϣ</h2>
            </td>
        </tr>
        <tr align="center">
            <td><b>ID</b></td>
            <td><b>��Ʒ����</b></td>
            <td><b>�۸�</b></td>
            <td><b>����</b></td>
            <td><b>��λ</b></td>
        </tr>
        <%
            List<Product> list=(List<Product>)request.getAttribute("list");
            for(Product p:list){
         %>
         <tr align="center">
             <td><%=p.getId() %></td>
             <td><%=p.getName() %></td>
             <td><%=p.getPrice() %></td>
             <td><%=p.getNum() %></td>
             <td><%=p.getUnit() %></td>
         </tr>
         <%
             }
          %>
          <tr>
              <td align="center" colspan="5">
                  <%=request.getAttribute("bar") %>
              </td>
          </tr>
    </table>
</body>
</html>