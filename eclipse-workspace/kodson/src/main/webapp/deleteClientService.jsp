<%@page import="java.sql.*" %> 
 
 
<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/kodsonvms?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","kodson_maxwell","0040105715@Icon");
        pst = con.prepareStatement("delete from clientService where id = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
       
       
       response.sendRedirect("clientService.jsp");
       %>