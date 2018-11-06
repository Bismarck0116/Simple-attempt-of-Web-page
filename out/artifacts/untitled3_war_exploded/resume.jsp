<%--
  Created by IntelliJ IDEA.
  User: zyh-tony
  Date: 2018/6/13
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.sql.*" %>

<html>
<head>
    <title>Web Final</title>
    <style>
    h1
    {
        text-align:center;
        text-shadow: 1px 1px 1px #000000;
    }
    p{text-align:center;}
    body
    {
        background-image:url(1.jpg);
        background-size:100% 100%;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
    table
    {
        text-align: center;
    }
</style>
</head>

<body>
<h1>个人简历展示</h1><br><br>
<p>
    <br>
    <a href="login.jsp">进入管理员登录界面</a>
    <br>
    Ps.修改内容需管理员权限XD
</p>
<%
    String sql1=null;
    ResultSet rs1=null;
    Connection connection1=null;

    String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://127.0.0.1:3306/login?useSSL=false&serverTimezone=GMT%2B8";

    Class.forName(driver);
    connection1 = DriverManager.getConnection(url,"root","123456");
    Statement statement = connection1.createStatement();
    sql1 = "SELECT * FROM resume";
    rs1 = statement.executeQuery(sql1);

%>
<br>
<br>
<table align="center" border="1">
    <tr>
        <th>类别</th>
        <th>信息</th>
    </tr>
    <%
    while(rs1.next()){
        %>
    <tr>
        <td>
            <%
                out.print("姓名");
                %>
        </td><td>
            <%
                out.print(rs1.getString(1));
            %>
    </td></tr>
    <tr>
        <td>
            <%
                out.print("性别");
            %>
        </td><td>
        <%
                out.print(rs1.getString(2));
            %>
        </td>
    </tr>
    <tr>
        <td>
            <%
                out.print("年龄");
            %>
        </td><td>
        <%
                out.print(rs1.getInt(3));
            %>
        </td>
    </tr>
        <td>
            <%
                out.print("专业");
            %>
        </td><td>
        <%
                out.print(rs1.getString(4));
            %>
        </td>
    <tr>
        <td>
            <%
                out.print("邮箱");
            %>
        </td><td>
        <%
                out.print(rs1.getString(5));
            %>
        </td>
    </tr>
    <br>
    <%
        }
    %>
</table>

<%
    rs1.close();
    statement.close();
    connection1.close();
%>
</body>
</html>
