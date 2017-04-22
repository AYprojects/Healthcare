<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Diseases"%>
<%@page import="beans.Patient"%>
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
  <h1>Pre Appointment</h1>
      <form action="./PatientAppointment.jsp" method="post">
      <table width="200" border="1" align="center">
  <tr>
    <td>PatientName</td>
    <td><select name="pid">

    <%
            SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
            Session s=sf.openSession();
             Query q=s.createQuery("from Patient");
             List list=q.list();
             Iterator it=list.iterator();
             while(it.hasNext()){
             Patient reg=(Patient)it.next();

             %>
             <option value="<%= reg.getPid() %>"><%= reg.getPname() %></option>
             <%} %>
    </select></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input name="" type="submit" value="Appointment"></td>

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
