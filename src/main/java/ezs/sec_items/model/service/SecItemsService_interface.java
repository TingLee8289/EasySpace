package ezs.sec_items.model.service;

import java.math.BigDecimal;
import java.util.List;

import ezs.sec_items.model.entity.SecItemsVO;
import ezs.sec_pics.model.SecPicsVO;

public interface SecItemsService_interface {

	public SecItemsVO addSecItems(SecItemsVO secItemsVO, SecPicsVO secPicsVO);

	public SecItemsVO addSecItems(Integer shCateID, Integer shSellerID, String shName, BigDecimal shPrice,
			Integer shQTY, String shSize, String shDescription, String shCondition, String shTime, String shGuarantee,
			Integer shStatus, String shCounty, String shDist);

	public SecItemsVO updateSecItems(SecItemsVO secItemsVO, SecPicsVO secPicsVO);

	public SecItemsVO updateSecItems(Integer shID, Integer shCateID, Integer shSellerID, String shName,
			BigDecimal shPrice, Integer shQTY, String shSize, String shDescription, String shCondition, String shTime,
			String shGuarantee, Integer shStatus, String shCounty, String shDist);

	public void deleteSecItems(Integer shID);

	public SecItemsVO getOneSecItems(Integer shSellerID, Integer shID);

	public List<SecItemsVO> getAll();

	public List<SecItemsVO> getAll2(Integer shSellerID);

	public List<SecItemsVO> getByCategory(Integer shSellerID, Integer shCateID);

	public List<SecItemsVO> getByCategory2(Integer shCateID);

	public List<SecItemsVO> getByStatus(Integer shSellerID, Integer shStatus);

	public SecItemsVO getOneSecItemsByShID(Integer shID);
}
