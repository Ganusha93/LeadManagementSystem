/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.UserLoginDAO;
import dto.UserLoginDTO;
import java.sql.Connection;

/**
 *
 * @author Ganusha
 */
public class UserLoginService {

    UserLoginDAO userLoginDAO = new UserLoginDAO();

    public UserLoginDTO checkUser(String username, String password, Connection connection) {

        return userLoginDAO.checkUser(username, password, connection);
    }

}
