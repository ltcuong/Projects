package util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	public static final ThreadLocal<Session> MAP = new ThreadLocal<Session>();
	private static SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	//private static Session session;
 
	public static Session getSession() 
	{
		/*try{
			if(session == null || !session.isOpen())
				session = sessionFactory.openSession();			
			return session;
		}catch(Exception e){
			session = sessionFactory.openSession();
			return session;
		}*/
		Session s = (Session)MAP.get();	       
        if (s == null || !s.isOpen()) {
            s = sessionFactory.openSession();
            MAP.set(s);
        }
        return s;
	}
	public static void closeSession(){
	/*	try{
			if(session != null ){
				session.close();
			}		
		}catch(Exception e){
			
		}*/
		Session s = (Session)MAP.get();
        MAP.set(null);
        if (s != null) {
        	if(s.isOpen()){
        		s.close();
        	}            
        }
	}
}
