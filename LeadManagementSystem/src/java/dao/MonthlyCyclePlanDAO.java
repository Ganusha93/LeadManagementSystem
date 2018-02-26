/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.MonthlyCyclePlanDTO;
import dto.MonthlyPlanDTO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ganusha
 */
public class MonthlyCyclePlanDAO {

    public MonthlyCyclePlanDTO checkDate(String UserID, String PlanID, Connection connection) {

        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = null;
        MonthlyCyclePlanDTO monthlyCyclePlanDTO = new MonthlyCyclePlanDTO();
        try {
            sql = "SELECT DATE FROM LMS_MONTHLY_CYCLE_PLAN WHERE USER_ID=? AND PLAN_ID=? ORDER BY DATE DESC LIMIT 1";
            pst = connection.prepareStatement(sql);
            pst.setString(1, UserID);
            pst.setString(2, PlanID);
            rs = pst.executeQuery();

            while (rs.next()) {
                monthlyCyclePlanDTO.setDate(rs.getDate("DATE"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(MonthlyCyclePlanDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return monthlyCyclePlanDTO;
    }

    public int insertMonthlyCycle(MonthlyCyclePlanDTO mcpdto, Connection connection) {
        PreparedStatement pst = null;
        String sql = null;
        int result = 0;

        try {
            sql = "INSERT INTO LMS_MONTHLY_CYCLE_PLAN (USER_ID,PLAN_ID,DATE,MONTH,FIRST_PLANNED,SECOND_PLANNED,THIRD_PLANNED,FOURTH_PLANNED,ACTUAL) VALUES "
                    + "('" + mcpdto.getUserID() + "','" + mcpdto.getPlanID() + "',curdate(),'" + mcpdto.getMonth() + "','" + mcpdto.getFirstPlanned() + "','" + mcpdto.getSecondPlanned() + "','" + mcpdto.getThirdPlanned() + "','" + mcpdto.getFourthPlanned() + "','" + mcpdto.getActual() + "')";
            pst = connection.prepareStatement(sql);
//            System.out.println(mcpdto.getUserID());
//            pst.setObject(1, mcpdto.getUserID());
//            pst.setObject(2, mcpdto.getPlanID());
//          //  pst.setDate(3, mcpdto.getDate());
//            pst.setObject(3, mcpdto.getFirstPlanned());
//            pst.setObject(4, mcpdto.getSecondPlanned());
//            pst.setObject(5, mcpdto.getThirdPlanned());
//            pst.setObject(6, mcpdto.getFourthPlanned());
//            pst.setObject(7, mcpdto.getActual());

            result = pst.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public List getMonthlyCyclePlan(String user, String month, Connection connection) {

        List mcp = new ArrayList();
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = null;

        try {
            sql = "SELECT * FROM LMS_MONTHLY_CYCLE_PLAN INNER  JOIN LMS_PLAN ON "
                    + "LMS_MONTHLY_CYCLE_PLAN.PLAN_ID=LMS_PLAN.PLAN_ID WHERE "
                    + "LMS_MONTHLY_CYCLE_PLAN.USER_ID=? AND LMS_MONTHLY_CYCLE_PLAN.MONTH=?";

            pst = connection.prepareStatement(sql);
            pst.setString(1, user);
            pst.setString(2, month);
            rs = pst.executeQuery();

            while (rs.next()) {
                
                mcp.add(rs.getString("DESCRIPTION"));
                mcp.add(rs.getInt("FIRST_ACTUAL"));
                mcp.add(rs.getInt("FIRST_PLANNED"));
                mcp.add(rs.getInt("SECOND_ACTUAL"));
                mcp.add(rs.getInt("SECOND_PLANNED"));
                mcp.add(rs.getInt("THIRD_ACTUAL"));
                mcp.add(rs.getInt("THIRD_PLANNED"));
                mcp.add(rs.getInt("FOURTH_ACTUAL"));
                mcp.add(rs.getInt("FOURTH_PLANNED"));
                mcp.add(rs.getInt("ACTUAL"));
                
                System.out.println(rs.getString("DESCRIPTION"));

            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return mcp;
    }

}
