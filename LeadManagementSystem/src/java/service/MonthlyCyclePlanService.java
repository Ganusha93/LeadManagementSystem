/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.MonthlyCyclePlanDAO;
import dto.MonthlyCyclePlanDTO;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ganusha
 */
public class MonthlyCyclePlanService {

    MonthlyCyclePlanDAO monthlyCyclePlanDAO = new MonthlyCyclePlanDAO();

    public MonthlyCyclePlanDTO checkDate(String UserID, String PlanID, Connection connection) {
        if (monthlyCyclePlanDAO.checkDate(UserID, PlanID, connection).getDate() != null) {
            return monthlyCyclePlanDAO.checkDate(UserID, PlanID, connection);
        } else {
            return null;
        }

    }

    public boolean insertMonthlyCycle(MonthlyCyclePlanDTO mcpdto, Connection connection) {
        int result = monthlyCyclePlanDAO.insertMonthlyCycle(mcpdto, connection);
        if (result >= 1) {
            return true;
        } else {
            return false;
        }
    }

    public List getMonthlyCyclePlan(String User, String Month, Connection connection) {
        return monthlyCyclePlanDAO.getMonthlyCyclePlan(User, Month, connection);
    }

    public void updateMonthlyCycle(MonthlyCyclePlanDTO monthlyCyclePlanDTOIn,String user ,Connection connection) {
        monthlyCyclePlanDAO.updateMonthlyCycle(monthlyCyclePlanDTOIn,user, connection);
    }

}
