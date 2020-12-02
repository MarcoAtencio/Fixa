package DAO;

import Conexion.Conectar;
import VO.carritoVO;
import VO.clienteVO;
import VO.productVO;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {

    /*Metodo listar*/
    public ArrayList<productVO> Listar_ProductVO() {
        ArrayList<productVO> list = new ArrayList<productVO>();
        Conectar conec = new Conectar();
        String sql = "SELECT * FROM PRODU_CAT;";
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                productVO vo = new productVO();
                vo.setCodigo(rs.getInt(1));
                vo.setNombre(rs.getString(2));
                vo.setPrecio(rs.getDouble(3));
                vo.setCantidad(rs.getInt(4));
                vo.setModelo(rs.getString(5));
                vo.setFoto(rs.getString(6));
                vo.setCategoria(rs.getString(7));
                list.add(vo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                rs.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
        return list;
    }
    
    


    /*Metodo agregar*/
    public void Agregar_ProductVO(productVO vo) {
        Conectar conec = new Conectar();
        String sql = "EXEC GRABA_PRODUCT ?,?,?,?,?,?";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, vo.getNombre());
            ps.setDouble(2, vo.getPrecio());
            ps.setInt(3, vo.getCantidad());
            ps.setString(4, vo.getModelo());
            ps.setString(5, vo.getFoto());
            ps.setString(6, vo.getCategoria());
            ps.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }
    

    /*Metodo Modificar*/
    public void Modificar_ProductVO(productVO vo) {
        Conectar conec = new Conectar();
        String sql = "EXEC EDIT_PRODUCTO ?,?,?,?,?,?,?";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, vo.getCodigo());
            ps.setString(2, vo.getNombre());
            ps.setDouble(3, vo.getPrecio());
            ps.setInt(4, vo.getCantidad());
            ps.setString(5, vo.getModelo());
            ps.setString(6, vo.getFoto());
            ps.setString(7, vo.getCategoria());
            ps.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }

    /*Metodo Eliminar*/
    public void Eliminar_ProductVO(int id) {
        Conectar conec = new Conectar();
        String sql = "DELETE FROM PRODUCTO WHERE COD_PROD = ?;";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
       
    }
    
    public productVO getDatosID(int studentId) {
        productVO vo = new productVO();
        Conectar db = new Conectar();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM PRODU_CAT WHERE COD_PROD = ?";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setInt(1, studentId);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                vo.setCodigo(rs.getInt(1));
                vo.setNombre(rs.getString(2));
                vo.setPrecio(rs.getDouble(3));
                vo.setCantidad(rs.getInt(4));
                vo.setModelo(rs.getString(5));
                vo.setFoto(rs.getString(6));
                vo.setCategoria(rs.getString(7));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                preparedStatement.close();
                db.desconectar();
            } catch (Exception ex) {
            }
        }
        return vo;
    }
    public List listar_Cat(String Categoria) {
        List<productVO> prod = new ArrayList();
        
        Conectar db = new Conectar();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM PRODU_CAT WHERE CATEGORIA = ?";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setString(1, Categoria);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                
                productVO vo = new productVO();
                vo.setCodigo(rs.getInt(1));
                vo.setNombre(rs.getString(2));
                vo.setPrecio(rs.getDouble(3));
                vo.setCantidad(rs.getInt(4));
                vo.setModelo(rs.getString(5));
                vo.setFoto(rs.getString(6));
                vo.setCategoria(rs.getString(7));
                prod.add(vo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                preparedStatement.close();
                db.desconectar();
            } catch (Exception ex) {
            }
        }
        return prod;
    }
    
    public List listar_Prod(String nombre) {
        List<productVO> prod = new ArrayList();
        
        Conectar db = new Conectar();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM PRODU_CAT WHERE PRODUCTO LIKE ?";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setString(1, "%" + nombre + "%");
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                
                productVO vo = new productVO();
                vo.setCodigo(rs.getInt(1));
                vo.setNombre(rs.getString(2));
                vo.setPrecio(rs.getDouble(3));
                vo.setCantidad(rs.getInt(4));
                vo.setModelo(rs.getString(5));
                vo.setFoto(rs.getString(6));
                vo.setCategoria(rs.getString(7));
                prod.add(vo);
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                preparedStatement.close();
                db.desconectar();
            } catch (Exception ex) {
            }
        }
        return prod;
    }
    
      public ArrayList<String> listarCat() {
        ArrayList<String> categor = new ArrayList<String>();
        Conectar conec = new Conectar();
        String sql = "SELECT NOMBRE FROM CATEGORIA";
        String[] a; 
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                categor.add(rs.getString(1));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                rs.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
        return categor;
    }
   
    public void EditarUser(clienteVO vo, String us) {
        Conectar conec = new Conectar();
        String sql = "EXEC MODIFY_USER1 ?,?,?,?,?";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, us);
            ps.setString(2, vo.getNombre());
            ps.setString(3, vo.getApellido());
            ps.setString(4, vo.getDireccion());
            ps.setString(5, vo.getTelef());
            ps.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }
     public void EditarUser2(clienteVO vo, String us) {
        Conectar conec = new Conectar();
        String sql = "EXEC MODIFY_USER2 ?,?,?";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, us);
            ps.setString(2, vo.getCorreo());
            ps.setString(3, vo.getContrasenia());
            ps.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                ps.close();
                conec.desconectar();
            } catch (Exception ex) {
            }
        }
    }
     
    
    public clienteVO getDatosUser(String us) {
        clienteVO vo = new clienteVO();
        Conectar db = new Conectar();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM USUARIO_CUENTA WHERE CORREO = ? OR NICK = ? ";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setString(1, us);
            preparedStatement.setString(2, us);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                vo.setNombre(rs.getString(2));
                vo.setApellido(rs.getString(3));
                vo.setDireccion(rs.getString(4));
                vo.setCorreo(rs.getString(5));
                vo.setTelef(rs.getString(6));
                vo.setNick(rs.getString(7));
                vo.setContrasenia(rs.getString(8));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            try {
                rs.close();
                preparedStatement.close();
                db.desconectar();
            } catch (Exception ex) {
            }
        }
        return vo;
    }
}
