
package DAO;

import Conexion.Conectar;
import VO.clienteVO;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ClienteDAO {
    
    
    

    /*Metodo agregar*/
    public void RegistrarUsuario(clienteVO vo){
        Conectar conec = new Conectar();
        String sql = "EXEC AGREGAR_USER ?,?,?,?";
        PreparedStatement ps = null;
        try {
            ps = conec.getConnection().prepareStatement(sql);
            ps.setString(1, vo.getNick());
            ps.setString(2, vo.getCorreo());
            ps.setString(3, vo.getContrasenia());
            ps.setInt(4, 1);
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
    
}
