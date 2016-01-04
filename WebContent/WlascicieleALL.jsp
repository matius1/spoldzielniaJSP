
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
	<title>Wlasciciele</title>
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
		ResultSet resultset = statement.executeQuery("select * from wlasciciel");
	%>



	<div class="container">
		<div class="row">


			<div class="col-md-12">
				<h4>Przegladaj Wlascicieli</h4>
				<div class="table-responsive">


					<table id="mytable" class="table table-bordred table-striped">

						<thead>
							<th>ID</th>
							<th>Imie</th>
							<th>Nazwisko</th>
							<th>Pesel</th>
							<th>Ulica</th>
							<th>Miejscowosc</th>
							<th>Nr Konta</th>
						</thead>
						<tbody>

							<%
								while (resultset.next()) {
									String idW = resultset.getString(2);
									String imieW = resultset.getString(3);
									String nazwiskoW = resultset.getString(4);
									String peselW = resultset.getString(1);
									String ulicaW = resultset.getString(5);
									String miejscowoscW = resultset.getString(6);
									String nr_telefonuW = resultset.getString(7);
							%>

							<tr>
								<td><%=resultset.getString(2)%></td>
								<td><%=resultset.getString(3)%></td>
								<td><%=resultset.getString(4)%></td>
								<td><%=resultset.getString(1)%></td>
								<td><%=resultset.getString(5)%></td>
								<td><%=resultset.getString(6)%></td>
								<td><%=resultset.getString(7)%></td>
					
								<td><a href="MieszkaniaWlasciciela.jsp?id=<%=idW%>">Mieszkania</a></td>
								<td><a
									href="edytujWlascicielFORM.jsp?idW=<%=idW%>&imieW=<%=imieW%>&nazwiskoW=<%=nazwiskoW%>&peselW=<%=peselW%>&ulicaW=<%=ulicaW%>&miejscowoscW=<%=miejscowoscW%>&nr_telefonuW=<%=nr_telefonuW%>">Edytuj</a></td>
								<td><a href="deleteWlasciciel.jsp?deleteid=<%=idW%>">Usun</a></td>
							

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
