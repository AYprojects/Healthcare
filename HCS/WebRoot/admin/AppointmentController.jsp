<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%>
<%@page import="beans.Diseases"%>
<%@page import="beans.Patientdoctor"%>
<%@page import="beans.Patient"%>
<%@page import="beans.Doctors"%>

<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%><%
SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
Patientdoctor pd=new Patientdoctor();
String time=request.getParameter("time");
//long date=Long.parseLong(request.getParameter("date"));

SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date date = formatter.parse(request.getParameter("date"));
            long pid=Long.parseLong(request.getParameter("pid"));
Patient pa=(Patient)s.get(Patient.class,new Long(pid)); 
long did=Long.parseLong(request.getParameter("docid"));
Doctors doc=(Doctors)s.get(Doctors.class,new Long(did));

pd.setCdate(date);
pd.setCtime(time);
pd.setDoctors(doc);
pd.setPatient(pa);
s.save(pd);
s.beginTransaction().commit();
response.sendRedirect("index.jsp");
%>