package ezs.sec_items.model.dao;

import java.util.List;

import ezs.core.model.dao.CoreDAO_interface;
import ezs.sec_items.model.entity.SecItemsVO;

public interface SecItemsDAO_interface extends CoreDAO_interface{
	public Integer insert(SecItemsVO secItemsVO);

	public void update(SecItemsVO secItemsVO);

	public void delete(Integer shID);

	public SecItemsVO getBySellerIDandshID(Integer shSellerID, Integer shID);

	public SecItemsVO getOneSecItemsByShID(Integer shID);

	public List<SecItemsVO> findByShCategory(Integer shSellerID, Integer shCateID);

	public List<SecItemsVO> getByCateID(Integer shCateID);

	public List<SecItemsVO> getAll();

	public List<SecItemsVO> getBySellerID(Integer shSellerID);

	public List<SecItemsVO> getBySellerIDandStatus(Integer shSellerID, Integer shStatus);
}
