package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<!--[if IE 8]> <html lang=\"en\" class=\"ie8\"> <![endif]-->\n");
      out.write("<!--[if !IE]><!-->\n");
      out.write("<html lang=\"en\">\n");
      out.write("<!--<![endif]-->\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\" />\n");
      out.write("\t<title>Insurance | Login Page</title>\n");
      out.write("\t<meta content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\" name=\"viewport\" />\n");
      out.write("\t<meta content=\"\" name=\"description\" />\n");
      out.write("\t<meta content=\"\" name=\"author\" />\n");
      out.write("\t\n");
      out.write("\t<!-- ================== BEGIN BASE CSS STYLE ================== -->\n");
      out.write("\t<link href=\"http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700\" rel=\"stylesheet\" />\n");
      out.write("\t<link href=\"assets/plugins/jquery-ui/jquery-ui.min.css\" rel=\"stylesheet\" />\n");
      out.write("\t<link href=\"assets/plugins/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("\t<link href=\"assets/plugins/font-awesome/5.0/css/fontawesome-all.min.css\" rel=\"stylesheet\" />\n");
      out.write("\t<link href=\"assets/plugins/animate/animate.min.css\" rel=\"stylesheet\" />\n");
      out.write("\t<link href=\"assets/css/default/style.min.css\" rel=\"stylesheet\" />\n");
      out.write("\t<link href=\"assets/css/default/style-responsive.min.css\" rel=\"stylesheet\" />\n");
      out.write("\t<link href=\"assets/css/default/theme/black.css\" rel=\"stylesheet\" id=\"theme\" />\n");
      out.write("\t<!-- ================== END BASE CSS STYLE ================== -->\n");
      out.write("\t\n");
      out.write("\t<!-- ================== BEGIN BASE JS ================== -->\n");
      out.write("\t<script src=\"assets/plugins/pace/pace.min.js\"></script>\n");
      out.write("\t<!-- ================== END BASE JS ================== -->\n");
      out.write("</head>\n");
      out.write("<body class=\"pace-top bg-white\">\n");
      out.write("\t<!-- begin #page-loader -->\n");
      out.write("\t<div id=\"page-loader\" class=\"fade show\"><span class=\"spinner\"></span></div>\n");
      out.write("\t<!-- end #page-loader -->\n");
      out.write("\t\n");
      out.write("\t<!-- begin #page-container -->\n");
      out.write("\t<div id=\"page-container\" class=\"fade\">\n");
      out.write("\t    <!-- begin login -->\n");
      out.write("        <div class=\"login login-with-news-feed\">\n");
      out.write("            <!-- begin news-feed -->\n");
      out.write("            <div class=\"news-feed\">\n");
      out.write("                <div class=\"news-image\" style=\"background-image: url(assets/login-cover.jpeg)\" style=\"object-fit: contain\"></div>\n");
      out.write("                <div class=\"news-caption\">\n");
      out.write("                    <h4 class=\"caption-title\"><b>Insurance </b> Management System </h4>\n");
      out.write("                    <p>\n");
      out.write("                        Leading you to better health\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- end news-feed -->\n");
      out.write("            <!-- begin right-content -->\n");
      out.write("            <div class=\"right-content\">\n");
      out.write("                <!-- begin login-header -->\n");
      out.write("                <div class=\"login-header\">\n");
      out.write("                    <div class=\"brand\">\n");
      out.write("                        <b>Insurance </b> Management System\n");
      out.write("                        <small>Leading you to better health</small>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"icon\">\n");
      out.write("                        <i class=\"fa fa-sign-in\"></i>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- end login-header -->\n");
      out.write("                <!-- begin login-content -->\n");
      out.write("                <div class=\"login-content\">\n");
      out.write("                    <form  method=\"POST\" class=\"margin-bottom-0\" id=\"login_form\">\n");
      out.write("                        <div class=\"form-group m-b-15\">\n");
      out.write("                            <input type=\"text\" class=\"form-control form-control-lg\" placeholder=\"Username\" name=\"username_txt\" id=\"username_txt\" required />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group m-b-15\">\n");
      out.write("                            <input type=\"password\" class=\"form-control form-control-lg\" placeholder=\"Password\"  name=\"password_txt\" id=\"password_txt\" required />\n");
      out.write("                        </div>\n");
      out.write("                  \n");
      out.write("                        <div class=\"login-buttons\">\n");
      out.write("                            <button style=\"background-color: #4169E1; color: white\"  class=\"btn btn-block btn-lg\" >Sign me in</button>\n");
      out.write("                        </div>\n");
      out.write("                      <br>\n");
      out.write("                      <br>\n");
      out.write("                      <a href='forgot_password.jsp'> <h6>Forgot Password?</h6></a>\n");
      out.write("                        <hr />\n");
      out.write("                      \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <!-- end login-content -->\n");
      out.write("            </div>\n");
      out.write("            <!-- end right-container -->\n");
      out.write("        </div>\n");
      out.write("        <!-- end login -->\n");
      out.write("      \n");
      out.write("        <!-- end theme-panel -->\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end page container -->\n");
      out.write("\t\n");
      out.write("\t<!-- ================== BEGIN BASE JS ================== -->\n");
      out.write("\t<script src=\"assets/plugins/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("\t<script src=\"assets/plugins/jquery-ui/jquery-ui.min.js\"></script>\n");
      out.write("\t<script src=\"assets/plugins/bootstrap/4.0.0/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\t<!--[if lt IE 9]>\n");
      out.write("\t\t<script src=\"assets/crossbrowserjs/html5shiv.js\"></script>\n");
      out.write("\t\t<script src=\"assets/crossbrowserjs/respond.min.js\"></script>\n");
      out.write("\t\t<script src=\"assets/crossbrowserjs/excanvas.min.js\"></script>\n");
      out.write("\t<![endif]-->\n");
      out.write("\t<script src=\"assets/plugins/slimscroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("\t<script src=\"assets/plugins/js-cookie/js.cookie.js\"></script>\n");
      out.write("\t<script src=\"assets/js/theme/default.min.js\"></script>\n");
      out.write("\t<script src=\"assets/js/apps.min.js\"></script>\n");
      out.write("\t<!-- ================== END BASE JS ================== -->\n");
      out.write("        \n");
      out.write("        <!-- ================== BEGIN PAGE LEVEL JS ================== -->\n");
      out.write("\t<script src=\"assets/plugins/gritter/js/jquery.gritter.js\"></script>\n");
      out.write("\t<script src=\"assets/plugins/bootstrap-sweetalert/sweetalert.min.js\"></script>\n");
      out.write("\t<script src=\"assets/js/demo/ui-modal-notification.demo.min.js\"></script>\n");
      out.write("\t<!-- ================== END PAGE LEVEL JS ================== -->\n");
      out.write("\n");
      out.write("\t<script>\n");
      out.write("\t\t$(document).ready(function() {\n");
      out.write("\t\t\tApp.init();\n");
      out.write("                        Notification.init();\n");
      out.write("                        \n");
      out.write("                        $(\"#login_form\").submit(function(e){\n");
      out.write("                            e.preventDefault();\n");
      out.write("                            user=$(\"#username_txt\").val();\n");
      out.write("                            pass=$(\"#password_txt\").val();\n");
      out.write("                            if(user != \"\" && pass != \"\"){\n");
      out.write("                                $.ajax({\n");
      out.write("                                        url:\"sign_in\",\n");
      out.write("                                        type:'post',\n");
      out.write("                                        data:$(\"#login_form\").serialize(),\n");
      out.write("                                        success:function(data){\n");
      out.write("                                               \n");
      out.write("                                               \n");
      out.write("                                               if(data == 1){\n");
      out.write("                                                   swal(\"Successfully Login!\", \"\", \"success\");\n");
      out.write("                                                   location.href='index.jsp';\n");
      out.write("                                               }else{\n");
      out.write("                                                   swal(\"Incorrect username and password!\", \"\", \"error\");\n");
      out.write("                                                   $(\"input[type=text],input[type=password] \").val(\"\");\n");
      out.write("                                               }\n");
      out.write("                                        },\n");
      out.write("                                        error: function(err){\n");
      out.write("                                               alert(\"error\");\n");
      out.write("                                        }\n");
      out.write("                                        \n");
      out.write("                                });    \n");
      out.write("                            }else{\n");
      out.write("                                \n");
      out.write("                            }\n");
      out.write("                           \n");
      out.write("                            \n");
      out.write("                        });\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
