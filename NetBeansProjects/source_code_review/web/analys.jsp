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
        width: 600px;
        margin: 30px auto;
        padding: 20px;
        border: 1px solid #555;
        height: 550;
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
        <title>自己分析ページ</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />
    </head>
    <body>
        <div id="form">
            <p class="form-title">自己分析</p>
            <canvas id="myRaderChart"></canvas>
  <!-- CDN -->
  
                <p class='A'>摂取カロリー；999kcal</p>
                <p class='A'>食費；999円</p>

 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"></script>

  <script>
    var ctx = document.getElementById("myRaderChart");
    var myRadarChart = new Chart(ctx, {
        type: 'radar', 
        data: { 
            labels: ["ビタミンB2", "ビタミンA1", "ビタミンB1", "ビタミンC1", "ビタミンH1Z1", "ビタミン"],
            datasets: [{
                label: '今月のデータ',
                data: [92, 72, 86, 74, 86, 80],
                backgroundColor: 'RGBA(20,20,110, 0.5)',
                borderColor: '#66CCFF',
                borderWidth: 1,
                pointBackgroundColor: 'RGB(46,106,177)'
            }]
        },
        options: {
            title: {
                display: true
                
            },
            scale:{
                ticks:{
                    suggestedMin: 0,
                    suggestedMax: 100,
                    stepSize: 10,
                    
                }
            }
        }
    });
    </script>
 <canvas id="myChart" width="400" height="50"></canvas>
 

            <form type="post" action="menu.jsp">
                <p class="submit"><input type="submit" value="トップに戻る" /></p>
            </form>
        </div>
    </body>
</html>