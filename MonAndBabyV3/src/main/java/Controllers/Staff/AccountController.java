/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controllers.Staff;

import DAO.AccountDAO;
import DAO.RoleDAO;
import Model.Account;
import Model.Role;
import Utils.DateCustom;
import Utils.NumberCustom;
import Utils.Upload;
import Utils.Validation;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author HP
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 50)   // 50 MB
public class AccountController extends HttpServlet {
    
    private static AccountDAO accountDao;

    public AccountController() {
        this.accountDao = new AccountDAO();
    }
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AccountController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AccountController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String path = request.getRequestURI();
//        if (auth.isLogigAdminWithHighPermission(request)) {
        Validation validate = new Validation();
        if (path.endsWith("/MomAndBaby/staff/account")) {
            this.showAllAccount(request, response);
        } else {
            String paths[] = path.split("/");
            int id = validate.getInt(paths[paths.length - 1]);
            if (path.startsWith("/MomAndBaby/staff/account/update/")) {
                this.getCurrentAccountUpdate(request, response, id);
            } else if (path.startsWith("/MomAndBaby/staff/account/delete/")) {
                this.deleteAccount(request, response, id);
            } else if (path.startsWith("/MomAndBaby/staff/account/personal/")) {
                this.getCurrentAccountUpdatePersonal(request, response, paths[paths.length - 1]);
            }
        }
    } 

    private void getCurrentAccountUpdatePersonal(HttpServletRequest request, HttpServletResponse response, String username) {
        try {
            Validation validate = new Validation();
            HttpSession session = request.getSession();
            String usernameLogin = session.getAttribute("usernameStaff") + "";
            if (usernameLogin.toLowerCase().equals(username.toLowerCase())) {
                Account a = accountDao.isExistAccount(username, "");
                request.setAttribute("account", a);
                request.getRequestDispatcher("/staff/view/account/updateAccountPersonal.jsp").forward(request, response);
            } else {
                response.sendRedirect("/MomAndBaby/staff/404");
            }
        } catch (Exception e) {
            System.out.println("Get current account update: " + e);
        }
    }

    private void getCurrentAccountUpdate(HttpServletRequest request, HttpServletResponse response, int id) {
        try {
            Account a = accountDao.getAccountById(id);
            if (a != null) {
                RoleDAO roleDao = new RoleDAO();
                request.setAttribute("account", a);
                List<Role> roles = roleDao.getRole();
                request.setAttribute("roles", roles);
                request.getRequestDispatcher("/staff/view/account/updateAccount.jsp").forward(request, response);
            } else {
                response.sendRedirect("/MomAndBaby/staff/404");
            }
        } catch (Exception e) {
            System.out.println("Get current account update: " + e);
        }
    }
    
    private void showAllAccount(HttpServletRequest request, HttpServletResponse response) {
        try {
            List<Account> accounts = accountDao.allAccountByStaff();
            System.out.println("Account: " + accounts.size());
            request.setAttribute("accounts", accounts);
            request.getRequestDispatcher("/staff/view/account/account.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println("Show account: " + e);
        }
    }

    private void deleteAccount(HttpServletRequest request, HttpServletResponse response, int id) {
        try {
            int result = accountDao.delete(id);
            String url = "/MomAndBaby/staff/account?act=delete&status=" + result;
            response.sendRedirect(url);
        } catch (Exception e) {
            System.out.println("Delete account staff: " + e);
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
        if (request.getParameter("btn-add-account") != null) {
            this.addNew(request, response);
        } else if (request.getParameter("btn-update-account") != null) {
            this.updateAccount(request, response);
        } else if (request.getParameter("btn-update-account-personal") != null) {
            this.updateAccountPersonal(request, response);
        } else if(request.getParameter("btn-delete-accounts") != null) {
            this.deleteAccounts(request, response);
        }
    }

    private void addNew(HttpServletRequest request, HttpServletResponse response) {
        try {
            NumberCustom number = new NumberCustom();
            DateCustom date = new DateCustom();
            AccountDAO accountDao = new AccountDAO();
            String username = request.getParameter("username").trim();
            String email = request.getParameter("email").trim();
            Account currentDao = accountDao.isExistAccount(username, email);
            int type_message = 0;
            if (currentDao == null) {
                String fullname = request.getParameter("fullname").trim();
                String address = request.getParameter("address").trim();
                String phone = request.getParameter("phone").trim();
                String password = request.getParameter("password").trim();
                int role = number.getInt(request.getParameter("role"));
                int status = number.getInt(request.getParameter("status"));
                Timestamp createAt = date.getCurrentTime();
                Account a = new Account(0, username, password, email, phone, status, fullname, createAt, role, null);
                int result = accountDao.insert(a);
                if (result >= 1) {
                    type_message = 1;
                }
            } else {
                if (currentDao.getEmail().toLowerCase().equals(email.toLowerCase())) {
                    type_message = 3;
                } else {
                    type_message = 2;
                }
            }
            response.sendRedirect("/MomAndBaby/staff/account?act=add-new&status=" + type_message);
        } catch (Exception e) {
            System.out.println("Add new admin: " + e);
        }
    }

    private void updateAccount(HttpServletRequest request, HttpServletResponse response) {
        try {
            Validation validate = new Validation();
            int id = validate.getInt(request.getParameter("id"));
            String fullname = request.getParameter("fullname").trim();
            String email = request.getParameter("email").trim();
            String phone = request.getParameter("phone").trim();
            String username = request.getParameter("username").trim();
            String newPassword = request.getParameter("password").trim();
            Account isExistEmail = accountDao.isExistAccount(username, email);
            int type_message = 0;
            boolean isEmail = false;
            if (isExistEmail != null) {
                if (!username.toLowerCase().equals(isExistEmail.getUsername().toLowerCase())) {
                    isEmail = true;
                }
            }
            if (!isEmail) {
                if (newPassword.equals("")) {
                    newPassword = request.getParameter("oldPassword");
                }
                int role = validate.getInt(request.getParameter("role"));
                int status = validate.getInt(request.getParameter("status"));
                Account a = new Account(id, username, newPassword, email, phone, status, fullname, null, role, null);
                type_message = accountDao.update(a);
            } else {
                type_message = 2;
            }
            String url = "/MomAndBaby/staff/account?act=update-account&status=" + type_message;
            response.sendRedirect(url);
        } catch (Exception e) {
            System.out.println("Update account: " + e);
        }
    }

    private void updateAccountPersonal(HttpServletRequest request, HttpServletResponse response) {
        try {
            Upload upload = new Upload();
            Validation validate = new Validation();
//     get information from form
            int id = validate.getInt(request.getParameter("id"));
            String fullname = request.getParameter("fullname").trim();
            String username = request.getParameter("username").trim();
            String email = request.getParameter("email").trim();
            Account a = accountDao.isExistAccount("", email);
            boolean isEmail = false;
            int type_message = 0;
            if (a != null) {
                if (!username.toLowerCase().equals(a.getUsername().toLowerCase())) {
                    isEmail = true;
                }
            }
            if (!isEmail) {
                Part filePath = request.getPart("avatar");
                String pathDir = "./uploads/account/";
                String uploadPath = getServletContext().getRealPath(pathDir);
                String fileName = pathDir;
                String fileNameUpload = upload.uploadImg(filePath, uploadPath);
                if (fileNameUpload == null) {
                    fileName = a.getAvatar();
                } else {
                    fileName += fileNameUpload;
                }
                String phone = request.getParameter("phone").trim();
                String newPassword = request.getParameter("password").trim();
                if (newPassword.equals("")) {
                    newPassword = request.getParameter("oldPassword");
                }
                int role = validate.getInt(request.getParameter("role"));
                int status = validate.getInt(request.getParameter("status"));
                Account aUpdate = new Account(id, username, newPassword, email, phone, status, fullname, null, role, fileName);
                type_message = accountDao.updatePersonal(aUpdate);
            } else {
                type_message = 2;
            }
            String url = "/MomAndBaby/staff?act=update-account&status=" + type_message;
            response.sendRedirect(url);
        } catch (Exception e) {
            System.out.println("Update account personal: " + e);
        }
    }

    private void deleteAccounts(HttpServletRequest request, HttpServletResponse response) {
        try {
            Validation validate = new Validation();
            String ids[] = request.getParameterValues("delete-account-item");
            boolean isDelete = false;
            if (ids == null) {
                response.sendRedirect("/MomAndBaby/staff/account?act=delete&status=2");
                return;
            }
            for (String id : ids) {
                int result = accountDao.delete(validate.getInt(id));
                if (result >= 1 && !isDelete) {
                    isDelete = true;
                }
            }
            String url = "/MomAndBaby/staff?act=delete&status=";
            if (isDelete) {
                url += 1;
            } else {
                url += 0;
            }
            response.sendRedirect(url);
        } catch (Exception e) {
            System.out.println("Delete account staff:  " + e);
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
