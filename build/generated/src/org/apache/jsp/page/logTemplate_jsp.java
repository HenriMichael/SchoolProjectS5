package org.apache.jsp.page;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class logTemplate_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../asset/dist/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../asset/dist/css/style.css\">\r\n");
      out.write("    <title>");
      out.print( "Login "+title );
      out.write("</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"container w-75\">\r\n");
      out.write("        <div id=\"login\" class=\"row \">\r\n");
      out.write("            <div class=\"col col-md-7 description\">\r\n");
      out.write("                <h4>Bienvenu à l'école lore, ksdjs</h4>\r\n");
      out.write("                <p>Vous devrez être un membre de l'école (étudiant ou administration) pour pouvoir se connecter et acceder aux ressources de ce plateforme</p>\r\n");
      out.write("                <p>Veuillez informer les personnels en cas d'éventuel problème </p>\r\n");
      out.write("                <img src=\"../asset/img/education.png\" class=\"d-block mx-auto mt-5\" alt=\"Education\" width=\"400\" height=\"210\">\r\n");
      out.write("                <div id=\"switch\">\r\n");
      out.write("                    <h6>Se connecter en tant que :</h6>\r\n");
      out.write("                    <a href=\"logEtu.jsp\">Etudiant</a>\r\n");
      out.write("                    <a href=\"logProf.jsp\">Professeur</a>\r\n");
      out.write("                    <a href=\"logSec.jsp\">Secretaire</a>\r\n");
      out.write("                    <a href=\"logDir.jsp\">Directeur</a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col col-md-5 justify-content-center\" >\r\n");
      out.write("                <div class=\"login-form\">\r\n");
      out.write("                    <h4>Log in ");
      out.print( title );
      out.write("</h4>\r\n");
      out.write("                    <form action=\"\" method=\"post\">\r\n");
      out.write("                        <input type=\"text\" name=\"email\" id=\"\" placeholder=\"E-mail\">\r\n");
      out.write("                        <input type=\"password\" name=\"pswd\" id=\"\" placeholder=\"Mot de passe\">\r\n");
      out.write("                        <a href=\"\">Mot de passe oublié ?</a>\r\n");
      out.write("                        <input type=\"submit\" value=\"Connexion\">\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("</body>\r\n");
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
