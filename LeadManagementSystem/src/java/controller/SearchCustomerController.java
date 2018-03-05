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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.CustomerDetailsService;

/**
 *
 * @author Imesh
 */
public class SearchCustomerController extends HttpServlet {

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
        List scc = new ArrayList();
        try (PrintWriter out = response.getWriter()) {
            
            CustomerDetailsService customerDetailsService = new CustomerDetailsService();
            DBConnection dBConnection = new DBConnection();
            Connection connection = dBConnection.getConnection();
            
            String user= "1";
            
            System.out.println();
            planList.add(request.getParameter("customername")) ;
            planList.add(request.getParameter("leadstatus"));
            planList.add(request.getParameter("salesactivitystage"));
            planList.add(request.getParameter("leadsource"));
            planList.add(request.getParameter("policystatus"));
            planList.add(request.getParameter("datecreated"));
            planList.add(request.getParameter("todate"));
            planList.add(request.getParameter("nic"));
            
            scc=customerDetailsService.searchCustomerDetails(user, planList, connection);
            
            request.setAttribute("mcp", scc);
            RequestDispatcher rd = request.getRequestDispatcher("./pages/dashboard1.jsp");
            rd.forward(request, response);
            
        }catch(Exception ex){
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
