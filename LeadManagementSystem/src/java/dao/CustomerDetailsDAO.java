/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import dto.CustomerDetailsDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Imesh
 */
public class CustomerDetailsDAO {
    
    public List getCustomerDetails(String user, Connection connection){
        
        List mcp = new ArrayList();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = null;

        try {        
            sql = "SELECT * FROM LMS_CUSTOMER_DETAILS WHERE USER_ID=?";

            pst = connection.prepareStatement(sql);
            pst.setString(1, user);
            rs = pst.executeQuery();

            while (rs.next()) {
                
                mcp.add(rs.getString("CUS_NAME"));
                mcp.add(rs.getInt("VVIP"));
                mcp.add(rs.getString("GENDER"));
                mcp.add(rs.getString("MOB_NUMBER"));
                mcp.add(rs.getString("STATUS"));
                mcp.add(rs.getString("POL_STATUS"));
                mcp.add(rs.getString("SAL_ACT_STAGE"));
                mcp.add(rs.getString("NIC"));
                mcp.add(rs.getString("LEAD_SRC"));
                mcp.add(rs.getString("USER_ID"));
                mcp.add(rs.getString("CREATE_DATE"));

            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mcp;
    }
    
    public List searchCustomerDetails(String user, List list, Connection connection){
        
        List scc = new ArrayList();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = null;
        String s = "";
        try {
            
            if(list.get(0)!=""){  s=s+" AND CUS_NAME="+"'"+list.get(0)+"'";}
            if(list.get(1)!=""){  s=s+" AND STATUS="+"'"+list.get(1)+"'";}
            if(list.get(2)!=""){  s=s+" AND SAL_ACT_STAGE="+"'"+list.get(2)+"'";}
            if(list.get(3)!=""){  s=s+" AND LEAD_SRC="+"'"+list.get(3)+"'";}
            if(list.get(4)!=""){  s=s+" AND POL_STATUS="+"'"+list.get(4)+"'";}
            if(list.get(7)!=""){  s=s+" AND NIC="+"'"+list.get(7)+"'";}
            if(list.get(5)!="" && list.get(6)!=""){
                s=s+" AND CREATE_DATE BETWEEN "+"'"+list.get(5)+"'"+" AND "+"'"+list.get(6)+"'";
            }
//            if(list.get(5)!=""){  s.concat(" AND CUS_ID="+list.get(5));}
//            if(list.get(6)!=""){  s.concat(" AND CUS_ID="+list.get(6));}
            sql = "SELECT * FROM LMS_CUSTOMER_DETAILS WHERE USER_ID=?"+s;
            
            pst = connection.prepareStatement(sql);
            pst.setString(1, user);
            rs = pst.executeQuery();

            while (rs.next()) {
                
                scc.add(rs.getString("CUS_NAME"));
                scc.add(rs.getInt("VVIP"));
                scc.add(rs.getString("GENDER"));
                scc.add(rs.getString("MOB_NUMBER"));
                scc.add(rs.getString("STATUS"));
                scc.add(rs.getString("POL_STATUS"));
                scc.add(rs.getString("SAL_ACT_STAGE"));
                scc.add(rs.getString("NIC"));
                scc.add(rs.getString("LEAD_SRC"));
                scc.add(rs.getString("USER_ID"));
                scc.add(rs.getString("CREATE_DATE"));
                
                System.out.println(rs.getString("CUS_NAME"));
                System.out.println(rs.getInt("VVIP"));
                System.out.println(rs.getString("GENDER"));

            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return scc;
    }

    public ArrayList<CustomerDetailsDTO> searchCustomerNames(String userId, CustomerDetailsDTO customerDetailsDTO, Connection connection) {
        
        ArrayList<CustomerDetailsDTO> list = new ArrayList<>();
        Statement st = null;
        ResultSet rs = null;
        String sql = null;
        try{
            sql= "SELECT CUS_NAME FROM LMS_CUSTOMER_DETAILS WHERE USER_ID='"+userId+"' AND CUS_NAME LIKE '%"+customerDetailsDTO.getCusName()+"%'";
            st= connection.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                CustomerDetailsDTO cusNameDTO = new CustomerDetailsDTO();
                cusNameDTO.setCusName(rs.getString("CUS_NAME"));
                list.add(cusNameDTO);
            }
            
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        return list;
    }
}
