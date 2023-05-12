<html>
<head>
<title>Event Management System</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
 <script LANGUAGE="Javascript" >
function validate(){
	var x=document.forms["f1"]["t1"].value;
	var y=document.forms["f1"]["t2"].value;
	if(x == null || x==""){
		window.alert("Username must be enter");
		document.f1.t1.focus();
		return false;
	}
	if(y == null || y==""){
		window.alert("Password must be enter");
		document.f1.t2.focus();
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
      <li><a href="index.jsp">Home</a></li>
      <li><a href="Admin.jsp">Event Manager Admin</a></li>
	  <li><a href="ViewAnnounceEvents.jsp">View Announce Events</a></li>
      <li><a href="Contact.jsp">Contact Us</a></li>
      <li><a href="About.jsp">About us</a></li>
     
   </ul>
  </div>
  <div class="entry">
   <br/><br/><br/>
 <%
	 String data=request.getParameter("t1");
	 if(data!=null){
		 out.println("<center><font size=2 color=white>"+data+"</font></center>");
	 }
	 %>
	 <br>
	  <center><font size="3" color="white">Admin Login Screen</font></center>
	<form name="f1" method="post" action="Admin" OnSubmit="return validate()"><br><br>
	<TABLE align=center width="30%" class="notepad">
		<TR><TH align="left"><font size="2" color="white">Username</font>
		<TD>&nbsp;<Input type=text name="t1" value='' onchange='fnCallChkAvailability(this)'>
		<div id='nameid'></div>
		</TD>
		</TR>
		
		<TR><TH align="left"><font size="2" color="white">Password</font>
		<TD>&nbsp;<Input type='password' name="t2"  value=''>
		</TR>
		  <TR>
				 <TD></TD>
			<TD>	
		  <input type="submit" value="Login">
		 
		  </TABLE>
		
</form>
</div>

</body>
</html>
