<%-- 
    Document   : new_register
    Created on : 2020/07/16, 22:15:43
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

    .mail,.pass,.repass,.age,.sex{
        margin-bottom: 20px;
        text-align:center;
    }


    input[type="email"],
    input[type="password"],
    input[type="repassword"],
    input[type="age"],
    input[type="sex"]{
        width: 300px;
        padding: 4px;
        font-size: 14px;
    }
    .A,.B,.C,.D,.E{
        text-align:center;
        padding-bottom:15px;
    }

    .submit{
        text-align: center;

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
<html>
    <head>
        <meta charset="utf-8">
        <title>会員登録ページ</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    </head>
    <body>
        <div id="form">
            <p class="form-title">会員登録</p>
            <form type="post" action="">
                <p class="A">メールアドレス</p>
                <p class="mail"><input type="email" name="mail" required/></p>
                <p class="B">パスワード</p>
                <p class="pass"><input type="password" name="pass" required/></p>
                <p class="C">パスワードの確認</p>
                <p class="repass"><input type="password" name="repass" required/></p>
                <p class="D">年齢</p>
                <p class="age"><input name="age" required/></p>
                <p class="E">性別</p>
                <p class="sex"><input name="sex" required/></p>
                <p class="submit"><input type="submit" value="送信" /></p>
            </form>
        </div>
    </body>
</html>
