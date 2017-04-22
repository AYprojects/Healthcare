
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%>
<%@page import="beans.Diseases"%>
<%@page import="beans.Doctors"%><%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Doctors doc=new Doctors();
long did=Long.parseLong(request.getParameter("did"));
Diseases dis=(Diseases)s.get(Diseases.class,new Long(did));
String username=request.getParameter("dname");
String password=request.getParameter("password");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
doc.setAddress(address);
doc.setDiseases(dis);
doc.setMobile(mobile);
doc.setUsername(username);
doc.setPassword(password);
s.save(doc);
Users user=new Users();
user.setPassword(password);
user.setUsername(username);
user.setRole("Doctor");
s.save(user);
s.beginTransaction().commit();
response.sendRedirect("index.jsp");
%>