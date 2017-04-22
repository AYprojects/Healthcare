
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Hospital"%>
<%@page import="beans.Diseases"%>
<%@page import="beans.Doctors"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
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
<fieldset >
<legend><h3>Hospitals</h3></legend>
 <table align="center" width="600" >
 <tr align="center"><th>DoctorName</th><th>SpecialistFor</th><th>Mobile</th><th>Address</th></tr>
 <%SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Query q=s.createQuery("from Doctors");
Iterator it=q.iterate();
 while(it.hasNext()){
 Doctors h=(Doctors)it.next();

 %>
 <tr align="center"><th><%= h.getUsername() %></th><th><%= h.getDiseases().getDname() %></th><th><%= h.getMobile() %></th><th><%= h.getAddress() %></th></tr>
 <%} %></table>
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
