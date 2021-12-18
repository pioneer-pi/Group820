<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/11
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>commodity</title>
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
        footer {
            position: relative;
            bottom: 0;
            width:100%;
            text-align: center;
            font-size: 12px;
            color: white;
            padding: 10px;
            background: #228B22;
        }

        /*
         Card展示图片
        */
        .blank2{
            display: flex;
            flex-direction: row;
            align-items: center;
            flex-wrap: wrap;
        }
        .blank2 .card{
            margin: 40px 20px;
            width: 200px;
            height: 300px;
            text-align: center;
            /*box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);*/
        }
        .blank2 .card:hover{
            box-shadow: 0 8px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
        }
        .blank2 .card .img img{
            width: 200px;
            height: 300px;
            object-fit: cover;
            border-radius: 5px;
        }
        .blank2 .card .container{
            padding: 10px;
        }
        .blank2 .card .container p{
            text-align: center;
        }
        .blank2 a{
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <img src="/Group820/resources/picture.jpg" alt="picture1">
    </div>
    <div class="nav">
        <%@include file="/jsp/navigation.jsp" %>
    </div>

    <div class="main">
        <div class="blank2">
            <c:forEach items="${goods}" var="g">
                <c:if test="${g.gdelete==0}">
                    <a href="/Group820/listGoodsByGid?Gid=${g.gid}">
                        <div class="card">
                            <div class="img">
                                <img src="/Group820/resources/goodsimg/goods_${g.gid}.jpg" alt="${g.gname}">
                            </div>
                            <div class="container">
                                <p>${g.gname}:${g.gprice}元/斤</p>
                            </div>
                        </div>
                    </a>
                </c:if>
            </c:forEach>
        </div>
    </div>

    <footer>
        东北林业大学 <br>  820&copy;
    </footer>
</div>
</body>
</html>
