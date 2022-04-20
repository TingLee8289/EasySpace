import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import ezs.sec_items.model.dao.SecItemsDAO_interface;
import ezs.sec_items.model.entity.SecItemsVO;
import util.HibernateUtil;

public class TestApp {

	public static void main(String[] args) {
		
//		Session session = HibernateUtil.getSessionFactory().openSession();
//		SecItemsVO secItemsVO = session.get(SecItemsVO.class, 1);
//		System.out.println(secItemsVO.getShName());
//		HibernateUtil.shutdown();
		
//		測試FileSystemXmlApplicationContext
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		SecItemsDAO_interface secItemsDAO_interface = context.getBean(SecItemsDAO_interface.class);
		SecItemsVO secItemsVO = secItemsDAO_interface.getOneSecItemsByShID(1);
		System.out.println(secItemsVO.getShName());
		((ConfigurableApplicationContext) context).close();
		 
	}

}
