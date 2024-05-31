/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.Admin;

import DAO.AccountDAO;
import Model.Account;
import Utils.Email;
import Utils.Generate;
import Utils.TemplateEmail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class ForgetPasswortController extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ForgetPasswortController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgetPasswortController at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("/admin/view/auth/forget.jsp").forward(request, response);
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
        if (request.getParameter("reset-password") != null) {
            String email = request.getParameter("email");
            String username = request.getParameter("username");
            AccountDAO accountDao = new AccountDAO();
            Account a = accountDao.getAccountByUsername(username);
            Email sendMail = new Email();
            TemplateEmail template = new TemplateEmail();
            String message = "";
            if (a == null || !a.getEmail().equals(email)) {
                message = "Account is not exist";
                this.goToLoginPage(request, response, message);
                return;
            } else if (a != null && !a.getRoleName().toLowerCase().equals("admin")) {
                message = "Account can not forget password here";
                this.goToLoginPage(request, response, message);
                return;
            }
            Generate generate = new Generate();
            String newPassword = generate.generatePassword(8);
            String mailTemplate = template.resetPassword(a, newPassword);
            boolean isSendMail = sendMail.sendEmail(email, "Reset password", mailTemplate, null);
            int index = 0;
            while (!isSendMail && index < 5) {
                isSendMail = sendMail.sendEmail(email, "Reset password", mailTemplate, null);
                index++;
            }
            if (isSendMail && accountDao.updatePassword(newPassword, a.getID()) == 1) {
                message = "Reset password successfully. Please check your email to get a new password to log in";
            } else {
                message = "The system is busy, please try again";
            }
            goToLoginPage(request, response, message);
        }
    }

    private void goToLoginPage(HttpServletRequest request, HttpServletResponse response, String message) {
        try {
            request.setAttribute("message", message);
            request.getRequestDispatcher("/admin/view/auth/forget.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Go to login page: " + e);
        }
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