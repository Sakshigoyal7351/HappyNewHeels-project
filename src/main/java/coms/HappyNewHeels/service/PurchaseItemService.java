package coms.HappyNewHeels.service;

import java.util.List;

import coms.HappyNewHeels.model.PurchaseItem;
import coms.HappyNewHeels.model.PurchaseOrder;
import coms.HappyNewHeels.model.User;



public interface PurchaseItemService {

	public PurchaseItem getPurchaseItemById(Long id);

	public List<PurchaseItem> getAllItemsByPurchaseOrder(PurchaseOrder order);

	public List<PurchaseItem> getAllPurchaseItemByUserId(User userId);

	public PurchaseItem savePurchaseItem(PurchaseItem purchaseItem);

	public List<PurchaseItem> getAllPurchaseItemList();

}
