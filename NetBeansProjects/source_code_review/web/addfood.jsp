<%-- 
    Document   : analysis
    Created on : 2020/07/18, 21:51:10
    Author     : owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    /* layout */
    body,p,form,input{margin: 0}
    #form{
        width: 400px;
        margin: 30px auto;
        padding: 20px;
        border: 1px solid #555;
        height: 660;
    }

    form p{
        font-size: 14px;
    }

    .form-title{
        text-align: center;
    }

    .mail,.pass{
        margin-bottom: 20px;
        text-align:center;
    }

    .A{
        text-align:center;
        padding-bottom:15px;
    }
    .B{
        text-align:center;
        padding-bottom:15px;
    }
    .C{
        text-align:left;
        padding-bottom:15px;
    }

    .submit{
        text-align: left;

    }
    .check{
        text-align:center;
        padding-top:30px;
    }

    /* font */
    #form p{
        color: #077685;
        font-weight: bold;
    }

    #form .form-title{
        font-family: Arial;
        font-size: 30px;
        color: #4eb4c2;
    }

    /* skin */
    #form{
        -webkit-border-radius: 6px;
        -moz-border-radius: 6px;
        border-radius: 6px;
        -webkit-box-shadow: 0px 1px 10px #488a9e;
        -moz-box-shadow: 0px 1px 10px #488a9e;
        box-shadow: 0px 1px 10px #488a9e;
        border: solid #4eb4c2 1px;
        background: #fafafa;
    }

    #form .form-title{
        padding-bottom: 6px;
        border-bottom: 2px solid #4eb4c2;
        margin-bottom: 20px;
    }

    .submit input{
        font-family: Arial;
        color: #ffffff;
        font-size: 16px;
        padding-top: 10px;
        padding-right: 20px;
        padding-bottom: 10px;
        padding-left: 20px;
        text-decoration: none;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        border-radius: 10px;
        -webkit-box-shadow: 0px 8px 6px #e3e3e3;
        -moz-box-shadow: 0px 8px 6px #e3e3e3;
        box-shadow: 0px 8px 6px #e3e3e3;
        border: solid #f5fdff 4px;
        background: -webkit-gradient(linear, 0 0, 0 100%, from(#61c7e0), to(#418da8));
        background: -moz-linear-gradient(top, #61c7e0, #418da8);
    }
    .submit input:hover{
        background: #37a4bf;
    }

</style>

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="utf-8">
        <title>献立追加ページ</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    </head>
    <body>
        <div id="form">
            <p class="form-title">献立追加</p>
            <form type="post" action="admmenu.jsp">
                <p class="C">追加する今日の献立</p>
                <p class="C">名前</p>
                <p class="food"><input type="foodname" name="foodname" required/></p>
                <p class="C">カロリー</p>
                <p class="food"><input type="foodname" name="foodname" required/></p>
                <p class="C">タンパク質</p>
                <p class="food"><input type="foodname" name="foodname" required/></p>
                <p class="C">脂質</p>
                <p class="food"><input type="foodname" name="foodname" required/></p>
                <p class="C">炭水化物</p>
                <p class="food"><input type="foodname" name="foodname" required/></p>
                <p class="C">塩分</p>
                <p class="food"><input type="foodname" name="foodname" required/></p>
                <p class="C">メニュー画像</p>
                <input type="file" name="upfile" id="upfile" accept="image/*" />
                <p class="submit"><input type="submit" value="追加" /></p>
            </form>
            
            <hr color="#488a9e">
            
            <form type="post" action="admmenu.jsp">
                <p class="C">献立削除</p>
                <p class="delete"><input  type="delete" name="delete" required/></p>
                <p class="submit"><input type="submit" value="削除" /></p>
            </form>
        </div>
    </body>
</html>