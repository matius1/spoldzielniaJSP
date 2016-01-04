
<%@ page import="java.io.*,java.util.*,java.sql.*"%>


<html>
<body>
<%
		String idP = request.getParameter("idP");
		String imieP = request.getParameter("imieP");
		String nazwiskoP = request.getParameter("nazwiskoP");
		String peselP = request.getParameter("peselP");
		String ulicaP = request.getParameter("ulicaP");
		String miejscowoscP = request.getParameter("miejscowoscP");
		String stanowiskoP = request.getParameter("stanowiskoP");
		String nr_kontaP = request.getParameter("nr_kontaP");
		String nr_telefonuP = request.getParameter("nr_telefonuP");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/spoldzielnia";
		String user = "root";
		String password = "";
		
		Connection connection = DriverManager.getConnection(url, user, password);


		PreparedStatement myStmt = null;

		myStmt = connection.prepareStatement("update pracownik "
				+ "set imie=?, nazwisko=?, pesel=?, ulica=?, miejscowosc=?, stanowisko=?, nr_konta=?, nr_telefonu=? where id=?");
				
		myStmt.setString(1, imieP);
		myStmt.setString(2, nazwiskoP);
		myStmt.setString(3, peselP);
		myStmt.setString(4, ulicaP);
		myStmt.setString(5, miejscowoscP);
		myStmt.setString(6, stanowiskoP);
		myStmt.setString(7, nr_kontaP);
		myStmt.setString(8, nr_telefonuP);
		myStmt.setString(9, idP);
		
		myStmt.executeUpdate();


%>

		<h3>id: <%=idP%></h3>
		<h3>imieP: <%=imieP%></h3>
		<h3>nazwiskoP: <%=nazwiskoP%></h3>
		<h3>peselP: <%=peselP%></h3>
		<h3>ulicaP: <%=ulicaP%></h3>
		<h3>miejscowoscP: <%=miejscowoscP%></h3>
		<h3>stanowiskoP: <%=stanowiskoP%></h3>
		<h3>nr_kontaP: <%=nr_kontaP%></h3>
		<h3>nr_telefonuP: <%=nr_telefonuP%></h3>




</body>



</html>

