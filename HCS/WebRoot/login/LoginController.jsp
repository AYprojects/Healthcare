
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%>
<%@page import="org.hibernate.Query"%><%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Users user=new Users();
String password=request.getParameter("password");
System.out.println(password);
String username=request.getParameter("username");
System.out.println(username);
String role=request.getParameter("role");
System.out.println(role);
Query q=s.createQuery("From Users where username=:username and password=:password and role=:role");
q.setParameter("username",username);
session.setAttribute("username",username);
q.setParameter("password",password);
q.setParameter("role",role);
int size=q.list().size();
System.out.println(size);
if(size==0){
response.sendRedirect("LoginFailed.html");
}
else if(size>=0 && role.equalsIgnoreCase("Admin")){
response.sendRedirect("../admin/index.jsp");
}
else if(size>=0 && role.equalsIgnoreCase("Patient")){
response.sendRedirect("../patient/index.jsp");
}
else if(size>=0 && role.equalsIgnoreCase("Doctor")){
response.sendRedirect("../doctors/index.jsp");
}
%>