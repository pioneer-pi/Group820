<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/11
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/Group820/css/cancel.css">
    <link rel="stylesheet" href="/Group820/css/add.css">
</head>
<body>
<div class="container">
    <div class="header ">
        <img src="/Group820/resources/picture.jpg" alt="picture1">
    </div>
    <div class="nav">
        <%@include file="/jsp/navigation.jsp" %>
    </div><br>
    <div class="addform">
        <form action="/Group820/admin/addGoods" method="post">
            <label><span>Gid: </span><input type="text" name="Gid" required></label><br>
            <label><span>Gname: </span><input type="text" name="Gname" required></label><br>
            <label><span>Gprice: </span><input type="text" name="Gprice" required></label><br>
            <label><span>Gtype: </span><input type="text" name="Gtype" required></label><br>
<%--            Gintroduce: <input type="text" name="Gintroduce"><br>--%>
            <label><span>Gintroduce: </span><textarea name="Gintrodue" required></textarea></label><br>

            <button type="submit">提交</button>
        </form>
        <div class="cancel">
            <a href="/Group820/admin/welcome">取消</a>
        </div>
    </div>
    <footer>
        <p>东北林业大学 <br>  820&copy;</p>
    </footer>
</div>
</body>
</html>
