<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="beans.Users"%>
<%@page import="beans.Diseases"%>
<%@page import="beans.Patientdoctor"%>
<%@page import="beans.Patient"%>
<%@page import="beans.Doctors"%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.Patientstatus"%>
<%@page import="beans.Inpatient"%>
<%@page import="java.util.Date"%>
<%@page import="beans.Outpatient"%>
<%@page import="beans.Rooms"%>

<% SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
long pid=Long.parseLong(request.getParameter("pid"));
Patient pa=(Patient)s.get(Patient.class,new Long(pid));
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date date = formatter.parse(request.getParameter("date"));
long did=Long.parseLong(request.getParameter("did"));
Doctors doc=(Doctors)s.get(Doctors.class,new Long(did));
long rid=Long.parseLong(request.getParameter("room"));
Rooms room=(Rooms)s.get(Rooms.class,new Long(rid));
Inpatient in=new Inpatient();
in.setDoctors(doc);
in.setJdate(date);
in.setPatient(pa);
in.setRooms(room);
s.save(in);
s.beginTransaction().commit();
response.sendRedirect("index.jsp");
%>