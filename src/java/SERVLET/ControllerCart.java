/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import DAO.ProductoDAO;
import DAO.carritoDAO;
import VO.carritoVO;
import VO.productVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

@WebServlet(name = "ControllerCart", urlPatterns = {"/ControllerCart"})
public class ControllerCart extends HttpServlet {

    public static final String ADD = "/Carrito.jsp";
    
    String estado = null;
    carritoDAO carritodao;
    int cantidad = 0, cantNULL = 0;
    int codig = -1;
    List<carritoVO> productos = new ArrayList<>();
    String usuario; 
    int aux = 0;
    public ControllerCart() {
        carritodao = new carritoDAO();
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerCart at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String forward = "";
        String action = request.getParameter("action");
        HttpSession sesion = request.getSession();
        sesion.getAttribute("user");
        usuario = sesion.getAttribute("user").toString();

        if (action.equalsIgnoreCase("addcart")) {
            forward = ADD;
            int codProd = Integer.parseInt(request.getParameter("id"));
            //aux = carritodao.getValidadSTOCK(usuario, codProd);
            cantidad = carritodao.getCantidad(codProd, usuario);
            cantidad = cantidad + 1;
            carritodao.addCarrito(usuario, codProd, cantidad);
            estado = "addcart";
            
            productos = carritodao.getListCart(usuario);
            request.setAttribute("productos", productos);
            
        }else if(action.equalsIgnoreCase("vercart")) {
            
                forward = ADD;
                productos = carritodao.getListCart(usuario);
                estado = "vercart";
                request.setAttribute("productos", productos);
            
        }else if(action.equalsIgnoreCase("delet")) {
            int codProd = Integer.parseInt(request.getParameter("id"));
            forward = ADD;
            carritodao.Eliminar_ProductCart(codProd, usuario);
            productos = carritodao.getListCart(usuario);
            request.setAttribute("productos", productos);
        }
        
        
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        carritoVO imagenvo = new carritoVO();
        
        HttpSession sesion = request.getSession();
        sesion.getAttribute("user");
        usuario = sesion.getAttribute("user").toString();
        
        String name = request.getParameter("numero");
        imagenvo.setPago(name);
        
                 Date dNow = new Date();
                 SimpleDateFormat ft = 
                 new SimpleDateFormat ("MM/dd/yyyy");
                 String currentDate = ft.format(dNow);
        imagenvo.setFecha(currentDate);
        
        cantNULL = carritodao.getNULL(usuario);

        try {   
                carritodao.Comprar(imagenvo, usuario);
                
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
