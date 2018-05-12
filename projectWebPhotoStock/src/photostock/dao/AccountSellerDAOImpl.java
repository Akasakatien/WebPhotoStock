package photostock.dao;

import java.util.*;

import org.hibernate.*;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import photostock.entities.*;

@Repository("accountSellerDAO")
public class AccountSellerDAOImpl implements AccountSellerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void create(Seller seller) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(seller);
		transaction.commit();
		session.close();
	}

	@Override
	public void update(Seller seller) {
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			session.update(seller);
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
		} finally {
			session.flush();
			session.close();
		}
	}

	@Override
	public Seller login(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		return (Seller) session.createQuery("from Seller where "
				+ "username = :username and "
				+ "password = :password")
				.setString("username", username)
				.setString("password", password)
				.uniqueResult();
	}
	
	@Override
	public Seller find(int id) {
		Seller t = null;
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			t = (Seller) session.get(Seller.class, id);
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			t = null;
		} finally {
			session.flush();
			session.close();
		}
		return t;
	}

	@Override
	public long countSeller() {
		long t = 0;
		Transaction transaction = null;
		Session session = null;
		try {
			session = sessionFactory.openSession();
			transaction = session.beginTransaction();
			Query query = session.createQuery("SELECT count(*) FROM Seller");
			t = (Long) query.uniqueResult();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			t = 0;
		} finally {
			session.flush();
			session.close();
		}
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Seller> findAll() {
		List<Seller> list = new ArrayList<Seller>();
		Transaction transaction = null;
		Session session = sessionFactory.openSession();
		try {
			transaction = session.beginTransaction();
			list = session.createCriteria(Seller.class).list();
			transaction.commit();
		} catch (RuntimeException e) {
			if (transaction != null) {
				transaction.rollback();
			}
			list = null;
		} finally {
			session.flush();
			session.close();
		}
		return list;
	}


}
