
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


    <head>
        <style>
            /* layout */
            body,p,form,input{margin: 0}
            #form{
                width: 600px;
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
            .D{
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
                color: #37a4bf;
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
                border: solid #37a4bf 4px;
                background: -webkit-gradient(linear, 0 0, 0 100%, from(#61c7e0), to(#418da8));
                background: -moz-linear-gradient(top, #61c7e0, #418da8);
            }
            .submit input:hover{
                background: #37a4bf;
                color: #ffffff;
                border-color: #f5fbff
            }
            .table {
                border-collapse: collapse;
                border: solid 2px blue;
            }
            .table th, table td {
                border: dashed 1px blue;

            }
        </style>

        <%--  ファイルの名前DBから引っ張ってくる
        --%>
        <jsp:useBean id="file" scope = "session" class="menu_info.menu_all"/>

        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">

        <title>献立閲覧ページ</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    </head>
    <body>
        <div id="form">
            <p class="form-title">献立閲覧</p>
            <TABLE  align="center" >
                <%--  件数の取得関数 --%>    
                <%
                    file.Menu_AllAccess();
                    for (int i = 0; i < file.getNum(); i++) {
                %>
                <td><%--  名前の取得--%>
                    <p><%= file.getMenu_name(i)%></p>
                    <%--  画像の表示--%>
                    <% 
                    String img = file.getImg_path(i);
                    System.out.println(img);
                    %>
                    <img src="<%=img%>" width="200" height="125" >
                    
                    <form method="post" action="ticket.jsp">
                        <%--  メニューの番号を投げる--%>
                        <input type="hidden" name="menu_num" value="<%= i%>" />
                        <p class="submit"><input type="submit" value="詳細" /></p>
                    </form>
                </td>
               
                <% if(i%2==0){ %>
                    <tr></tr>
                    <%}
                    }
                %> 
            </TABLE>
        </div>
        <p class="check"><a href="menu.jsp">ホームに戻る</a></p>
    </body>
</html>