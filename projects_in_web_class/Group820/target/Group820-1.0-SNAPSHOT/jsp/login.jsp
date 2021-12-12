<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/11
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" href="/Group820/css/header.css">
    <link rel="stylesheet" href="/Group820/css/footer.css">
    <style>
        * {
            margin:0;
            padding: 0;
            box-sizing: border-box;
        }
        .header img {

            max-height: 300px;
            width:100%;
        }
        .login {
            margin: 50px;
            width: 300px;
            top: 100px;
            left: 500px;
            position: relative;
            text-align: center;
            justify-content: center;
            align-items: center;
            border: 2px solid green;
            border-radius: 5px;
            font-family: 微软雅黑;
            font-size: 16px;
        }
        .login input{
            outline: none;
            /*border: none;*/
            border: 1px solid #00BFFF;
            padding: 5px;
            margin: 10px;
        }
        .login button{
            border-radius: 5px;
            border: none;
            margin: 20px;
            padding: 10px 15px;
            background-color: #00BFFF;
            color: white;
            cursor: pointer;
            transition: transform 0.3s;
        }
        .login button:hover{
            background-color: #4169E1;
            transform: scale(1.1);
        }

    </style>
</head>
<body>
<div class="header ">
    <img src="/Group820/resources/picture.jpg" alt="picture">
</div>
<div class="nav">
    <%@include file="/jsp/navigation.jsp" %>
</div>
<div class="login">
    <form action="/Group820/login" method="post">
        用户名: <input type="text" name="adminName"> <br>
        密码: <input type="password" name="password"> <br>
        <button type="submit">提交</button>
    </form>
</div>

<footer>
    东北林业大学 <br>  820&copy;
</footer>
</body>
</html>
