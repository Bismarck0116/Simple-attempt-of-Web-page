<%--
  Created by IntelliJ IDEA.
  User: zyh-tony
  Date: 2018/6/11
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="com.mysql.jdbc.Driver" %>--%>
<%@ page language="java" import="java.sql.*" %>
<html>
<head>
  <title>
    Web Final
  </title>
    <style>
        h1
        {
            text-align:center;
            text-shadow: 1px 1px 1px #000000;
        }
        h2 {text-align:center;}
        h3 {text-align:center;}
        p{text-align:center;}
        body
        {
            background-image:url(1.jpg);
            background-size:100% 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        div.flash
        {
            width:100px;
            height:100px;
            background:red;
            position:relative;
            animation:move 10s infinite;
            -webkit-animation:move 10s infinite;
        }
        @keyframes move
        {
            0%   {background:red; left:0px; top:0px;}
            25%  {background:yellow; left:93%; top:0px;}
            50%  {background:blue; left:93%; top:200px;}
            75%  {background:green; left:0px; top:200px;}
            100% {background:red; left:0px; top:0px;}
        }
        @-webkit-keyframes move
        {
            0%   {background:red; left:0px; top:0px;}
            25%  {background:yellow; left:93%; top:0px;}
            50%  {background:blue; left:93%; top:200px;}
            75%  {background:green; left:0px; top:200px;}
            100% {background:red; left:0px; top:0px;}
        }

        .dropbtn
        {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            text-align:center;
        }
        .dropdown
        {
            position: relative;
            display: inline-block;text-align:center;
        }
        .dropdown-content
        {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }
        .dropdown-content a
        {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }
        .dropdown-content a:hover {background-color: #f1f1f1}
        .dropdown:hover .dropdown-content
        {
            display: block;
        }
        .dropdown:hover .dropbtn
        {
            background-color: #3e8e41;
        }
    </style>
</head>
<body>

<h1>欢迎！</h1>
<h2>个人信息主页</h2>
<p>2018 年 6 月</p>

<div class="flash"></div>

<h3>
  <div class="dropdown" >
    <button class="dropbtn">我的个人信息</button>
    <div class="dropdown-content">
      <a href="2.html">大学生活</a>
      <a href="3.html">科研兴趣</a>
      <a href="resume.jsp">个人简历</a><!--未登录前只能查看简历内容 不能修改内容-->
    </div>
  </div>
</h3>
<br><br><br><br><br>
<h2>
  鸣谢 <a href="http://www.baidu.com"> Baidu </a> &<a href="http://www.csdn.net"> CSDN </a>的大力支持!
</h2>
</body>
</html>
