<%--
  Created by IntelliJ IDEA.
  User: zyh-tony
  Date: 2018/6/13
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="jdk.nashorn.internal.ir.RuntimeNode.Request"%>
<%@ page import="java.sql.*"%>
<html>
<head>
    <title>Web Final</title>
    <style>
        h1
        {
            text-align:center;
            text-shadow: 1px 1px 1px #000000;
        }
        p
        {
            text-align:center;
        }
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
<input type="text" style="height:20px;width:100px;" />
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String sex = request.getParameter("sex");
    int age = Integer.parseInt(request.getParameter("age"));
    String major = request.getParameter("major");
    String mailbox = request.getParameter("mailbox");
    String sql = "update resume set name='"+name+"',sex='"+sex+"',age='"+age+"',major='"+major+"',mailbox='"+mailbox+"'";
            //"(name,sex,age,major,mailbox) " +"values('"+name+"','"+sex+"','"+age+"','"+major+"','"+mailbox+"')";

    String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://127.0.0.1:3306/login?useSSL=false&serverTimezone=GMT%2B8";
    Class.forName(driver);
    Connection connection1 = DriverManager.getConnection(url,"root","123456");
    Statement state = connection1.createStatement();

    int flag = state.executeUpdate(sql);
    if(flag != 0)
    {
        out.println("<script>alert('信息更改成功！');history.go(-1);</script>");
    }
    else
    {
        out.println("<script>alert('信息更改失败！');history.go(-1);</script>");
    }
    state.close();
    connection1.close();
%>
</body>
</html>
