
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%>
<%@page import="beans.Diseases"%>
<%@page import="beans.Doctors"%>
<%@page import="beans.Patient"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Iterator"%><%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Patient doc=new Patient();
long did=Long.parseLong(request.getParameter("did"));
Diseases dis=(Diseases)s.get(Diseases.class,new Long(did));
String pname=request.getParameter("pname");
String sex=request.getParameter("sex");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String username=(String)session.getAttribute("username");
System.out.println(username);
Query q=s.createQuery("From Users where username=:username ");
q.setParameter("username",username);
Iterator it=q.iterate();
Users user=null;
if(it.hasNext()){
user=(Users)it.next();
System.out.println(user);
}
Query q1=s.createQuery("From Patient where users=:users ");
q1.setParameter("users",user);
int size=q1.list().size();
if(size>0){
response.sendRedirect("RegisterFailed.html");
}
else{
doc.setAddress(address);
doc.setDiseases(dis);
doc.setMobile(mobile);
doc.setUsers(user);
doc.setGender(sex);
doc.setPname(pname);

s.save(doc);
s.beginTransaction().commit();
response.sendRedirect("index.jsp");
}
%>