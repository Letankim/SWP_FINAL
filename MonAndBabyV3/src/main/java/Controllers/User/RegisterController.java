/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers.User;

import Authentication.AuthUser;
import DAO.AccountDAO;
import Model.Account;
import Utils.Email;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.security.SecureRandom;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Timer;
import java.util.TimerTask;

/**
 *
 * @author HP
 */
public class RegisterController extends HttpServlet {

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
            out.println("<title>Servlet RegisterController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterController at " + request.getContextPath() + "</h1>");
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
        AuthUser auth = new AuthUser();
        if (auth.isLoginUser(request, response) != null) {
            response.sendRedirect("/MomAndBaby");
        } else {
            request.getRequestDispatcher("/user/register.jsp").forward(request, response);
        }
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
        AccountDAO adao = new AccountDAO();
        Email emailSend = new Email();
        HttpSession session = request.getSession();
        String message = "";
        int type_message = 0;
        if (request.getParameter("register") != null) {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            Account accountCheck = adao.isExistAccount(username, email);
            if (accountCheck != null) {
                request.setAttribute("messageFailRegister", "Username or email is exist");
                request.getRequestDispatcher("/user/register.jsp").forward(request, response);
                return;
            }
            String fullname = request.getParameter("fullname");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            LocalDateTime dateTime = LocalDateTime.now();
            Timestamp dateCreate = Timestamp.valueOf(dateTime);
            int roleUser = 2;
            Account account = new Account(0, username, password, email, phone, 1, fullname, dateCreate, roleUser, null);
            if (username.equals("") || password.equals("") || email.equals("") || phone.equals("") || fullname.equals("")) {
                session.setAttribute("messageFailRegister", "Please field all input.");
                session.setMaxInactiveInterval(3);
                response.sendRedirect("/MomAndBaby/register");
            } else {
                session.setAttribute("accountRegister", account);
                String otpConfirm = this.generateOTP();
                setSessionWithExpiration(session, otpConfirm);
                String content = "Your OTP code is: " + otpConfirm + "."
                        + "This OTP code is valid for 1 minute."
                        + "Warning: Tuyet Doi does not provide OTP to anyone for any reason.";
                boolean isSend = false;
                isSend = emailSend.sendEmail(email, "Confirm acccount", content, null);
                if (isSend) {
                    type_message = 1;
                    message = "OTP has been sent to your email.";
                } else {
                    type_message = 0;
                    session.removeAttribute("otpConfirm");
                    message = "Sending OTP failed.";
                }
                request.getRequestDispatcher("/user/otp.jsp").forward(request, response);
            }
        } else if (request.getParameter("confirm-otp") != null) {
            String optUser = request.getParameter("otp");
            String otpSession = (String) session.getAttribute("otpConfirm");
            String countdownValue = request.getParameter("countdownValue");
            request.setAttribute("timemount", countdownValue);
            if (otpSession != null && optUser.equals(otpSession)) {
                Account c = (Account) session.getAttribute("accountRegister");
                int result = adao.insert(c);
                if (result <= 0) {
                    message = "Account registration failed.";
                    type_message = 0;
                } else {
                    message = "Successfully registered account.";
                    type_message = 1;
                }
                session.removeAttribute("otpConfirm");
                session.removeAttribute("accountRegister");
                request.setAttribute("message", message);
                request.setAttribute("type_message", type_message);
                request.getRequestDispatcher("/user/login.jsp").forward(request, response);
            } else if(otpSession == null) {
                type_message = 0;
                message = "OTP has expired.";
                request.setAttribute("message", message);
                request.setAttribute("type_message", type_message);
                request.getRequestDispatcher("/user/otp.jsp").forward(request, response);
            }else{
                type_message = 0;
                message = "OTP code is incorrect. Try again.";
                request.setAttribute("message", message);
                request.setAttribute("type_message", type_message);
                request.getRequestDispatcher("/user/otp.jsp").forward(request, response);
            }
        }else if (request.getParameter("resend-otp") != null) {
            Account c = (Account) session.getAttribute("accountRegister");
            if (c != null) {
                String otpConfirm = this.generateOTP();
                session.setAttribute("accountRegister", c);
                setSessionWithExpiration(session, otpConfirm);
                String content = "Your OTP code is: " + otpConfirm + ". "
                        + "This OTP code is valid for 1 minute."
                        + "Warning: Tuyet Doi does not provide OTP to anyone for any reason.";
                boolean isSend = false;
                isSend = emailSend.sendEmail(c.getEmail(), "Confirm acccount", content, null);
                if (isSend) {
                    type_message = 1;
                    message = "New OTP has been sent to your email.";
                } else {
                    session.removeAttribute("otpConfirm");
                    type_message = 0;
                    message = "Sending OTP failed.";
                }
                request.setAttribute("message", message);
                request.setAttribute("type_message", type_message);
                request.getRequestDispatcher("/user/otp.jsp").forward(request, response);
            } else {
                request.setAttribute("message", message);
                request.setAttribute("type_message", type_message);
                request.getRequestDispatcher("/user/register.jsp").forward(request, response);
            }
        }
    }

    public static void setSessionWithExpiration(HttpSession session, String attributeValue) {
        final HttpSession finalSession = session;
        session.setAttribute("otpConfirm", attributeValue);
        Timer timer = new Timer();
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                finalSession.removeAttribute("otpConfirm");
                this.cancel();
            }
        }, 60 * 1000);
    }

    public String generateOTP() {
        int otpLength = 6;
        String digits = "0123456789";
        SecureRandom random = new SecureRandom();
        StringBuilder otp = new StringBuilder(otpLength);
        for (int i = 0; i < otpLength; i++) {
            int index = random.nextInt(digits.length());
            otp.append(digits.charAt(index));
        }
        return otp.toString();
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
