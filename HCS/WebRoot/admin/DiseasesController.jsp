<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%>
<%@page import="beans.Diseases"%><%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Diseases dis=new Diseases();
dis.setDescr(request.getParameter("descr"));
dis.setDname(request.getParameter("dis"));
s.save(dis);
s.beginTransaction().commit();
response.sendRedirect("index.jsp");
%>