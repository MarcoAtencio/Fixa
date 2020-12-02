package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conectar{
    public static Connection connection = null;
    public Conectar(){
       try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection=DriverManager.getConnection("jdbc:sqlserver://fixa-sa.database.windows.net:1433;database=FIXA;user=adminFixa@fixa-sa;password={SistemaVentas2020};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=90;");
  
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public Connection getConnection(){
        return connection;
    }

    public void desconectar()throws SQLException{
        if(!connection.isClosed()){
            connection.close();
        }
        
    }
   
   
}
