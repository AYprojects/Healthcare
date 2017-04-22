
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Patientstatus"%>
<%@page import="beans.Patient"%>
<%@page import="beans.Doctors"%>
<%@page import="beans.Rooms"%>
<%@page import="beans.Inpatient"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Health care website</title>
<meta name="description" content="Health care website">
<meta name="keywords" content="health, care, healthcare">
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="conteiner"><div id="header"><div class="menu">
  <ul>
    <li><a href="index.jsp">Home</a></li>

    <li><a href="../Logout.jsp">Logout</a></li>

  </ul>
  </div><div id="logo"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="80"><img src="../images/logo.gif" alt="" width="80" height="76"></td>
    <td>Health Care System</td>
  </tr>
</table>
</div><div id="h_block">

</div>
</div><div class="body_txt">
  <h1>All InPatient Details</h1>
<fieldset>
<legend>AllInPatients</legend>
<table width="600" border="1" align="center">
<tr align="center">
<th>PatientName</th><th>Disease</th><th>Room</th><th>Date</th><th>Status</th><th>PatientAddress</th>
</tr>
<%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
 Session s=sf.openSession();
 Query q=s.createQuery("From Inpatient");

 Iterator it=q.iterate();

 while(it.hasNext()){
 Inpatient ps=(Inpatient)it.next();
Patient pa= ps.getPatient();
System.out.println(pa);
Doctors doc=ps.getDoctors();
System.out.println(doc);
Rooms room=ps.getRooms();
String roos=null;
if(room==null){
roos="Patient Not Admitted";

}
else{
roos=room.getRoomname();
}
System.out.println(room);
Patientstatus pst=ps.getPatientstatus();
String status=null;
 if(pst==null){
status="Not Yet Decided Patient Condition";

}
else{
status=pst.getStatus();
}
 System.out.println(pst);
 %>
 <tr align="center">
 <th><%= pa.getPname()%></th><th><%= doc.getDiseases().getDname()%></th><th><%= roos%></th><th><%= ps.getJdate()%></th><th><%= status%></th><th><%= pa.getAddress()%></th>
 </tr>
 <%} %>

</table>

</fieldset>
  </div>
<div><img src="../images/b1.gif" alt=""></div>
<div id="footer"><a href="#">Home Page</a>  |  <a href="#">About Us</a>  |  <a href="#">Our Clients</a>  |  <a href="#">Testimonials</a>  |  <a href="#">Price List</a>  |  <a href="#">Contact Details
  </a>
  <div class="bottom_addr">Aakanksh Yalamarthy. All Rights Reserved<br>
</div><div style=" margin-bottom:15px;"><img src="../images/b2.gif" alt=""></div>
</div>

</body>
</html>
