<%--
  Created by IntelliJ IDEA.
  User: zyh-tony
  Date: 2018/6/13
  Time: 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Web Final Login Page</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="ch-cn">
</head><style>
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
</style>

<body>
<script type="text/javascript">
    function check() {
        var use = document.getElementById("txtUserName").value;
        var pwd = document.getElementById("txtPassword").value;
        var reg = /^[0-9a-zA-Z]+$/;
        if(!/^[a-z]+$/i.test(use)) {
            alert("用户名中只能包含英文字母\n请重新输入");
        }
        else if(!reg.test(pwd)){
            alert("密码只能为英文字母或数字\n请重新输入");
        }
        else {
            alert("输入格式正确！");
        }
    }
</script>
<form method="post" name="frmLogin" action="verifylogin.jsp">
    <br><br><br><br><br><br>
    <h1>
        用户登录
    </h1><br>
    <div align="center">
        用户名<br>
        <input type="text" name="txtUserName" value="admin"
               onfocus="if(this.value=='user')this.value='';">
        <br>
        密码<br>
        <input type="password" name="txtPassword" value="123"
               onfocus="if(this.value=='pwd')this.value='';">
        <br>
        <input type="submit" name="Submit" onclick="check()" value="提交">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="Reset" value="重置">
        <br>
    </div>
    <p>
        <a href="index.jsp">返回上一级</a>
    </p>
</form>
</body>
</html>
