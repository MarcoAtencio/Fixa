package SERVLET;


import Conexion.sql;
import DAO.ProductoDAO;
import VO.productVO;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "ControllerImagen", urlPatterns = {"/ControllerImagen"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
                    maxFileSize = 1024 * 1024 * 10, 
                    maxRequestSize = 1024 * 1024 * 50)    // upload file's size up to 16MB

public class ControllerImagen extends HttpServlet {

    public static final String LIST_STUDENT = "/producto.jsp";
    public static final String EDIT = "/editproducto.jsp";
    public static final String INSERT = "/addproducto.jsp";

    String estado = null;
    ProductoDAO imagendao;
    int id_pdf = -1;
    ArrayList<String> cate = new ArrayList<String>();
    
    public ControllerImagen() {
        imagendao = new ProductoDAO();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")) {
            forward = LIST_STUDENT;
            int studentId = Integer.parseInt(request.getParameter("id"));
            imagendao.Eliminar_ProductVO(studentId);
        }
        if (action.equalsIgnoreCase("edit")) {
            forward = EDIT;
            int studentIdM = Integer.parseInt(request.getParameter("id"));
            productVO imagenvo = imagendao.getDatosID(studentIdM);
            id_pdf = studentIdM;
            request.setAttribute("row", imagenvo);
            estado = "edit";
        } else if (action.equalsIgnoreCase("insert")) {
            forward = INSERT;
            
            cate = imagendao.listarCat();
            request.setAttribute("productos", cate);
            estado = "insert";
        }


        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        productVO imagenvo = new productVO();
        
        
        String name = request.getParameter("nombre");
        imagenvo.setNombre(name);
        
        String categoria = request.getParameter("categoria");
        imagenvo.setCategoria(categoria);
            
        Double precio = Double.parseDouble(request.getParameter("precio"));
        imagenvo.setPrecio(precio);
        
        int cantidad = Integer.parseInt(request.getParameter("cantidad")); 
        imagenvo.setCantidad(cantidad);
        
        String modelo = request.getParameter("modelo");
        imagenvo.setModelo(modelo);   
            
        Part archivo = request.getPart("upload"); 
        String context = extractFileName(archivo); 
        
        String savePath = "img/" +  context;
        /*File fileSaveDir = new File(savePath);
        archivo.write(savePath + File.separator);*/
        
        imagenvo.setFoto(savePath);
           
        try {
             if (estado.equalsIgnoreCase("insert")) {
             imagendao.Agregar_ProductVO(imagenvo);
            }else if(estado.equalsIgnoreCase("edit")){
             imagenvo.setCodigo(id_pdf);
             imagendao.Modificar_ProductVO(imagenvo); 
            }
            
        } catch (Exception ex) {
            System.out.println("textos: "+ex.getMessage());
        }

        RequestDispatcher view = request.getRequestDispatcher("/producto.jsp");
        view.forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
