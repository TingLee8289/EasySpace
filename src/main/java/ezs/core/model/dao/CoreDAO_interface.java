package ezs.core.model.dao;

import org.hibernate.Session;

import util.HibernateUtil;

public interface CoreDAO_interface {

	default Session getSession() {
		return HibernateUtil.getSessionFactory().getCurrentSession();
	}
}
