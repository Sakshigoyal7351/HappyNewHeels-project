package coms.HappyNewHeels.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import coms.HappyNewHeels.model.PurchaseItem;
import coms.HappyNewHeels.model.PurchaseOrder;
import coms.HappyNewHeels.model.User;
import coms.HappyNewHeels.repository.PurchaseItemRepository;


@Service(value = "purchaseItemService")
public class PurchaseItemServiceImpl implements PurchaseItemService {
	
	@Autowired
	PurchaseItemRepository purchaseItemRepository;
	

	@Override
	public PurchaseItem getPurchaseItemById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PurchaseItem> getAllItemsByPurchaseOrder(PurchaseOrder order) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PurchaseItem> getAllPurchaseItemByUserId(User userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PurchaseItem savePurchaseItem(PurchaseItem purchaseItem) {
		
		purchaseItemRepository.save(purchaseItem);
		return purchaseItem;
	}

	@Override
	public List<PurchaseItem> getAllPurchaseItemList() {
		return purchaseItemRepository.findAll(Sort.by(Sort.Direction.ASC, "purchaseOrder_ID"));
		
		
	}

}
