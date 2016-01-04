
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
	<title>Mieszkania</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	
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
		ResultSet resultset = statement.executeQuery("select * from mieszkanie JOIN blok on mieszkanie.id_bloku=blok.id_bloku ");
	%>



	<div class="container">
	
		<div class="row">


			<div class="col-md-12">
				<h4>Przegladaj Mieszkan</h4>
				<div class="table-responsive">


					<table id="mytable" class="table table-bordred table-striped">

						<thead>
							<th>ID Mieszkania</th>
							<th>ID Bloku</th>
							<th>Ulica</th>
							<th>Ulica nr</th>
							<th>Miejscowosc</th>
							<th>Nr mieszkania</th>
							<th>Pietro</th>
							<th>Powierzchnia m<sup>2</sup></th>
							<th>Ilosc pokoi</th>
							<th>Powierzchnia piwnicy m<sup>2</sup></th>
						</thead>
						<tbody>

							<%
								while (resultset.next()) {
									String idM = resultset.getString(1);
									String idBlokuM = resultset.getString(2);
									String nrMieszkania = resultset.getString(3);
									String pietro = resultset.getString(4);
									String powierzchnia = resultset.getString(5);
									String ilPok = resultset.getString(6);
									String piwPow = resultset.getString(7);
								
							%>

							<tr>
								<td><%=resultset.getString(1)%></td>
								<td><%=resultset.getString(2)%></td>
								<td><%=resultset.getString(9)%></td>
								<td><%=resultset.getString(10)%></td>
								<td><%=resultset.getString(11)%></td>
								<td><%=resultset.getString(3)%></td>
								<td><%=resultset.getString(4)%></td>
								<td><%=resultset.getString(5)%></td>
								<td><%=resultset.getString(6)%></td>
								<td><%=resultset.getString(7)%></td>
					
								<td><a
									href="edytujMieszkanieFORM.jsp?idM=<%=idM%>&iidBlokuM=<%=idBlokuM%>&nrMieszkania=<%=nrMieszkania%>&pietro=<%=pietro%>&powierzchnia=<%=powierzchnia%>&ilPok=<%=ilPok%>&piwPow=<%=piwPow%>">Edytuj</a></td>
								<td><a href="deleteMieszkanie.jsp?deleteid=<%=idM%>">Usun</a></td>
							

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
