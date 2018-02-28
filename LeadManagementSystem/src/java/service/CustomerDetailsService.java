/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package service;

import dao.CustomerDetailsDAO;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Imesh
 */
public class CustomerDetailsService {
    
    CustomerDetailsDAO customerDetailsDAO = new CustomerDetailsDAO();
    
    public List getCustomerDetails(String user, Connection connection){
        return customerDetailsDAO.getCustomerDetails(user, connection);
    }
    
    public List searchCustomerDetails(String user, List list, Connection connection){
        return customerDetailsDAO.searchCustomerDetails(user, list, connection);
    }
}
