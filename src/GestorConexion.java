
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author xp
 */
public class GestorConexion {

  
    Connection conn1;
    ResultSet rs;
    DefaultTableModel model;

    public void AbrirConexion2() {

        try {
            String url1 = "jdbc:mysql://localhost:3306/discografia";
            String user = "root";
            String password = "";
            conn1 = (Connection) DriverManager.getConnection(url1, user, password);
            if (conn1 != null) {
                System.out.println("Conectado a discogracia…");
            }
        } catch (SQLException ex) {
            System.out.println("ERROR: dirección o usuario/clave no válida");
            ex.printStackTrace();
        }
    }

    public void cerrar_conexion() {
        try {
            conn1.close();
        } catch (SQLException ex) {
            System.out.println("ERROR:al cerrar la conexión");
            ex.printStackTrace();
        }
    }

//    public void PoolConexiones() {
//
//        BasicDataSource bdSource = new BasicDataSource();
//        bdSource.setUrl("jdbc:mysql://localhost:3306/discografia");
//        bdSource.setUsername("root");
//        bdSource.setPassword("");
//        try {
////DataSource nos reserva una conexión y nos la devuelve
//            con = bdSource.getConnection();
//
//            if (con != null) {
//                System.out.println("Conexión creada satisfactoriamente");
//            } else {
//                System.out.println("No se puede crear una nueva conexión");
//            }
//        } catch (Exception e) {
//            System.out.println("Error: " + e.toString());
//        }
//    }

    public String añadirColumna() throws SQLException {
      
        String salida = "";

        try {
            Statement sta = conn1.createStatement();
            sta.executeUpdate("ALTER TABLE album ADD imagen_caratulas VARCHAR(50)");
            salida = "Columna creada correctamente";
            sta.close();
            } catch (Exception e) {
                salida = "Columna ya existe";
                
            }
        return salida;
        
    }

    public String borrarColumna() throws SQLException {
        
        String salida = "";

        
        try  {
            Statement sta = conn1.createStatement();
            sta.executeUpdate("ALTER TABLE album drop imagen_caratulas");
            salida = "Columna borrada";
        } catch (Exception e) {
            salida = "Columna no existe";
        }
        return salida;
    }
    
    

//    public void consulta_Statement() throws SQLException {
//        Statement sta = conn1.createStatement();
//        ResultSet rs = sta.executeQuery("select * from cancion");
//
//    // It creates and displays the table
//    JTable table = new JTable(buildTableModel(rs));
//    
//    
//
// 
//    // Closes the Connection
//
//    JOptionPane.showMessageDialog(null, new JScrollPane(table));
//    }
//    
//    public static DefaultTableModel buildTableModel(ResultSet rs)
//        throws SQLException {
//
//    ResultSetMetaData metaData = rs.getMetaData();
//
//    // names of columns
//    Vector<String> columnNames = new Vector<String>();
//    int columnCount = metaData.getColumnCount();
//    for (int column = 1; column <= columnCount; column++) {
//        columnNames.add(metaData.getColumnName(column));
//    }
//
//    // data of the table
//    Vector<Vector<Object>> data = new Vector<Vector<Object>>();
//    while (rs.next()) {
//        Vector<Object> vector = new Vector<Object>();
//        for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
//            vector.add(rs.getObject(columnIndex));
//        }
//        data.add(vector);
//    }
//
//    return new DefaultTableModel(data, columnNames);
//    
//
//}

}
