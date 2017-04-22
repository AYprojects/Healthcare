
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%><%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Users user=new Users();
user.setPassword(request.getParameter("password"));
user.setUsername(request.getParameter("username"));
user.setRole(request.getParameter("role"));
s.save(user);
s.beginTransaction().commit();
response.sendRedirect("index.html");
%>
