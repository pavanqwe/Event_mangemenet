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
	  <center><font size="3" color="white">Update Events Screen</font></center>
	<table align="center" border="1" class="notepad">
<th>Event Name</th><th>Location Name</th><th>Event Address</th><th>Manager Name</th><th>Manager Phone No</th>
<th>Peoples Capacity</th><th>Number of Facilities</th><th>Update Details</th></tr>
</tr>
<%

try{
	
	Connection con = DBCon.getCon();
	Statement st=con.createStatement();
	ResultSet rset = st.executeQuery("select * from location_details");
		
		while(rset.next()) {
			String event = rset.getString(1);
			String lname = rset.getString(2);
			String address = rset.getString(3);
			String manager = rset.getString(4);
			String phone = rset.getString(5);
			String capacity = rset.getString(6);
			String facility = rset.getString(7);
		%>
		<tr>
		
		<td><font size="" color="white"><%=event%></td>
		<td><font size="" color="white"><%=lname%></td>
		<td><font size="" color="white"><%=address%></td>
		<td><font size="" color="white"><%=manager%></td>
		<td><font size="" color="white"><%=phone%></td>
		<td><font size="" color="white"><%=capacity%></td>
		<td><font size="" color="white"><%=facility%></td>
		<td><a href="UpdateDetails.jsp?name=<%=lname%>"><font size="" color="white">Click Here</td>
		<%}}catch(Exception e){
			e.printStackTrace();
		}%>
		<tr><td></td><td></td><td></td><td></td><td></td>
</body>
</html>