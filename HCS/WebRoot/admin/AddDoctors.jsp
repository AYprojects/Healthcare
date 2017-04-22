<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Diseases"%>
<!DOCTYPE HTML >
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
    <li><a href="#">Hosipitals</a></li>
    <li><a href="#">Doctors</a></li>
    <li><a href="#">Laboratories</a></li>
    <li><a href="#">PatientRegistration</a></li>
    <li><a href="#">Login</a></li>
    <li><a href="#">ContactDetails</a></li>
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
  <h1>Welcome to Our website !</h1>
      <form action="./DoctorController.jsp" method="post">

      <table width="400" height="200" align="center" border="1">
  <tr>
    <td>Diseases</td>
    <td><select name="did">

    <%
            SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
            Session s=sf.openSession();
             Query q=s.createQuery("from Diseases");
             List list=q.list();
             Iterator it=list.iterator();
             while(it.hasNext()){
             Diseases reg=(Diseases)it.next();

             %>
             <option value="<%= reg.getDid() %>"><%= reg.getDname() %></option>
             <%} %>
    </select></td>
  </tr>
  <tr>
    <td>DoctorName</td>
    <td><input name="dname" type="text" required></td>
  </tr>
  <tr>
    <td>Password</td>
    <td><input name="password" type="password" required></td>
  </tr>
  <tr>
    <td>Mobile</td>
    <td><input name="mobile" type="text" required></td>
  </tr>
  <tr>
    <td>Address</td>
    <td><textarea name="address" cols="15" rows="3" required></textarea></td>
  </tr>
  <tr>
    <td align="center" colspan="2"> <input name=""  type="submit" value="AddDoctor"></td>
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
