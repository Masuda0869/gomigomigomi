package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addfood_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    /* layout */\n");
      out.write("    body,p,form,input{margin: 0}\n");
      out.write("    #form{\n");
      out.write("        width: 400px;\n");
      out.write("        margin: 30px auto;\n");
      out.write("        padding: 20px;\n");
      out.write("        border: 1px solid #555;\n");
      out.write("        height: 660;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    form p{\n");
      out.write("        font-size: 14px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .form-title{\n");
      out.write("        text-align: center;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .mail,.pass{\n");
      out.write("        margin-bottom: 20px;\n");
      out.write("        text-align:center;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .A{\n");
      out.write("        text-align:center;\n");
      out.write("        padding-bottom:15px;\n");
      out.write("    }\n");
      out.write("    .B{\n");
      out.write("        text-align:center;\n");
      out.write("        padding-bottom:15px;\n");
      out.write("    }\n");
      out.write("    .C{\n");
      out.write("        text-align:left;\n");
      out.write("        padding-bottom:15px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .submit{\n");
      out.write("        text-align: left;\n");
      out.write("\n");
      out.write("    }\n");
      out.write("    .check{\n");
      out.write("        text-align:center;\n");
      out.write("        padding-top:30px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* font */\n");
      out.write("    #form p{\n");
      out.write("        color: #077685;\n");
      out.write("        font-weight: bold;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    #form .form-title{\n");
      out.write("        font-family: Arial;\n");
      out.write("        font-size: 30px;\n");
      out.write("        color: #4eb4c2;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* skin */\n");
      out.write("    #form{\n");
      out.write("        -webkit-border-radius: 6px;\n");
      out.write("        -moz-border-radius: 6px;\n");
      out.write("        border-radius: 6px;\n");
      out.write("        -webkit-box-shadow: 0px 1px 10px #488a9e;\n");
      out.write("        -moz-box-shadow: 0px 1px 10px #488a9e;\n");
      out.write("        box-shadow: 0px 1px 10px #488a9e;\n");
      out.write("        border: solid #4eb4c2 1px;\n");
      out.write("        background: #fafafa;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    #form .form-title{\n");
      out.write("        padding-bottom: 6px;\n");
      out.write("        border-bottom: 2px solid #4eb4c2;\n");
      out.write("        margin-bottom: 20px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .submit input{\n");
      out.write("        font-family: Arial;\n");
      out.write("        color: #ffffff;\n");
      out.write("        font-size: 16px;\n");
      out.write("        padding-top: 10px;\n");
      out.write("        padding-right: 20px;\n");
      out.write("        padding-bottom: 10px;\n");
      out.write("        padding-left: 20px;\n");
      out.write("        text-decoration: none;\n");
      out.write("        -webkit-border-radius: 10px;\n");
      out.write("        -moz-border-radius: 10px;\n");
      out.write("        border-radius: 10px;\n");
      out.write("        -webkit-box-shadow: 0px 8px 6px #e3e3e3;\n");
      out.write("        -moz-box-shadow: 0px 8px 6px #e3e3e3;\n");
      out.write("        box-shadow: 0px 8px 6px #e3e3e3;\n");
      out.write("        border: solid #f5fdff 4px;\n");
      out.write("        background: -webkit-gradient(linear, 0 0, 0 100%, from(#61c7e0), to(#418da8));\n");
      out.write("        background: -moz-linear-gradient(top, #61c7e0, #418da8);\n");
      out.write("    }\n");
      out.write("    .submit input:hover{\n");
      out.write("        background: #37a4bf;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"ja\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>献立追加ページ</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" media=\"all\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"form\">\n");
      out.write("            <p class=\"form-title\">献立追加</p>\n");
      out.write("            <form type=\"post\" action=\"admmenu.jsp\">\n");
      out.write("                <p class=\"C\">追加する今日の献立</p>\n");
      out.write("                <p class=\"C\">名前</p>\n");
      out.write("                <p class=\"food\"><input type=\"foodname\" name=\"foodname\" required/></p>\n");
      out.write("                <p class=\"C\">カロリー</p>\n");
      out.write("                <p class=\"food\"><input type=\"foodname\" name=\"foodname\" required/></p>\n");
      out.write("                <p class=\"C\">タンパク質</p>\n");
      out.write("                <p class=\"food\"><input type=\"foodname\" name=\"foodname\" required/></p>\n");
      out.write("                <p class=\"C\">脂質</p>\n");
      out.write("                <p class=\"food\"><input type=\"foodname\" name=\"foodname\" required/></p>\n");
      out.write("                <p class=\"C\">炭水化物</p>\n");
      out.write("                <p class=\"food\"><input type=\"foodname\" name=\"foodname\" required/></p>\n");
      out.write("                <p class=\"C\">塩分</p>\n");
      out.write("                <p class=\"food\"><input type=\"foodname\" name=\"foodname\" required/></p>\n");
      out.write("                <p class=\"C\">メニュー画像</p>\n");
      out.write("                <input type=\"file\" name=\"upfile\" id=\"upfile\" accept=\"image/*\" />\n");
      out.write("                <p class=\"submit\"><input type=\"submit\" value=\"追加\" /></p>\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("            <hr color=\"#488a9e\">\n");
      out.write("            \n");
      out.write("            <form type=\"post\" action=\"admmenu.jsp\">\n");
      out.write("                <p class=\"C\">献立削除</p>\n");
      out.write("                <p class=\"delete\"><input  type=\"delete\" name=\"delete\" required/></p>\n");
      out.write("                <p class=\"submit\"><input type=\"submit\" value=\"削除\" /></p>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
