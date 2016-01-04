
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
  <head>
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,100' rel='stylesheet' type='text/css'>
    <link rel='stylesheet' href='style.css'/>
   
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Pracownicy</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="js/paging.js"></script>

  </head>
  <body>
  
    <div class="nav">
      <div class="container">
        	<ul>
        	<a href="home.jsp"> <li>Home</li></a>
        	<a href="PracownicyALL.jsp"> <li>Pracownicy</li></a>
            <a href="WlascicieleALL.jsp"><li>Wlasciciele</li></a>
            <a href="MieszkaniaALL.jsp"><li>Mieszkania</li></a>
            <a href="BlokiALL.jsp"><li>Bloki</li></a>
            <a href="#"><li>Kontakt</li></a>
        	</ul>
      </div>
    </div>

    <div class="main">
      <div class="container">
    
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/spoldzielnia";
		String user = "root";
		String password = "";

		Connection connection = DriverManager.getConnection(url, user, password);

		Statement statement = connection.createStatement();
		ResultSet resultset = statement.executeQuery("select * from pracownik");
	%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4>Przegladaj Pracownikow <% %></h4>
				<div class="table-responsive">
					<table id="mytable" class="table table-bordred table-striped">
						<thead>
							<th>ID</th>
							<th>Imie</th>
							<th>Nazwisko</th>
							<th>Pesel</th>
							<th>Ulica</th>
							<th>Miejscowosc</th>
							<th>Stanowisko</th>
							<th>Nr Konta</th>
							<th>Nr Telefonu</th>
						</thead>
						<tbody>

							<%
								while (resultset.next()) {
									String idP = resultset.getString(1);
									String imieP = resultset.getString(2);
									String nazwiskoP = resultset.getString(3);
									String peselP = resultset.getString(4);
									String ulicaP = resultset.getString(5);
									String miejscowoscP = resultset.getString(6);
									String stanowiskoP = resultset.getString(7);
									String nr_kontaP = resultset.getString(8);
									String nr_telefonuP = resultset.getString(9);
							%>

							<tr>
								<td><%=resultset.getString(1)%></td>
								<td><%=resultset.getString(2)%></td>
								<td><%=resultset.getString(3)%></td>
								<td><%=resultset.getString(4)%></td>
								<td><%=resultset.getString(5)%></td>
								<td><%=resultset.getString(6)%></td>
								<td><%=resultset.getString(7)%></td>
								<td><%=resultset.getString(8)%></td>
								<td><%=resultset.getString(9)%></td>


								<td><a
									href="edytujPracownikFORM.jsp?idP=<%=idP%>&imieP=<%=imieP%>&nazwiskoP=<%=nazwiskoP%>&peselP=<%=peselP%>&ulicaP=<%=ulicaP%>&miejscowoscP=<%=miejscowoscP%>&stanowiskoP=<%=stanowiskoP%>&nr_kontaP=<%=nr_kontaP%>&nr_telefonuP=<%=nr_telefonuP%>">Edytuj</a></td>
								<td><a href="deletePracownik.jsp?deleteid=<%=idP%>">Usun</a></td>
							

							</tr>

							<%
								}
							%>

						</tbody>

					</table>
					<div id="pageNavPosition"></div>

				</div>

			</div>
		</div>
	</div>

      </div>
    </div>
    
    
     <script type="text/javascript"><!--
        var pager = new Pager('mytable', 10); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
    
    

  </body>
</html>
