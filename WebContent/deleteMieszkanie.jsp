
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<html>

<body>

<%
		
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/spoldzielnia";
		String user="root";
		String password="";
		
		Connection connection = DriverManager.getConnection(url, user, password);
		
		Statement statement = connection.createStatement() ;
	
	    String recordToDelete = request.getParameter("deleteid");
	  
		PreparedStatement myStmt = null;
	
		myStmt = connection.prepareStatement("delete from mieszkanie where id_mieszkania=?");
					
		myStmt.setString(1, recordToDelete);
		myStmt.executeUpdate();
			
			
		response.sendRedirect("MieszkaniaALL.jsp");
	


%>




</body>





</html>
			