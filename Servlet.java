/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.codoid.products.exception.FilloException;
import com.codoid.products.fillo.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.codoid.products.fillo.Fillo;
import com.codoid.products.fillo.Recordset;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jyoth
 */
public class Servlet extends HttpServlet {

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
            throws ServletException, IOException, FilloException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String cname=request.getParameter("cname");
            String name=request.getParameter("name");
            String regno=request.getParameter("regno");
            String credentials=request.getParameter("credentials");
            if (name.length()<4){
                out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Error!!!</title>");     
            out.println("<style>");
            out.println("body{background-color: #cce6ff;}");
            out.println("h1{font-weight: bold;font-family: cursive;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Length of the name is less than 4. </h1>");
            out.println("</body>");
            out.println("</html>");
            }
            else if (regno.length()<4){
                out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Error!!!</title>");        
            out.println("<style>");
            out.println("body{background-color: #cce6ff;}");
            out.println("h1{font-weight: bold;font-family: cursive;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Oops! Length of the roll number should not be less than 4. </h1>");
            out.println("</body>");
            out.println("</html>");
            }
            
             if (cname.length()<1){
                out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Error!!!</title>");       
            out.println("<style>");
            out.println("body{background-color: #cce6ff;}");
            out.println("h1{font-weight: bold;font-family: cursive;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Are you sure you entered the right certification name? <br>Please check once again and submit the right name. </h1>");
            out.println("</body>");
            out.println("</html>");
            }
            if (credentials.length()<4){
                out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Error!!!</title>");  
            out.println("<style>");
            out.println("body{background-color: #cce6ff;}");
            out.println("h1{font-weight: bold;font-family: cursive;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Doesn't seem like your credentials are right. <br>Please check once again. </h1>");
            out.println("</body>");
            out.println("</html>");
            }
            else if ((credentials.length()<4)||(cname.length()<1)||(cname.length()<1)||(regno.length()<4)){
                out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Error!!!</title>");       
            out.println("<style>");
            out.println("body{background-color: #cce6ff;}");
            out.println("h1{font-weight: bold;font-family: cursive;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Seems like a few details are incorrect. Please go back and enter them again correctly. </h1>");
            out.println("</body>");
            out.println("</html>");
            }
            
            else{
                 out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Details recorded!!</title>"); 
            out.println("<style>");
            out.println("body{background-color: #cce6ff;}");
            out.println("h1{font-weight: bold;font-family: cursive;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Your details have been recorded successfully!!<br> This can help you in credit transfer."+name+" </h1>");
            out.println("</body>");
            out.println("</html>");
            request.setAttribute("name",name);
            request.setAttribute("cname",cname);
            request.setAttribute("regno",regno);
            request.setAttribute("credentials",credentials);
request.getRequestDispatcher("jsp.jsp").forward(request, response); 
            
            }
           
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
        try {
            processRequest(request, response);
        } catch (FilloException ex) {
            Logger.getLogger(Servlet.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (FilloException ex) {
            Logger.getLogger(Servlet.class.getName()).log(Level.SEVERE, null, ex);
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
