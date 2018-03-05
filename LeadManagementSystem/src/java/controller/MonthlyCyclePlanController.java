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
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import service.MonthlyCyclePlanService;

/**
 *
 * @author Ganusha
 */
public class MonthlyCyclePlanController extends HttpServlet {

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
        List mcp = new ArrayList();
        List responsemcp = new ArrayList();
        try (PrintWriter out = response.getWriter()) {
            
            MonthlyCyclePlanService monthlyCyclePlanService = new MonthlyCyclePlanService();
            DBConnection dBConnection = new DBConnection();
            Connection connection = dBConnection.getConnection();
            HttpSession session = request.getSession();
            
            String user = (String) session.getAttribute("userID");
            String month = "2018/03";
            
            mcp = monthlyCyclePlanService.getMonthlyCyclePlan(user, month, connection);
            
            Iterator itr;
            
            for (itr = mcp.iterator(); itr.hasNext();) {
                
                String des = (String) (itr.next());
                int fa = (int) itr.next();
                int fp = (int) itr.next();
                int sa = (int) itr.next();
                int sp = (int) itr.next();
                int ta = (int) itr.next();
                int tp = (int) itr.next();
                int foa = (int) itr.next();
                int fop = (int) itr.next();
                int actual = (int) itr.next();
                
                responsemcp.add(des);
                responsemcp.add(fa);
                if (fp - fa > 0) {
                    responsemcp.add(fp - fa);
                    responsemcp.add("fa-toggle-down");
                    responsemcp.add("red");
                } else {
                    responsemcp.add(fa - fp);
                    responsemcp.add("fa-toggle-up");
                    responsemcp.add("green");
                    
                }
                
                responsemcp.add(sa);
                if (sp - sa > 0) {
                    responsemcp.add(sp - sa);
                    responsemcp.add("fa-toggle-down");
                    responsemcp.add("red");
                    
                } else {
                    responsemcp.add(sa - sp);
                    responsemcp.add("fa-toggle-up");
                    responsemcp.add("green");
                }
                
                responsemcp.add(ta);
                if (tp - ta > 0) {
                    responsemcp.add(tp - ta);
                    responsemcp.add("fa-toggle-down");
                    responsemcp.add("red");
                } else {
                    responsemcp.add(ta - tp);
                    responsemcp.add("fa-toggle-up");
                    responsemcp.add("green");
                }
                
                responsemcp.add(foa);
                if (fop - foa > 0) {
                    responsemcp.add(fop - foa);
                    responsemcp.add("fa-toggle-down");
                    responsemcp.add("red");
                } else {
                    responsemcp.add(foa - fop);
                    responsemcp.add("fa-toggle-up");
                    responsemcp.add("green");
                }
                
                responsemcp.add(fp + sp + tp + fop);
                responsemcp.add(actual);
                if ((fp + sp + tp + fop) - actual > 0) {
                    responsemcp.add((fp + sp + tp + fop) - actual);
                    responsemcp.add("fa-toggle-down");
                    responsemcp.add("red");
                } else {
                    responsemcp.add(actual - (fp + sp + tp + fop));
                    responsemcp.add("fa-toggle-up");
                    responsemcp.add("green");
                }
                
            }
            
            request.setAttribute("mcp", responsemcp);
            RequestDispatcher rd = request.getRequestDispatcher("./pages/dashboard.jsp");
            rd.forward(request, response);
            
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            
            mcp.clear();
            responsemcp.clear();
            
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
