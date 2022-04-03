import org.hibernate.Session;

import ezs.sec_items.model.entity.SecItemsVO;
import util.HibernateUtil;

public class TestApp {

	public static void main(String[] args) {
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		SecItemsVO secItemsVO = session.get(SecItemsVO.class, 1);
		System.out.println(secItemsVO.getShName());
		HibernateUtil.shutdown();
		 
	}

}
