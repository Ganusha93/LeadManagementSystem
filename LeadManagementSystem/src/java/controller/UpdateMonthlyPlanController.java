/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import connection.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.MonthlyPlanService;

/**
 *
 * @author Ganusha
 */
public class UpdateMonthlyPlanController extends HttpServlet {

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
        List planList = new ArrayList();
        try (PrintWriter out = response.getWriter()) {
            
            MonthlyPlanService monthlyPlanService = new MonthlyPlanService();
            DBConnection dBConnection = new DBConnection();
            Connection connection = dBConnection.getConnection();
            
            planList.add(request.getParameter("0")) ;
            planList.add(request.getParameter("1"));
            planList.add(request.getParameter("2"));
            planList.add(request.getParameter("3"));
            planList.add(request.getParameter("4"));
            planList.add(request.getParameter("5"));
            planList.add(request.getParameter("6"));
            planList.add(request.getParameter("7"));
            planList.add(request.getParameter("8"));
            
            monthlyPlanService.updatePlanList(planList,connection);
            
            
            //System.out.println("*********************************" + c0);
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
