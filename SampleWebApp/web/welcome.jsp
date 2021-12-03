<%-- 
    Document   : welcome.jsp
    Created on : 2 Dec, 2021, 3:04:24 PM
    Author     : Lalbahadur Vishwakarma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.InetAddress" %>
<%@ page import="java.net.UnknownHostException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet"> 
        <title>Sample Web Application TestServlet</title>
    
        <style>
            body{
                font-family: 'Open Sans', sans-serif;
            }
            table,td,tr{
                border: 1px solid;
                border-collapse: collapse;
            }
            span{
                font-weight: normal;
                font-size: 16px;
                color: black;
            }
h2 {
  border: 5px solid blue;
}

            </style>
    </head>
    <body>
        
        <%
            String hostName;
            String serverName;
            InetAddress ip;
            Date Time;
            String Dtime;
            hostName = InetAddress.getLocalHost().getHostName()+" with IP="+InetAddress.getLocalHost().getHostAddress()+" ";
            ip = InetAddress.getLocalHost();
            serverName = System.getProperty("weblogic.Name");
            Time = new Date();
            Dtime = Time.toString();
            %>
        
        <h2> This is a Sample Web Application - Test     Servlet  </h2>
        <hr>
        
         <div>
            <h4>Host Name : <span><%=  hostName %></span></h4>
            <h4> IP Address: <span<%= ip %> </span>
            <h4>JVM Name: <span><%=  serverName %></span></h4>
            <h4> Date & Time: <span> <%= Dtime %> </h4>
        </div>
        
        <h4>HTTP Request URL : <span><%= request.getRequestURL() %></span></h4>
        <h4>HTTP Request Method : <span><%= request.getMethod() %></span></h4>
 
        <h4>HTTP Request Headers Received</h4>
        
        <table>
            <% 
                Enumeration enumeration = request.getHeaderNames(); 
                while (enumeration.hasMoreElements()) 
                 { 
                  String name=(String) 
                  enumeration.nextElement(); 
                  String value = request.getHeader(name);
              %>
                <tr>
                    <td>
                        <%=name %>
                    </td>
                    <td>
                        <%=value %>
                    </td>
                </tr>
             <% } %>
        </table>
        
        <h4>HTTP Cookies Received</h4>
           
          <table>
               <%
            
            Cookie[] arr1= request.getCookies();
            for (int i=0; i < arr1.length; i++)
            {
                String cookiename = arr1[i].getName();
                String cookievalue = arr1[i].getValue();
            
            %>
                <tr>
                    <td>
                        <%=cookiename %>
                    </td>
                    <td>
                        <%=cookievalue %>
                    </td>
                </tr>
             <% } %>
        </table> 
        
    Create by ~ Lalbahadur Vishwakarma        
        
</body>
</html>
