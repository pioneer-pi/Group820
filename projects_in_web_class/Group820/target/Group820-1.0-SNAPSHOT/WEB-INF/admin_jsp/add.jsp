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
    <style>
        .header img{
            width: 100%;
            max-height: 300px;
        }

        footer {
            width:100%;
            text-align: center;
            justify-content: center;
            align-items: center;
            font-size: 12px;
            color: white;
            padding: 10px;

            background: #228B22;
        }
        .addform {
            position: relative;
            width: 600px;
            left: 500px;

        }
        .addform span{
            display: inline-block;
            width: 50px;
        }
        .addform input{
            width: 200px;
            padding: 5px 15px;
            margin: 20px;
        }
        .addform  textarea{
            width: 700px;
            height: 200px;
        }
        .addform button{
            margin: 10px;
            position: relative;
            left: 250px;
            text-align: center;
            padding: 10px 30px;
            background-color: #00BFFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s;
        }
        .addform button:hover{
            background-color: #4169E1;
            transform: scale(1.2);
            animation: shake 0.82s cubic-bezier(.36, .07, .19, .97) both;
        }

    </style>
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
    </div>
    <footer>
        <p>东北林业大学 <br>  820&copy;</p>
    </footer>
</div>
</body>
</html>
