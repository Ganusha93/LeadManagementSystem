/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.MonthlyPlanDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Ganusha
 */
public class MonthlyPlanDAO {
    public ArrayList<MonthlyPlanDTO> getPlanList(String UserID, Connection connection) {

        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = null;
        ArrayList<MonthlyPlanDTO> planList = new ArrayList<MonthlyPlanDTO>();
        
        
        try {
            sql = "SELECT * FROM LMS_MONTHLY_PLAN INNER JOIN LMS_PLAN ON LMS_MONTHLY_PLAN.PLAN_ID=LMS_PLAN.PLAN_ID WHERE USER_ID='"+UserID+"' ";
            pst = connection.prepareStatement(sql);
          //  pst.setString(1, UserID);
            rs = pst.executeQuery();

            while (rs.next()) {
                MonthlyPlanDTO monthlyPlanDTO = new MonthlyPlanDTO();
                monthlyPlanDTO.setPlanID(rs.getString("PLAN_ID"));
                monthlyPlanDTO.setCount(rs.getInt("COUNT"));
                monthlyPlanDTO.setDescription(rs.getString("DESCRIPTION"));
                planList.add(monthlyPlanDTO);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return planList;
    }
    
    
}
