package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public final class addproducto_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->\n");
      out.write("        <title>Agregar Producto</title>\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <link href=\"file/style.css\" rel=\"stylesheet\">\n");
      out.write("        <script>\n");
      out.write("            function readURL(input) {\n");
      out.write("                if (input.files && input.files[0]) {\n");
      out.write("                    var reader = new FileReader();\n");
      out.write("\n");
      out.write("                    reader.onload = function (e) {\n");
      out.write("                        $('#imageResult')\n");
      out.write("                                .attr('src', e.target.result);\n");
      out.write("                    };\n");
      out.write("                    reader.readAsDataURL(input.files[0]);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            $(function () {\n");
      out.write("                $('#upload').on('change', function () {\n");
      out.write("                    readURL(input);\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("\n");
      out.write("            var input = document.getElementById('upload');\n");
      out.write("            var infoArea = document.getElementById('upload-label');\n");
      out.write("\n");
      out.write("            input.addEventListener('change', showFileName);\n");
      out.write("            function showFileName(event) {\n");
      out.write("                var input = event.srcElement;\n");
      out.write("                var fileName = input.files[0].name;\n");
      out.write("                infoArea.textContent = 'File name: ' + fileName;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class = \"fondo2\">\n");
      out.write("        <div class=\"vertical-nav bg-white\" id=\"sidebar\">\n");
      out.write("            <div class=\"py-4 px-3 mb-4 bg-light\">\n");
      out.write("                 <div class=\"media d-flex align-items-center\" style=\"color: blue\"><img src=\"img/logo.png\" alt=\"...\" width=\"65\" class=\"mr-3 rounded-circle img-thumbnail shadow-sm\">\n");
      out.write("                    <div class=\"media-body\">\n");
      out.write("                        <h4 class=\"m-0\">FIXA - ADMIN</h4>\n");
      out.write("                        <H6 class=\"m-0\" >PANEL DE CONTROL</H6>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("            <ul class=\"nav flex-column bg-white mb-0\">\n");
      out.write("                <p class=\"text-dark font-weight-bold text-uppercase px-3 small pb-4 mb-0\" style=\"color: \" >Menu Principal</p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a href=\"administrador.jsp\" class=\"nav-link text-dark font-italic bg-light\">\n");
      out.write("                        <i class=\"fa fa-th-large mr-3 text-primary fa-fw\"></i>\n");
      out.write("                        Inicio\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a href=\"index.jsp\" class=\"nav-link text-dark font-italic\">\n");
      out.write("                        <i class=\"fa fa-archive mr-3 text-primary fa-fw\"></i>\n");
      out.write("                        Vista de Pagina\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a href=\"ControllerImagen?action=insert\" class=\"nav-link text-dark font-italic\">\n");
      out.write("                        <i class=\"fa fa-archive mr-3 text-primary fa-fw\"></i>\n");
      out.write("                        Registrar Producto\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a href=\"producto.jsp\" class=\"nav-link text-dark font-italic\">\n");
      out.write("                        <i class=\"fa fa-archive  mr-3 text-primary fa-fw\"></i>\n");
      out.write("                        Listar Productos\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("\n");
      out.write("            <p class=\"text-gray font-weight-bold text-uppercase px-3 small py-4 mb-0\">Personal</p>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <ul class=\"nav flex-column bg-white mb-0\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("\n");
      out.write("                    ");

                        HttpSession sesion = request.getSession();
                        String usuario;
                        String nivel;

                        if (sesion.getAttribute("user") != null && sesion.getAttribute("nivel") != null) {
                            usuario = sesion.getAttribute("user").toString();
                            nivel = sesion.getAttribute("nivel").toString();
                            out.print("<a href='LoginFixa.jsp?cerrar=true'  class='nav-link text-dark font-italic' ><i class='fa fa-id-card-o  mr-3 text-primary fa-fw'></i>Cerrar Sesion : " + usuario + " </a>");
                        } else {
                            out.print("<script>location.replace('LoginFixa.jsp');</script>");
                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <!-- End vertical navbar -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Page content holder  <div class=\"container py-5\"> -->\n");
      out.write("        <div class=\"page-content p-5\" id=\"content\">\n");
      out.write("            <button id=\"sidebarCollapse\" type=\"button\" class=\"btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4\">\n");
      out.write("                <i class=\"fa fa-bars mr-2\"></i>\n");
      out.write("                <small class=\"text-uppercase font-weight-bold\">Menu</small></button>\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-10 mx-auto\">\n");
      out.write("                    <form name=\"Agregar\" action=\"ControllerImagen\" method=\"POST\" class = \"form-horizonta\" enctype=\"multipart/form-data\">\n");
      out.write("\n");
      out.write("                        <fieldset class=\"border p-2 border-dark\">\n");
      out.write("                            <legend class=\"w-auto\" style=\"color: white\">Producto</legend>\n");
      out.write("\n");
      out.write("                            <div class=\"form-group row\">\n");
      out.write("                                <div class= \"col-sm-6\">\n");
      out.write("                                    <label for=\"nombre\" style=\"color: white\">Nombre del producto</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"nombre\" \n");
      out.write("                                           placeholder=\"Ingresar nombre\" required>\n");
      out.write("                                </div>\n");
      out.write("                                <div class= \"col-sm-6\">\n");
      out.write("                                    <label for=\"categoria\" style=\"color: white\">Categoria</label>\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                       <div class=\"form-group\">\n");
      out.write("                                <select class=\"form-control\" id=\"exampleFormControlSelect1\" name=\"categoria\" style=\"color: black\">\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </select>\n");
      out.write("                            </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>  \n");
      out.write("                            <div class=\"form-group row\">\n");
      out.write("                                <div class= \"col-sm-6\">\n");
      out.write("                                    <label for=\"precio\" style=\"color: white\">Precio</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"precio\" \n");
      out.write("                                           placeholder=\"ingresar precio\" required>  \n");
      out.write("                                </div>\n");
      out.write("                                <div class= \"col-sm-6\">\n");
      out.write("                                    <label for=\"cantidad\" style=\"color: white\">Cantidad</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" name=\"cantidad\" \n");
      out.write("                                           placeholder=\"Ingresar cantidad\" required>  \n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class= \"col-sm-6\">\n");
      out.write("                                <label for=\"modelo\" style=\"color: white\">Descripcion</label>\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"modelo\" \n");
      out.write("                                       placeholder=\"Ingresar descripcion\">  \n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"row py-4 \">\n");
      out.write("                                <div class=\"col-lg-6 mx-auto \">\n");
      out.write("\n");
      out.write("                                    <div class=\"input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm  \">\n");
      out.write("                                        <input type=\"file\" onchange=\"readURL(this);\" class=\"\" style=\"opacity: 1;\" name=\"upload\">\n");
      out.write("                                  \n");
      out.write("                                      \n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <p class=\"font-italic text-white text-center\">La imagen se cargara debajo</p>\n");
      out.write("                                    <div class=\"image-area mt-4\"><img id=\"imageResult\" src=\"#\" alt=\"\" class=\"img-fluid rounded shadow-sm mx-auto d-block\"></div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </fieldset>\n");
      out.write("\n");
      out.write("                        <br/>\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\" name=\"action\">Registrar</button>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div></div></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("        <script src=\"js/jquery-3.5.1.min.js\"></script> \n");
      out.write("        <script src=\"js/jquery-3.3.1.slim.min.js\"></script>\n");
      out.write("        <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("                                            $(\"#sidebarCollapse\").click(function (e) {\n");
      out.write("                                                e.preventDefault();\n");
      out.write("                                                $('#sidebar, #content').toggleClass('active');\n");
      out.write("                                            });\n");
      out.write("        </script>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("p");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${productos}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                    <option  value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
