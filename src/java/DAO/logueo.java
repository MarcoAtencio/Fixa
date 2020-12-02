/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conexion.Conectar;
import VO.logeoVO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author USUARIO
 */
public class logueo {
    Conectar con = new Conectar();
    
    public logueo() {
    }
    
     public int Loguear(String us, String pass) {
        int nivel  = 0;
        Conectar conec = new Conectar();
        String sql = "SELECT NIVEL FROM USUARIO_CUENTA WHERE (NICK='"+us+"' OR CORREO ='"+us+"') AND CONTRA='"+pass+"'";
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                logeoVO vo = new logeoVO();
                vo.setNivel(rs.getInt(1));
                nivel = vo.getNivel();
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
        return nivel;
    }
      
}
