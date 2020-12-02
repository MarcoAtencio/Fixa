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
/**
 *
 * @author win10
 */

@WebServlet(name = "ControllerUsuario", urlPatterns = {"/ControllerUsuario"})
public class ControllerUsuario extends HttpServlet {
    
    public static final String EDITUSER = "/perfilusuario.jsp";
    public static final String CONFG = "/configusuario.jsp";
   
    String estado = null;
    ProductoDAO imagendao;
    clienteVO cli;
    String codig = "";
    List<productVO> productos = new ArrayList<>();
    String usuario;        
    
    
     public ControllerUsuario() {
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
            out.println("<title>Servlet ControllerUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion = request.getSession();
        sesion.getAttribute("user");
        usuario = sesion.getAttribute("user").toString();
        
        String forward = "";
        String action = request.getParameter("action");
        
        if(action.equalsIgnoreCase("editUser")){
            forward = EDITUSER;
            
            estado = "editUser";
            cli = imagendao.getDatosUser(usuario);
            request.setAttribute("usua", cli);
        }else if(action.equalsIgnoreCase("edit2")){
            forward = CONFG;
            
            estado = "editCor";
            
            cli = imagendao.getDatosUser(usuario);
            request.setAttribute("usua", cli);
        }
        
        
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        clienteVO cli = new clienteVO();
       
           
        try {
             if (estado.equalsIgnoreCase("editUser")) {
                    String name = request.getParameter("nombre");
                    cli.setNombre(name);

                    String apell = request.getParameter("apell");
                    cli.setApellido(apell);

                    String direc = request.getParameter("direc");
                    cli.setDireccion(direc);

                    String telef = request.getParameter("telef"); 
                    cli.setTelef(telef);
        
                imagendao.EditarUser(cli, usuario);
                
            }else if(estado.equalsIgnoreCase("editCor")) {
                    String name = request.getParameter("correo");
                    cli.setCorreo(name);

                    String apell = request.getParameter("pass1");
                    cli.setContrasenia(apell);

                imagendao.EditarUser2(cli, usuario);
             }
            
        } catch (Exception ex) {
            System.out.println("textos: "+ex.getMessage());
        }
        
        RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
        view.forward(request, response);
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
