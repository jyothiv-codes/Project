<%-- 
    Document   : jsp
    Created on : 13 Oct, 2019, 10:50:37 PM
    Author     : jyoth
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! static int count=0; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stored!</title>
        <style>
            body{background-color: #cce6ff;}
            h2,h3{font-weight: bold;font-family: cursive;}
            </style>
    </head>
    <body>
        <h2>Hello ${name}!</h2> 
        <h3>Your details have been recorded. This will help you in getting bonus points!.</h3>
        <h3>Kindly contact your department's academic co-ordinator for details regarding credit transfer.</h3>
        <h2>All the best!!!</h2>
        <% 
            count+=1;
            out.print("You have accessed this page "+count+" times. ");
            %>
        
        <%@page import="java.io.*"%>
        <%@page import="com.codoid.products.fillo.Fillo"%>
        <%@page import="com.codoid.products.fillo.Connection"%>
        <%@ page import="javax.servlet.http.Cookie" %>
   
 <%            
            
        /*Fillo fillo=new Fillo();
        Connection connection=fillo.getConnection("C:\\Users\\jyoth\\Documents\\Book1.xslx");   
        String str="INSERT INTO Sheet1 (name,cname,regno,credentials) VALUES"+"("+name+","+name+","+name+","+name+")";
        int i=connection.executeUpdate(str);
        connection.close();*/
     //fillo now
       String name = (String)request.getAttribute("name");
        String cname = (String)request.getAttribute("cname"); 
        String regno = (String)request.getAttribute("regno");
        String credentials = (String)request.getAttribute("credentials");
        
        Fillo fillo=new Fillo();
           Connection connection=fillo.getConnection("C:\\Users\\jyoth\\Documents\\Book1.xlsx");
           String strQuery = "INSERT INTO Sheet1(name,cname,regno,credentials) VALUES('"+name+"','"+cname+"','"+regno+"','"+credentials+"')";
           connection.executeUpdate(strQuery);
           connection.close();
        
            Cookie cks=new Cookie("Certification",cname);//creating cookie object 
            response.addCookie(cks);
            Cookie cks1=new Cookie("Name",name);//creating cookie object 
            response.addCookie(cks1);
            Cookie cks2=new Cookie("Identity",regno);//creating cookie object 
            response.addCookie(cks2);
             Cookie cks3=new Cookie("Credentials",credentials);//creating cookie object 
            response.addCookie(cks3);
           
        
       
        out.print("<br>You have entered....</br>");
        Cookie ck[]=request.getCookies();  
    for(int i=0;i<ck.length;i++){  
     out.print("<br>   "+ck[i].getName()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cookie value-- "+ck[i].getValue());//printing name and value of cookie  
    }  
        //text file append
        FileWriter fw = null;
  PrintWriter pw = null;
    try {
        fw = new FileWriter("C:\\Users\\jyoth\\Desktop\\append.txt",true);
        pw = new PrintWriter(fw);
        String data=name+" "+cname+" "+regno+" "+credentials+"\n ";
    pw.println(data);
    
        pw.close();
        fw.close();
    } catch (IOException ex) {
        //Logger.getLogger(FileAccessView.class.getName()).log(Level.SEVERE, null, ex);
    }
        
        
        
        %>       
        

    </body>
</html>
