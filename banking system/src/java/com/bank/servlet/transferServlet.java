package com.bank.servlet;

import com.bank.dao.TransferDao;
import com.bank.entities.Message;
import com.bank.entities.Transfer;
import com.bank.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class transferServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
                    String transferfrom=request.getParameter("transferfrom");
                    String transferto=request.getParameter("transferto");
                   // String balance1=request.getParameter("user_balance");
                    int amount =Integer.parseInt(request.getParameter("amount"));
                    out.println("rtry"+transferfrom);
                    out.println(transferto);
                    out.println(amount);
                                      
                    
                    Transfer t=new Transfer(transferfrom,transferto,amount);  
                    TransferDao dao=new TransferDao(ConnectionProvider.getConnection());
                    int p=dao.transferSuccess(t);
                    if(p==1)
                    {
                        Message msg=new Message("Transaction Done Sucessfully ","success","alert-success");
                        response.sendRedirect("transfer.jsp");
                        HttpSession s=request.getSession();
                        s.setAttribute("msg",msg);
                        // response.sendRedirect("index.jsp");
                    }
                    else if(p==2)
                    {
                        Message msg=new Message("Transferring Amuont couldn't not be negative ","error","alert-danger");
                        response.sendRedirect("transfer.jsp");
                        HttpSession s=request.getSession();
                        s.setAttribute("msg",msg);
                    }
                    else if(p==3)
                    {
                        Message msg=new Message("Transferring Amuont couldn't not be equal to Zero ","error","alert-danger");
                        response.sendRedirect("transfer.jsp");
                        HttpSession s=request.getSession();
                        s.setAttribute("msg",msg);
                    }     
                     else if(p==4)
                    {
                        Message msg=new Message("Account have Insuffiecent Balance ","error1","alert-danger");
                        response.sendRedirect("transfer.jsp");
                        HttpSession s=request.getSession();
                        s.setAttribute("msg",msg);
                    }  
            
            
            
            out.println("</body>");
            out.println("</html>");
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
