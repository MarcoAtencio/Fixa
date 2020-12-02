/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;


import VO.productVO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author David
 */
public class sql {
    
    
    public productVO getDatosID(int studentId) {
        productVO vo = new productVO();
        Conectar db = new Conectar();
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String query = "SELECT * FROM PRODU_CAT";
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
    public static void main(String []args){
        sql s = new sql();
        //int a = s.auto_increm("SELECT MAX(COD_PROD) FROM producto;");
        //System.out.println(a);
    }
    
}
