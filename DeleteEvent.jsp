<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
<html>
<head>
<title>Event Management System</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
  <div id="header">
   <div id="logo">
      <h3><font color="orange" size="4">Event Management System</font></h3>
	  <marquee><font color="pink" size=4>Event Management System</font></marquee>
    </div>
   
  
    </div>
  </div>
  <div id="menu">
       <ul>
      <li><a href="AddEvent.jsp">Create New Event</a></li>
	  <li><a href="ViewEvent.jsp">View Events List</a></li>
      <li><a href="AddLocation.jsp">Add New Event Location</a></li>
	  <li><a href="DeleteEvent.jsp">Delete Events</a></li>
	  <li><a href="UpdateEvent.jsp">Update Events</a></li>
	  <li><a href="Logout.jsp">Logout</a></li>
     
   </ul>
  </div>
  <div class="entry">
   <br/><br/>
 <%
	 String data=request.getParameter("t1");
	 if(data!=null){
		 out.println("<center><font size=2 color=white>"+data+"</font></center>");
	 }
	 %>
	<br>
	  <center><font size="3" color="white">Delete Location Screen</font></center>
	<table align="center" border="1" class="notepad">
<th>Event Name</th><th>Location Name</th><th>Address</th>
<th>Manager Name</th><th>Manager Number</th> 
<th>Peoples Capacity</th><th>Number of Facilities</th><th>Delete Location</th>
</tr>
<%

try{
	
	Connection con = DBCon.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from location_details");
	while(rs.next()){
		
		%>
		<tr>
		<td><font size="" color="white"><%=rs.getString(1)%></td>
		<td><font size="" color="white"><%=rs.getString(2)%></td>
		<td><font size="" color="white"><%=rs.getString(3)%></td>
		<td><font size="" color="white"><%=rs.getString(4)%></td>
		<td><font size="" color="white"><%=rs.getString(5)%></td>
		<td><font size="" color="white"><%=rs.getString(6)%></td>
		<td><font size="" color="white"><%=rs.getString(7)%></td>
		<td><a href="DeleteLocation?name=<%=rs.getString(2)%>"><font size="" color="white">Click Here</td>
		
		<%}}catch(Exception e){
			e.printStackTrace();
		}%>
		<tr><td></td><td></td><td></td><td></td><td></td>
</body>
</html>