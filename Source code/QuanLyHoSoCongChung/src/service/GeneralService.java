package service;

import org.apache.commons.lang.Validate;
import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateUtil;




public class GeneralService {
	
	public final Integer createObject(Object obj) {
		Session session = HibernateUtil.getSession();
		Transaction tx = null;
		Integer result = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			result = (Integer) session.save(obj);
			tx.commit();
		}catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}		
		session.close();
		return result;
	}
	
	public final String createObjectString(Object obj) {
		Session session = HibernateUtil.getSession();
		Transaction tx = null;
		String result = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			result = (String) session.save(obj);
			tx.commit();
		}catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}		
		session.close();
		return result;
	}
	
	public final Integer createObject(Object obj, Session session) {		
		Transaction tx = null;
		Integer result = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			result = (Integer) session.save(obj);
			tx.commit();
		}catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}				
		return result;
	}
	
	public final void updateObject( Object obj) {
		Session session = HibernateUtil.getSession();		
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.update(obj);
			tx.commit();
		}catch (Exception e) {			
			e.printStackTrace();
			tx.rollback();
		}		
		session.close();
	}
	
	public final void updateObject( Object obj, Session session) {		
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.update(obj);
			tx.commit();
		}catch (Exception e) {			
			e.printStackTrace();
			tx.rollback();
		}				
	}
	
	public final void saveObject( Object obj) {
		Session session = HibernateUtil.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.save(obj);
			tx.commit();
		}catch (Exception e) {			
			e.printStackTrace();
			tx.rollback();
		}		
		session.close();
	}
	
	public final void saveObject( Object obj, Session session) {		
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.save(obj);
			tx.commit();
		}catch (Exception e) {			
			e.printStackTrace();
			tx.rollback();
		}				
	}
	
	public final void deleteObject( Object obj, Session session) {
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.delete(obj);
			tx.commit();
		}catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}		
	}
	
	public final void deleteObject( Object obj) throws Exception{
		Session session = HibernateUtil.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.delete(obj);
			tx.commit();
		}catch (Exception e) {
			e.printStackTrace();			
			tx.rollback();
			session.close();	
			throw e;
		}		
		session.close();		
	}
	
	public void saveOrUpdate(Object obj) {
		Session session = HibernateUtil.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.saveOrUpdate(obj);
			tx.commit();
		}catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}		
		session.close();
	}
	
	public void saveOrUpdate(Object obj, Session session) {		
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.saveOrUpdate(obj);
			tx.commit();
		}catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}				
	}
	
	public void mergeObject(Object obj) {
		Session session = HibernateUtil.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Validate.notNull(session);
			Validate.notNull(obj);
			session.merge(obj);
			tx.commit();
		}catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
		}		
		session.close();
	}
}
