
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Users"%>
<%@page import="java.util.Set"%>
<%@page import="beans.Patient"%>
<%@page import="beans.Patientdoctor"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
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
    <li><a href="PreHospitals.jsp">Hosipitals</a></li>
    <li><a href="Register.jsp">RegisterPatient</a></li>
    <li><a href="ApointmentStatus.jsp">AppointmentStatus</a></li>
    <li><a href="#">ViewStatus</a></li>

  </ul>
  </div><div id="logo"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="80"><img src="../images/logo.gif" alt="" width="80" height="76"></td>
    <td>Health Care System</td>
  </tr>
</table>
</div><div id="h_block">
  <p>&nbsp;</p>

</div>
</div><div class="body_txt">
  <h1>Your Appointment Status</h1>
 <table width="400" height="100" align="center">
  <tr align="center">
    <td>AppointmentNo</td>
    <td>DoctorName</td>
    <td>Time</td>
    <td>Date</td>
  </tr>
  <%
  SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
  Session s=sf.openSession();
  Query q1= s.createQuery("From Patientdoctor where patient=:user ");
  String username=(String)session.getAttribute("username");
System.out.println(username);
Query q=s.createQuery("From Users where username=:username ");
q.setParameter("username",username);
Iterator it=q.iterate();
Users user=null;
if(it.hasNext()){
user=(Users)it.next();
System.out.println(user);
}
Set set=user.getPatients();
Iterator it1=set.iterator();
 Patient pa=null;
 if(it1.hasNext()){
pa=(Patient)it1.next();
System.out.println(pa);
}
  q1.setParameter("user",pa);
  Iterator it2=q1.iterate();
     while(it2.hasNext()){
    Patientdoctor pod=(Patientdoctor)it2.next();
     %>
  <tr align="center">
    <td><%= pod.getPdid() %></td>
    <td><%= pod.getDoctors().getUsername() %></td>
    <td><%= pod.getCtime() %></td>
    <td><%= pod.getCdate() %></td>
  </tr>
<%} %>
</table>

   </div>
<div><img src="../images/b1.gif" alt=""></div>
<div id="footer"><a href="#">Home Page</a>  |  <a href="#">About Us</a>  |  <a href="#">Our Clients</a>  |  <a href="#">Testimonials</a>  |  <a href="#">Price List</a>  |  <a href="#">Contact Details
  </a>
  <div class="bottom_addr">Aakanksh Yalamarthy. All Rights Reserved<br>
</div><div style=" margin-bottom:15px;"><img src="../images/b2.gif" alt=""></div>
</div>

</body>
</html>
