package listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import beans.Users;


public class SFListenet implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

	}

	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		ServletContext scxt=sce.getServletContext();
		SessionFactory sf=new Configuration().configure().buildSessionFactory();  
		System.out.println(sf);
		scxt.setAttribute("sf",sf );
		Session s=sf.openSession();
		Query q=s.createQuery("From Users");
		int size=q.list().size();
if(size==0){
	Users user=new Users();
	user.setPassword("Admin");
	user.setUsername("Admin");
	user.setRole("Admin");
	s.save(user);
	s.beginTransaction().commit();
}
else {
	System.out.println("Already User In Available");
}
	}

}
