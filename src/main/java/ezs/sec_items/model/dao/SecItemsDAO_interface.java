package ezs.sec_items.model.dao;

import java.util.List;

import ezs.core.model.dao.CoreDAO_interface;
import ezs.sec_items.model.entity.SecItemsVO;

public interface SecItemsDAO_interface extends CoreDAO_interface{
	public Integer insert(SecItemsVO secItemsVO);

	public void update(SecItemsVO secItemsVO);

	public void delete(Integer shID);

	public SecItemsVO findByPrimaryKey(Integer shSellerID, Integer shID);

	public SecItemsVO getOneSecItemsByShID(Integer shID);

	public List<SecItemsVO> findByShCategory(Integer shSellerID, Integer shCateID);

	public List<SecItemsVO> findByShCategory2(Integer shCateID);

	public List<SecItemsVO> getAll();

	public List<SecItemsVO> getAll2(Integer shSellerID);

	public List<SecItemsVO> findByStatus(Integer shSellerID, Integer shStatus);
}
