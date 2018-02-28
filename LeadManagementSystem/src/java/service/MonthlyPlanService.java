/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.MonthlyCyclePlanDAO;
import dao.MonthlyPlanDAO;
import dto.MonthlyPlanDTO;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Ganusha
 */
public class MonthlyPlanService {

    MonthlyPlanDAO monthlyPlanDAO = new MonthlyPlanDAO();

    public ArrayList<MonthlyPlanDTO> getPlanList(String UserID, Connection connection) {

        return monthlyPlanDAO.getPlanList(UserID, connection);
    }

    public void updatePlanList(ArrayList<MonthlyPlanDTO> updateList , String user, Connection connection) {
        monthlyPlanDAO.updatePlanList(updateList,user,connection);
    }
}
