package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Votaciones 2018</title>\n");
      out.write("         \n");
      out.write("        <script src=\"lib/amcharts/amcharts.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"lib/amcharts/serial.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"lib/amcharts/pie.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"lib/funciones.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"lib/jquery-3.3.1.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"lib/jspdf.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"lib/pdfFromHTML.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"banner\"></div>\n");
      out.write("        <div id=\"menu\">\n");
      out.write("            <a href=\"index.jsp?CONTENIDO=configuracion/candidatos.jsp\" >Candidatos</a>\n");
      out.write("            <a href=\"index.jsp?CONTENIDO=reportes/resultados.jsp\" >Resultados</a>\n");
      out.write("            <a href=\"index.jsp?CONTENIDO=indicadores/grafico.jsp\" >Grafico de Resultados</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div id=\"contenido\">");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, request.getParameter("CONTENIDO"), out, true);
      out.write("</div>\n");
      out.write("    </body>\n");
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
