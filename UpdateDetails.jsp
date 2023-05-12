<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.DBCon"%>
<html>
<head>
<title>Event Management System</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<script LANGUAGE="Javascript" >
function validate(){
	var locationname = document.forms["f1"]["t2"].value;
	var address = document.forms["f1"]["t3"].value;
	var manager = document.forms["f1"]["t4"].value;
	var phone = document.forms["f1"]["t5"].value;
	var capacity=document.forms["f1"]["t6"].value;
	var facility=document.forms["f1"]["t7"].value;
	
	if(locationname == null || locationname==""){
		window.alert("Location name must be enter");
		document.f1.t2.focus();
		return false;
	}
	if(address == null || address==""){
		window.alert("Address must be enter");
		document.f1.t3.focus();
		return false;
	}
	if(manager == null || manager==""){
		window.alert("Manager name must be enter");
		document.f1.t4.focus();
		return false;
	}
	if(phone == null || phone==""){
		window.alert("Phone number must be enter");
		document.f1.t5.focus();
		return false;
	}
	if(!phone.match(/^\d{10}$/)){
		window.alert("Valid phone no must be enter");
		document.f1.t5.focus();
		return false;
	}
	if(capacity == null || capacity==""){
		window.alert("Peoples capacity must be enter");
		document.f1.t6.focus();
		return false;
	}
	if(facility == null || facility==""){
		window.alert("Number of facilities must be enter");
		document.f1.t7.focus();
		return false;
	}
	return true;
}
</script>
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
	
	  <center><font size="3" color="white">Add Event Location Screen</font></center>
	<form name="f1" method="post" action="UpdateLocation" OnSubmit="return validate()"><br>
	<TABLE align=center width="20%" class="notepad">

	
		
		
		 <%
		 String lname = request.getParameter("name");
   Connection con = DBCon.getCon();
   Statement stmt = con.createStatement();
   ResultSet rset = stmt.executeQuery("select * from location_details where location_name='"+lname+"'");
   while(rset.next()){
	   String event = rset.getString(1);
			lname = rset.getString(2);
			String address = rset.getString(3);
			String manager = rset.getString(4);
			String phone = rset.getString(5);
			String capacity = rset.getString(6);
			String facility = rset.getString(7);
	   %>
	   <TR><TH align="left"><font size="2" color="white">Event&nbsp;Name</font>
		<TD><Input type=text name="t1" size="40" value="<%=event%>" readonly>
		</TD>
		</TR>

  <TR><TH align="left"><font size="2" color="white">Location&nbsp;Name</font>
		<TD><Input type=text name="t2" size="40" value="<%=lname%>">
		</TD>
		</TR>
<TR><TH align="left"><font size="2" color="white">Address</font>
		<TD><Input type=text name="t3" size="50" value="<%=address%>">
		</TD>
		</TR>
<TR><TH align="left"><font size="2" color="white">Manager&nbsp;Name</font>
		<TD><Input type=text name="t4" size="30" value="<%=manager%>">
		</TD>
		</TR>
<TR><TH align="left"><font size="2" color="white">Phone&nbsp;No</font>
		<TD><Input type=text name="t5" size="15" value="<%=phone%>">
		</TD>
		</TR>

<TR><TH align="left"><font size="2" color="white">Peoples&nbsp;Capacities</font>
		<TD><Input type=text name="t6" size="40" value="<%=capacity%>">
		</TD>
		</TR>

<TR><TH align="left"><font size="2" color="white">Available&nbsp;Facilities</font>
		<TD><Input type=text name="t7" size="60" value="<%=facility%>">
		</TD>
		</TR>

	
		  <TR>
				 <TD></TD>
			<TD>	
		  <input type="submit" value="Submit">
		  </TD></TR>

		 		 <%}%>
		  </TABLE>
		
</form>
</div>

</body>
</html>
