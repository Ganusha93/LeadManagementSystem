/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.UserLoginDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Ganusha
 */
public class UserLoginDAO {

    public UserLoginDTO checkUser(String username, String password, Connection connection) {

        UserLoginDTO userLoginDTO = new UserLoginDTO();
        PreparedStatement pst = null;
        ResultSet rs = null;
//        int userID = 0;
        String sql = null;

        try {
            sql = "SELECT * FROM LMS_USER  WHERE USERNAME='" + username + "' and PASSWORD='" + password + "' ";
            pst = connection.prepareStatement(sql);
            rs = pst.executeQuery();

            if (rs == null) {
                userLoginDTO.setUserID(0);
            } else {
                while (rs.next()) {
                    
                    userLoginDTO.setUserID(rs.getInt("USER_ID"));
                    userLoginDTO.setFName(rs.getString("FIRST_NAME"));
                    userLoginDTO.setLName(rs.getString("LAST_NAME"));
                    
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return userLoginDTO;

    }
}
