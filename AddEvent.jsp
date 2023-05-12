<html>
<head>
<title>Event Management System</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
 <script LANGUAGE="Javascript" >
function validate(){
	var name = document.forms["f1"]["t1"].value;
	var start = document.forms["f1"]["t2"].value;
	var end = document.forms["f1"]["t3"].value;
	var locationname = document.forms["f1"]["t4"].value;
	var cost=document.forms["f1"]["t5"].value;
	
	if(name == null || name==""){
		window.alert("Event name must be enter");
		document.f1.t1.focus();
		return false;
	}
	if(start == null || start==""){
		window.alert("Start date must be choosen");
		document.f1.t2.focus();
		return false;
	}
	if(end == null || end==""){
		window.alert("End date must be choosen");
		document.f1.t3.focus();
		return false;
	}
	if(locationname == null || locationname==""){
		window.alert("Location name must be enter");
		document.f1.t4.focus();
		return false;
	}
	if(cost == null || cost==""){
		window.alert("Event cost must be enter");
		document.f1.t5.focus();
		return false;
	}
	return true;
}
</script>
<script language="javascript" type="text/javascript" src="datetimepicker.js">
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
	
	  <center><font size="3" color="white">Add New Event Screen</font></center>
	<form name="f1" method="post" action="AddEvent" OnSubmit="return validate()"><br>
	<TABLE align=center width="35%" class="notepad">

		<TR><TH align="left"><font size="2" color="white">Event&nbsp;Name</font>
		<TD><Input type=text name="t1" size="30">
		</TD>
		</TR>

		<tr><TH align="left"><font size="2" color="white">Start&nbsp;Date</b></td><td><input name="t2" type="text" id="demo" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo','ddmmmyyyy',false,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>

		  <tr><TH align="left"><font size="2" color="white">End&nbsp;Date</b></td><td><input name="t3" type="text" id="demo1" maxlength="25" size="20" class="c2" ><a href="javascript:NewCal('demo1','ddmmmyyyy',false,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td>
		  </td></tr>
		
		
		<TR><TH align="left"><font size="2" color="white">Location&nbsp;Name </font>
		<TD><Input type='text' name="t4"  size="40">
		</TR>

		<TR><TH align="left"><font size="2" color="white">Total&nbsp;Cost</font>
		<TD><Input type='text' name="t5"  size="20">
		</TR>

		<TR><TH align="left"><font size="2" color="white">Address</font>
		<TD><Input type='text' name="t7"  size="50">
		</TR>

		
		  <TR>
				 <TD></TD>
			<TD>	
		  <input type="submit" value="Submit">
		  </TD></TR>

		 		 
		  </TABLE>
		
</form>
</div>

</body>
</html>
