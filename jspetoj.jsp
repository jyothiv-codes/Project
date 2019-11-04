<%-- 
    Document   : jspetoj
    Created on : 14 Oct, 2019, 10:53:30 AM
    Author     : jyoth
--%>

<%@page import="com.codoid.products.fillo.Recordset"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%@page import="java.io.*"%>
        <%@page import="com.codoid.products.fillo.Fillo"%>
        <%@page import="com.codoid.products.fillo.Connection"%>
        <% 
            int f=0;
            
            out.println("<style>table,td { border: 1px solid black;border-collapse:collapse;}table{width:1000px;}td{text-align:center;}</style>");
          out.println("<table>");
          out.println("<tr><th>Roll Number</th><th>Name</th><th>CGPA</th><th>Department</th><th>Company</th>");
         
          
          String c=request.getParameter("cgpa");
          String dept=request.getParameter("dept"); 
          String company=request.getParameter("company");
           float cgpa=0;
          if (c!=null )
              cgpa=Float.parseFloat(c);
          
          Fillo fillo=new Fillo();
          com.codoid.products.fillo.Connection connection=fillo.getConnection("C:\\Users\\jyoth\\Documents\\studentdetails.xlsx");
          String strQuery="Select * from Sheet1 ";
          Recordset recordset=connection.executeQuery(strQuery);
          
          //checking the parameters
          while(recordset.next()){
           if ((recordset.getField("company").equals(company)) &&  (recordset.getField("dept").equals(dept)) && (Float.parseFloat(recordset.getField("cgpa"))>=cgpa))
           {
               out.println("<tr>");
        out.println("<td>");
        out.print(recordset.getField("roll"));
        out.println("</td>");
            
            
            
        out.println("<td>");
        out.print(recordset.getField("name"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("cgpa"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("dept"));
            out.println("</td>");
           
            
         out.println("<td>");
        out.print(recordset.getField("company"));
            out.println("</td>");
            out.println("</tr>");
           } 

           else   if (  (recordset.getField("dept").equals(dept)) && (Float.parseFloat(recordset.getField("cgpa"))>=cgpa))
           {
               out.println("<tr>");
        out.println("<td>");
        out.print(recordset.getField("roll"));
        out.println("</td>");
            
            
            
        out.println("<td>");
        out.print(recordset.getField("name"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("cgpa"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("dept"));
            out.println("</td>");
           
            
         out.println("<td>");
        out.print(recordset.getField("company"));
            out.println("</td>");
            out.println("</tr>");
           }               
           else if ((recordset.getField("company").equals(company)) &&  (recordset.getField("dept").equals(dept)) && (Float.parseFloat(recordset.getField("cgpa"))>=3))
           {
               out.println("<tr>");
        out.println("<td>");
        out.print(recordset.getField("roll"));
        out.println("</td>");
            
            
            
        out.println("<td>");
        out.print(recordset.getField("name"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("cgpa"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("dept"));
            out.println("</td>");
           
            
         out.println("<td>");
        out.print(recordset.getField("company"));
            out.println("</td>");
            out.println("</tr>");
           } 
           else if ((recordset.getField("company").equals(company))  && (Float.parseFloat(recordset.getField("cgpa"))>=cgpa))
           {
               out.println("<tr>");
        out.println("<td>");
        out.print(recordset.getField("roll"));
        out.println("</td>");
            
            
            
        out.println("<td>");
        out.print(recordset.getField("name"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("cgpa"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("dept"));
            out.println("</td>");
           
            
         out.println("<td>");
        out.print(recordset.getField("company"));
            out.println("</td>");
            out.println("</tr>");
           } 
           else if (recordset.getField("company").equals(company)){
        out.println("<tr>");
        out.println("<td>");
        out.print(recordset.getField("roll"));
        out.println("</td>");
            
            
            
        out.println("<td>");
        out.print(recordset.getField("name"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("cgpa"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("dept"));
            out.println("</td>");
           
            
         out.println("<td>");
        out.print(recordset.getField("company"));
            out.println("</td>");
            out.println("</tr>");
        
    }
           
           else if (recordset.getField("dept").equals(dept)){
        out.println("<tr>");
        out.println("<td>");
        out.print(recordset.getField("roll"));
        out.println("</td>");
            
            
            
        out.println("<td>");
        out.print(recordset.getField("name"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("cgpa"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("dept"));
            out.println("</td>");
           
            
         out.println("<td>");
        out.print(recordset.getField("company"));
            out.println("</td>");
            out.println("</tr>");
        
    }
           else if (Float.parseFloat(recordset.getField("cgpa"))>=cgpa){
                out.println("<tr>");
        out.println("<td>");
        out.print(recordset.getField("roll"));
        out.println("</td>");
            
            
            
        out.println("<td>");
        out.print(recordset.getField("name"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("cgpa"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("dept"));
            out.println("</td>");
           
            
         out.println("<td>");
        out.print(recordset.getField("company"));
            out.println("</td>");
            out.println("</tr>");
           }
           
           
          }//while ends here
                
          if (f==0)
              System.out.println("No records found!!");
                  
          
          
          
          
  out.println("</table>");



 
recordset.close();
connection.close();
            %>
    </body>
</html>
