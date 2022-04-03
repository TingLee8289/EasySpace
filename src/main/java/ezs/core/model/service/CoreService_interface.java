package ezs.core.model.service;

import org.hibernate.Transaction;

import util.HibernateUtil;

public interface CoreService_interface {
	default Transaction beginTransaction() {
		return HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();
	}

	default void commit() {
		HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().commit();
	}

	default void rollback() {
		HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().rollback();
	}
}
