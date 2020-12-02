
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

public class carritoDAO {

    public carritoDAO() {
    }
     
    
     public int getCantidad(int codProd, String usuario) {
        int cant  = 0;
        Conectar conec = new Conectar();
        ResultSet rs = null;
        PreparedStatement preparedStatement = null;
        PreparedStatement ps = null;
        
        String query = "SELECT CANTIDAD FROM CART WHERE CODIGO = ? AND (NICK = ? OR CORREO = ?) AND ESTADO = 0";
        try {
            preparedStatement = conec.getConnection().prepareStatement(query);
            preparedStatement.setInt(1, codProd);
            preparedStatement.setString(2, usuario);
            preparedStatement.setString(3, usuario);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                carritoVO vo = new carritoVO();
                vo.setCantidad(rs.getInt(1));
            
                cant = vo.getCantidad();
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
        return cant;
    }
     
     public void addCarrito(String usu, int codpro, int cantidad) {
        Conectar conec = new Conectar();
        String sql = "EXEC GRABA_CARRITO ?,?,?";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, codpro);
            ps.setString(2, usu);
            ps.setInt(3, cantidad);
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
     public List<carritoVO> getListCart(String usu) {
        ArrayList<carritoVO> list = new ArrayList<carritoVO>();
        Conectar conec = new Conectar();
        ResultSet rs = null;
        PreparedStatement preparedStatement = null;
        PreparedStatement ps = null;
        
        String query = "SELECT * FROM CART WHERE (NICK = ? OR CORREO = ?) AND ESTADO = 0";
      
        try {
            preparedStatement = conec.getConnection().prepareStatement(query);
            preparedStatement.setString(1, usu);
            preparedStatement.setString(2, usu);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                carritoVO vo = new carritoVO();
                vo.setCod_prod(rs.getInt(3));
                vo.setFoto(rs.getString(4));
                vo.setProducto(rs.getString(5));
                vo.setCategoria(rs.getString(6));
                vo.setCantidad(rs.getInt(7));
                vo.setPrecio(rs.getDouble(8));
                vo.setSubprecio(rs.getDouble(9));
                vo.setTotal(rs.getDouble(10));
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
     
    
      public void Eliminar_ProductCart(int cod, String us) {
        Conectar conec = new Conectar();
        String sql = "EXEC ELIMINAR_PRODUCTO_CART ?,?";
        PreparedStatement ps = null;
        
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setInt(1, cod);
            ps.setString(2, us);
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
        
        public void Comprar(carritoVO vo, String us) {
        Conectar conec = new Conectar();
        String sql = "EXEC ADD_HISTORIAL ?,?,?";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, us);
            ps.setString(2, vo.getFecha());
            ps.setString(3, vo.getPago());
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
        
     public List<carritoVO> getListCompra(String usu) {
         
        ArrayList<carritoVO> list = new ArrayList<carritoVO>();
        Conectar conec = new Conectar();
        ResultSet rs = null;
        PreparedStatement preparedStatement = null;
        PreparedStatement ps = null;
        
        String query = "SELECT * FROM VIEW_HIST WHERE NICK = ?";
      
        try {
            preparedStatement = conec.getConnection().prepareStatement(query);
            preparedStatement.setString(1, usu);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                carritoVO vo = new carritoVO();
                vo.setCod_cart(rs.getInt(1));
                vo.setFecha(rs.getString(2));
                vo.setPago(rs.getString(3));
                vo.setTotal(rs.getDouble(4));
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
     
     public List<carritoVO> getLista_SubDetalles(int codigo_Cart, String usu) {
         
        ArrayList<carritoVO> list = new ArrayList<carritoVO>();
        Conectar conec = new Conectar();
        ResultSet rs = null;
        PreparedStatement preparedStatement = null;
        PreparedStatement ps = null;
        
        String query = "EXEC VIEW_DETALLES ?,?";
      
        try {
            preparedStatement = conec.getConnection().prepareStatement(query);
            preparedStatement.setString(1, usu);
            preparedStatement.setInt(2, codigo_Cart);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                carritoVO vo = new carritoVO();
                vo.setCod_prod(rs.getInt(1));
                vo.setFoto(rs.getString(2));
                vo.setProducto(rs.getString(3));
                vo.setCategoria(rs.getString(4));
                vo.setCantidad(rs.getInt(5));
                vo.setPrecio(rs.getDouble(6));
                vo.setSubprecio(rs.getDouble(7));
                vo.setTotal(rs.getDouble(9));
                vo.setNombre(rs.getString(11));
                vo.setApellido(rs.getString(12));
                vo.setTelef(rs.getString(13));
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

      public int getNULL(String usu) {
        carritoVO vo = new carritoVO();
        int a = 0;
        Conectar db = new Conectar();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT COUNT(CODIGO) FROM USUARIO_CUENTA WHERE (NICK = ? OR CORREO = ?) AND (NOMBRE IS NULL OR APELLIDO IS NULL) AND DIRECCION IS NULL";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setString(1, usu);
            preparedStatement.setString(2, usu);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                vo.setCantidad(rs.getInt(1));
                a = vo.getCantidad();
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
        return a;
    }
      public int getValidarCarrito(String usu) {
        carritoVO vo = new carritoVO();
        int a = 0;
        Conectar db = new Conectar();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT COUNT(CODIGO) FROM CART WHERE (NICK = ? OR CORREO = ?) AND ESTADO = 0";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setString(1, usu);
            preparedStatement.setString(2, usu);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                vo.setCantidad(rs.getInt(1));
                a = vo.getCantidad();
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
        return a;
    }
      public int getValidadSTOCK(String usu, int cod) {
        carritoVO vo = new carritoVO();
        int a = 0;
        Conectar db = new Conectar();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT COUNT(CANTIDAD) FROM CART WHERE CODIGO = ?  AND (NICK = ? OR CORREO = ?) AND ESTADO = 0";
        try {
            preparedStatement = db.getConnection().prepareStatement(query);
            preparedStatement.setInt(1, cod);
            preparedStatement.setString(2, usu);
            preparedStatement.setString(3, usu);
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                vo.setCantidad(rs.getInt(1));
                a = vo.getCantidad();
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
        return a;
    }
    }
      
      
      
  