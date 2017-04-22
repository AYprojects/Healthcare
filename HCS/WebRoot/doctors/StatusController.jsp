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

<% SessionFactory sf=(SessionFactory)getServletContext().getAttribute("sf");
Session s=sf.openSession();
long pid=Long.parseLong(request.getParameter("pid"));
Patient pa=(Patient)s.get(Patient.class,new Long(pid));
Query q=s.createQuery("From Patientdoctor where patient=:pa ");
q.setParameter("pa",pa);
Iterator it=q.iterate();
Patientdoctor pdoc=null;
if(it.hasNext()){
pdoc=(Patientdoctor)it.next();
}
Doctors doc=pdoc.getDoctors();
String condition=request.getParameter("condition");
String status=request.getParameter("status");
Patientstatus pst=new Patientstatus();
pst.setCondition(condition);
pst.setDoctors(doc);
pst.setPatient(pa);
pst.setStatus(status);
s.save(pst);
s.beginTransaction().commit();
if(condition.equalsIgnoreCase("Normal") || condition.equalsIgnoreCase("Suffering")){
Inpatient ipa=new Inpatient();
ipa.setDoctors(doc);
ipa.setPatient(pa);
SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date date = formatter.parse(request.getParameter("date"));
ipa.setJdate(date);
ipa.setPatientstatus(pst);
s.save(ipa);
Outpatient op=new Outpatient();
op.setDescr(request.getParameter("desc"));
op.setDoctors(doc);
op.setOdate(date);
op.setPatient(pa);
s.save(op);
s.beginTransaction().commit();
response.sendRedirect("index.jsp");
}
else{
response.sendRedirect("index.jsp");
}
%>