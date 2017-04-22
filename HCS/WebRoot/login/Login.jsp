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
    <li><a href="../index.html">Home</a></li>

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
  <h1> Login</h1>
  <form action="./LoginController.jsp" method="post">
      <table width="400" height="200"  align="center">
  <tr>
    <th>UserName</th>
    <td align="center"><input name="username" type="text"></td>
  </tr>
  <tr>
    <th>PassWord</th>
    <td align="center"><input name="password" type="text"></td>
  </tr>
  <tr>
    <th>Role</th>
    <td align="center"><input type="text" name="role" value="<%= request.getParameter("role")%>"></td>
  </tr>
  <tr>
    <td align="center" colspan="2"><input name="" type="submit" value="Login"></td>
      </tr>
</table>
</form>
  </div>
<div><img src="../images/b1.gif" alt=""></div>
<div id="footer"><a href="#">Home Page</a>  |  <a href="#">About Us</a>  |  <a href="#">Our Clients</a>  |  <a href="#">Testimonials</a>  |  <a href="#">Price List</a>  |  <a href="#">Contact Details
  </a>
  <div class="bottom_addr">Aakanksh Yalamarthy.All Rights Reserved<br>
</div><div style=" margin-bottom:15px;"><img src="../images/b2.gif" alt=""></div>
</div>

</body>
</html>
