/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import DAO.ProductoDAO;
import static SERVLET.ControllerImagen.EDIT;
import static SERVLET.ControllerImagen.INSERT;
import static SERVLET.ControllerImagen.LIST_STUDENT;
import VO.clienteVO;
import VO.productVO;
import com.sun.javafx.scene.control.skin.VirtualFlow;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "ControllerList", urlPatterns = {"/ControllerList"})
public class ControllerList extends HttpServlet {

    public static final String LIST = "/prodxcat.jsp";

   
    String estado = null;
    ProductoDAO imagendao;
    String codig = "";
    List<productVO> productos = new ArrayList<>();
    
    
     public ControllerList() {
        imagendao = new ProductoDAO();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerList</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerList at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("listar")) {
            forward = LIST;
            String codCat = request.getParameter("cod");
            productos = imagendao.listar_Cat(codCat);
            codig = codCat;
            request.setAttribute("productos", productos);
        }else if(action.equalsIgnoreCase("buscar")) {
            forward = LIST;
            String nombrePro = request.getParameter("nombre");
            productos = imagendao.listar_Prod(nombrePro);
            codig = nombrePro;
            request.setAttribute("productos", productos);
        }
        

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
