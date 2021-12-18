<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/12
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
    <link rel="stylesheet" href="/Group820/css/cancel.css">
    <link rel="stylesheet" href="/Group820/css/update.css">
</head>
<body>
<div class="container">
    <div class="header ">
        <img src="/Group820/resources/picture.jpg" alt="picture1">
    </div>
    <div class="nav">
        <%@include file="/jsp/navigation.jsp" %>
    </div><br>
    <div class="updateform">
        <form action="/Group820/admin/update" method="post">
            <label><span>Gid: </span><input type="text" name="Gid" value="${goods.gid}"></label><br>
            <label><span>Gname: </span><input type="text" name="Gname" value="${goods.gname}"></label><br>
            <label><span>Gprice: </span><input type="text" name="Gprice" value="${goods.gprice}"></label><br>
            <label><span>Gtype: </span><input type="text" name="Gtype" value="${goods.gtype}"></label><br>
            <label><span>Gdelete:</span><input type="text" name="Gdelete" value="${goods.gdelete}"></label><br>
            <label><span>Gintroduce:</span><textarea name="Gintroduce" >${goods.gintroduce}</textarea></label><br>

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
