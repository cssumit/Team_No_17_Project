<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%
            String jspPath = session.getServletContext().getRealPath("");
            String txtFilePath = "/home/manish/Downloads/eclipse"+ "/linechartresponse.txt";
            BufferedReader reader = new BufferedReader(new FileReader(txtFilePath));
            StringBuilder sb = new StringBuilder();
            String line;

            while((line = reader.readLine())!= null){
                sb.append(line);
            }
            sb.append("---");
            //out.println(sb.toString());
            //out.println("---");
             txtFilePath = "/home/manish/Downloads/eclipse"+ "/linecharttput.txt";
             reader = new BufferedReader(new FileReader(txtFilePath));
            while((line = reader.readLine())!= null){
                sb.append(line);
            }
            out.println(sb.toString());
        %>
