package listener;

import java.sql.Driver;
import java.sql.DriverManager;
import java.util.Enumeration;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import service.GeneralService;

public class SystemListener implements ServletContextListener{

	
	
	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		
		System.out.println("Initing ...");		
		String absolutePath = getClass().getProtectionDomain().getCodeSource().getLocation().getPath();
	}
        
	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {	
		GeneralService sv = new GeneralService();
		
		Enumeration<Driver> drivers = DriverManager.getDrivers();
		while (drivers.hasMoreElements()) {
			Driver driver = (Driver) drivers.nextElement();
			try{
				System.out.println("Deregisting JDBC driver " + driver);
				DriverManager.deregisterDriver(driver);				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println("Destroying ....");		
	}
}
