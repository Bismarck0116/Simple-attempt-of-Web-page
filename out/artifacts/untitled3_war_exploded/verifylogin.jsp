<%--
  Created by IntelliJ IDEA.
  User: zyh-tony
  Date: 2018/6/13
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<html>
<head>
    <title>Web Final</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
<div align=center>
        <%
    String sUserName = request.getParameter ( "txtUserName" ); //获取用户名
    String sPasswd = request.getParameter ( "txtPassword" );   //获取密码

    String driver = "com.mysql.cj.jdbc.Driver";
    Class.forName(driver);
    String url = "jdbc:mysql://127.0.0.1:3306/login?useSSL=false&serverTimezone=GMT%2B8";
    Connection connection = DriverManager.getConnection (url, "root","123456");
    String sql = "select * from user where username='" + sUserName+ "' and pwd = '" + sPasswd + "'";

    Statement stmt = connection.createStatement ();
    ResultSet rs = stmt.executeQuery (sql);

    if ( rs.next () )//如果记录集非空，表明有匹配的用户名和密码，登陆成功
    {
     %>
            <SCRIPT>
                alert('登录成功，正在前往简历修改页面！');
                window.location="update_data.html"
            </SCRIPT><%
    }
    else
    {
         %>
            <SCRIPT>
                alert('登录失败，正在前往登录页面！');
                window.location="login.html"
            </SCRIPT><%
    }

    rs.close ( );
    stmt.close ( );
    connection.close ( );
   %>
</body>
</html>
