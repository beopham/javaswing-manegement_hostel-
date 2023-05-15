/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Connect;

import java.sql.*;

/**
 *
 * @author PC
 */
public class ketnoisql {

    public static Connection getcon() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/hostel", "root", "");
            
          return conn;
        } catch (Exception ex) {
            return null;
        }
      
    }
}
