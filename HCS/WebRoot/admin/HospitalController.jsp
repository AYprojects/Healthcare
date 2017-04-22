<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%>
<%@page import="beans.Diseases"%>
<%@page import="beans.Hospital"%><%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Hospital dis=new Hospital();
dis.setAddress(request.getParameter("address"));
dis.setDiseas(request.getParameter("dis"));
dis.setHname(request.getParameter("hos"));
s.save(dis);
s.beginTransaction().commit();
response.sendRedirect("index.jsp");
%>