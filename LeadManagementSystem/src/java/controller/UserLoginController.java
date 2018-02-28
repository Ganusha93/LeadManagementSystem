/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import connection.DBConnection;
import dto.MonthlyCyclePlanDTO;
import dto.MonthlyPlanDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.MonthlyCyclePlanService;
import service.MonthlyPlanService;

/**
 *
 * @author Ganusha
 */
public class UserLoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            MonthlyPlanService monthlyPlanService = new MonthlyPlanService();
            MonthlyCyclePlanService monthlyCyclePlanService = new MonthlyCyclePlanService();
            MonthlyCyclePlanDTO monthlyCyclePlanDTOIn = new MonthlyCyclePlanDTO();
            DBConnection dBConnection = new DBConnection();

            Connection connection = dBConnection.getConnection();

            String userId = "1";
            String password = "123";
            Date date = new Date();
            DateFormat dateFormat = new SimpleDateFormat("MM");
            DateFormat dateFormat1 = new SimpleDateFormat("YYYY/MM");
            String planID;
            int month, currentMonth;

            ArrayList<MonthlyPlanDTO> planList = monthlyPlanService.getPlanList(userId, connection);

            for (MonthlyPlanDTO monthlyPlanDTO : planList) {
                planID = monthlyPlanDTO.getPlanID();

                MonthlyCyclePlanDTO monthlyCyclePlanDTO = monthlyCyclePlanService.checkDate(userId, planID, connection);
                if (monthlyCyclePlanDTO != null) {
                    month = Integer.parseInt(dateFormat.format(monthlyCyclePlanDTO.getDate()));
                    currentMonth = Integer.parseInt(dateFormat.format(date));

                    if (month != currentMonth) {
                        int count = monthlyPlanDTO.getCount();
                        int first = 0, second = 0, third = 0, fourth = 0;

                        if (count % 4 == 0) {
                            first = second = third = fourth = count / 4;
                        } else if (count % 4 == 1) {
                            first = second = third = (count - 1) / 4;
                            fourth = ((count - 1) / 4) + 1;
                        } else if (count % 4 == 2) {
                            first = third = (count - 2) / 4;
                            second = fourth = ((count - 2) / 4) + 1;
                        } else if (count % 4 == 3) {
                            first = (count - 3) / 4;
                            second = third = fourth = ((count - 3) / 4) + 1;
                        }

                        monthlyCyclePlanDTOIn.setUserID(userId);
                        monthlyCyclePlanDTOIn.setPlanID(planID);
                        monthlyCyclePlanDTOIn.setMonth(dateFormat1.format(date));
                        monthlyCyclePlanDTOIn.setFirstPlanned(first);
                        monthlyCyclePlanDTOIn.setSecondPlanned(second);
                        monthlyCyclePlanDTOIn.setThirdPlanned(third);
                        monthlyCyclePlanDTOIn.setFourthPlanned(fourth);
                        monthlyCyclePlanDTOIn.setActual(count);
                        monthlyCyclePlanService.insertMonthlyCycle(monthlyCyclePlanDTOIn, connection);
                    }
                }
                

            }
            
            response.sendRedirect("MonthlyCyclePlanController");

        } catch (Exception ex) {
            ex.printStackTrace();

        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
