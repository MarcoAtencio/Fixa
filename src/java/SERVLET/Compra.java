/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import DAO.ExportarPDF;
import DAO.carritoDAO;
import VO.carritoVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author win10
 */
public class Compra extends HttpServlet {

 
    public static final String DETAIL = "/Historial.jsp";
    public static final String DETAIL_VISTA = "/Lista_detalles.jsp";
    

    String estado = null;
    carritoDAO carritodao;
    List<carritoVO> productos = new ArrayList<>();
    String usuario; 
    
     public Compra() {
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
            out.println("<title>Servlet Compra</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Compra at " + request.getContextPath() + "</h1>");
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
        
        if(action.equalsIgnoreCase("viewdet")) {
            forward = DETAIL;
 
            productos = carritodao.getListCompra(usuario);
            request.setAttribute("productos", productos);
        }else if(action.equalsIgnoreCase("view_det")){
            forward = DETAIL_VISTA;
            int cod_car = Integer.parseInt(request.getParameter("id"));
            productos = carritodao.getLista_SubDetalles(cod_car, usuario);
            request.setAttribute("productos", productos);
        }else if(action.equalsIgnoreCase("pdf")){
            forward = DETAIL_VISTA;
            int cod_car = Integer.parseInt(request.getParameter("id"));
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
            String nomFile = dateFormat.format(new Date());
            String variable1 = "Content-Disposition";
            String variable2 = "attachment; filename=compra_"+nomFile+".pdf";
            productos = carritodao.getLista_SubDetalles(cod_car, usuario);
            request.setAttribute("productos", productos);
            ExportarPDF exp = new ExportarPDF();
            exp.exportPDF(response, productos);
            
            response.setHeader(variable1, variable2);
                
           
        }
        
        
       RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
