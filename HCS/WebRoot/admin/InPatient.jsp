
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Patientstatus"%>
<%@page import="beans.Patient"%>
<%@page import="beans.Doctors"%>
<%@page import="beans.Rooms"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
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
  <h1>Add InPatient Details</h1>
<form action="./InPatientController.jsp" method="post">
<table width="200" border="1">
<tr>
    <td>Patient</td>
    <td>
    <select name="pid">
<%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
 Session s=sf.openSession();
 Query q=s.createQuery("From Patientstatus where condition=:con1 or condition=:con2 ");
 q.setParameter("con1","Emergency");
 q.setParameter("con2","Serious");
 Iterator it=q.iterate();
 Doctors doc=null;
 while(it.hasNext()){
 Patientstatus ps=(Patientstatus)it.next();
Patient pa= ps.getPatient();
doc=ps.getDoctors();
 %>
 <option value="<%= pa.getPid() %>"><%= pa.getPname() %></option>
 <%} %>
  </select>
  <input type="hidden" name="did" value="<%= doc.getDocid() %>">
  </td>
  </tr>

  <tr>
    <td>Room</td>
    <td>
    <select name="room">
    <%
    Query q1=s.createQuery("From Rooms");
   Iterator it1= q1.iterate();
while(it1.hasNext()){
Rooms room=(Rooms)it1.next();

     %>
    <option value="<%= room.getRid() %>"><%= room.getRoomname() %></option>
    <%} %>
    </select>
    </td>
  </tr>
  <tr>
    <td>Date</td>
    <td><input type="text" name="date" id="date" /><font color="red">[YYYY-MM-DD]</font></td>
  </tr>
  <tr>
    <td align="center" colspan="2"><input name="" type="submit" value="AddInPatient"></td>

  </tr>
</table>

</form>
  </div>
<div><img src="../images/b1.gif" alt=""></div>
<div id="footer"><a href="#">Home Page</a>  |  <a href="#">About Us</a>  |  <a href="#">Our Clients</a>  |  <a href="#">Testimonials</a>  |  <a href="#">Price List</a>  |  <a href="#">Contact Details
  </a>
  <div class="bottom_addr">Aakanksh Yalamarthy. All Rights Reserved<br>
</div><div style=" margin-bottom:15px;"><img src="../images/b2.gif" alt=""></div>
</div>

</body>
</html>
