
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Diseases"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html>
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
  <p>A health service manager is responsible for the provision and commissioning of local healthcare through the management of hospital, general practitioner (GP) or community health services. Managers liaise with clinical and non-clinical staff and other partner organisations, whilst considering the demands of political policy and local circumstances.</p>

</div>
</div><div class="body_txt">
  <h1>Add Diseases</h1>
      <form action="./DiseasesController.jsp" method="post">

      <table width="400" height="200" align="center" border="1">
  <tr>
    <td>ExistingDiseases</td>
    <td><select >

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
    <td>NewDisease</td>
    <td><input name="dis" type="text"></td>
  </tr>
  <tr>
    <td>Description</td>
    <td><textarea name="descr" cols="15" rows="3">&nbsp;</textarea></td>
  </tr>
  <tr>
    <td align="center" colspan="2"> <input name=""  type="submit" value="AddDisease"></td>
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
