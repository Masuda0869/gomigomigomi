<%-- 
    Document   : login
    Created on : 2020/07/16, 22:06:10
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


    input[type="email"],
    input[type="password"] {
        width: 300px;
        padding: 4px;
        font-size: 14px;
    }
    .A{
        text-align:center;
        padding-bottom:15px;
    }
    .B{
        text-align:center;
        padding-bottom:15px;
    }

    .submit{
        text-align: center;

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
        <title>ログインページ</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    </head>
    <body>
        <div id="form">
            <p class="form-title">ログイン</p>
            <form type="post" action="login_verify.jsp">
                <p class="A">メールアドレス</p>
                <p class="mail"><input type="email" name="mail" required/></p>
                <p class="B">パスワード</p>
                <p class="pass"><input type="password" name="pass" required/></p>

                <p class="submit"><input type="submit" value="送信" /></p>
            </form>
            <p class="check"><a href="new_register.jsp">新規会員登録</a></p>
        </div>
    </body>
</html>
