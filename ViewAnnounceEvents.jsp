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
      <li><a href="index.jsp">Home</a></li>
      <li><a href="Admin.jsp">Event Manager Admin</a></li>
	  <li><a href="ViewAnnounceEvents.jsp">View Announce Events</a></li>
      <li><a href="Contact.jsp">Contact Us</a></li>
      <li><a href="About.jsp">About us</a></li>
     
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
	  <center><font size="3" color="white">View Events Screen</font></center>
	<table align="center" border="1" class="notepad">
<th>Event ID</th><th>Event Name</th><th>Start Date</th>
<th>End Date</th><th>Location Details</th> 
<th>Total Cost</th><th>Location Name</th><th>Event Address</th><th>Manager Name</th><th>Manager Phone No</th>
<th>Peoples Capacity</th><th>Number of Facilities</th>
</tr>
<%

try{
	
	Connection con = DBCon.getCon();
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from event_details");
	while(rs.next()){
		String name = rs.getString(2);
		Statement st = con.createStatement();
		ResultSet rset = st.executeQuery("select location_name,address,manager_name,manager_number,peoples_capacities,facilities from location_details where event_name='"+name+"'");
		
		while(rset.next()) {
			String lname = rset.getString(1);
			String address = rset.getString(2);
			String manager = rset.getString(3);
			String phone = rset.getString(4);
			String capacity = rset.getString(5);
			String facility = rset.getString(6);
		%>
		<tr>
		<td><font size="" color="white"><%=rs.getString(1)%></td>
		<td><font size="" color="white"><%=rs.getString(2)%></td>
		<td><font size="" color="white"><%=rs.getString(3)%></td>
		<td><font size="" color="white"><%=rs.getString(4)%></td>
		<td><font size="" color="white"><%=rs.getString(5)%></td>
		<td><font size="" color="white"><%=rs.getString(6)%></td>
		<td><font size="" color="white"><%=lname%></td>
		<td><font size="" color="white"><%=address%></td>
		<td><font size="" color="white"><%=manager%></td>
		<td><font size="" color="white"><%=phone%></td>
		<td><font size="" color="white"><%=capacity%></td>
		<td><font size="" color="white"><%=facility%></td>
		<%}}}catch(Exception e){
			e.printStackTrace();
		}%>
		<tr><td></td><td></td><td></td><td></td><td></td>
</body>
</html>