
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
	
	    
		String idP = request.getParameter("idP");
		String imieP = request.getParameter("imieP");
		String nazwiskoP = request.getParameter("nazwiskoP");
		String peselP = request.getParameter("peselP");
		String ulicaP = request.getParameter("ulicaP");
		String miejscowoscP = request.getParameter("miejscowoscP");
		String stanowiskoP = request.getParameter("stanowiskoP");
		String nr_kontaP = request.getParameter("nr_kontaP");
		String nr_telefonuP = request.getParameter("nr_telefonuP");


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
		
		
		
		
		
		<div class="main">
      <div class="container">
        <h2>Edycja Pracownika</h2>	
        
        <form action="edytujPracownikSQL.jsp">
        <div class="form-group">
           <label>ID</label>
            <input type="text" class="form-control" id="idP" value="<%=idP%>">
          </div>
           <div class="form-group">
           <label>Imie</label>
            <input type="text" class="form-control" id="imieP" value="<%=imieP%>">
          </div>
          <div class="form-group">
            <label>Nazwisko</label>
            <input type="text" class="form-control" id="nazwiskoP" value="<%=nazwiskoP%>" >
          </div>
          <div class="form-group">
            <label>Pesel</label>
            <input type="text" class="form-control" id="peselP" value="<%=peselP%>">
          </div>
          <div class="form-group">
            <label>Ulica</label>
            <input type="text" class="form-control" id="ulicaP" value="<%=ulicaP%>">
          </div>
           <div class="form-group">
            <label>Miejscowosc</label>
            <input type="text" class="form-control" id="miejscowoscP" value="<%=miejscowoscP%>">
          </div>
           <div class="form-group">
            <label>Stanowisko</label>
            <input type="text" class="form-control" id="stanowiskoP" value="<%=stanowiskoP%>">
          </div>
           <div class="form-group">
            <label>Nr Konta</label>
            <input type="text" class="form-control" id="nr_kontaP" value="<%=nr_kontaP%>">
          </div>
           <div class="form-group">
            <label>Nr Telefonu</label>
            <input type="text" class="form-control" id="nr_telefonuP" value="<%=nr_telefonuP%>">
          </div>
          
          <button type="submit" value="Submit" class="btn btn-default" >Zapisz</button>
        </form>
        
      </div>
    </div>

</body>

</html>
			