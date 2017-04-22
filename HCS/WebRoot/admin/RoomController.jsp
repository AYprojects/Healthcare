
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%>
<%@page import="beans.Diseases"%>
<%@page import="beans.Rooms"%><%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Rooms dis=new Rooms();
dis.setRoomname(request.getParameter("room"));

s.save(dis);
s.beginTransaction().commit();
response.sendRedirect("index.jsp");
%>