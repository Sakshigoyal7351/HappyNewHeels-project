package coms.HappyNewHeels.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coms.HappyNewHeels.model.PurchaseOrder;
import coms.HappyNewHeels.repository.PurchaseOrderRepository;



@Service(value = "purchaseOrderService")
public class PurchaseOrderServiceImpl implements PurchaseOrderService {

	@Autowired
	PurchaseOrderRepository purchaseOrderRepository;
	@Override
	public PurchaseOrder getPurchaseById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PurchaseOrder> getAllPurchaseOrders() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PurchaseOrder> getAllPurchaseOrderByUserId(Long userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PurchaseOrder savePurchaseOrder(PurchaseOrder purchaseOrder) {
		 purchaseOrderRepository.save(purchaseOrder);
		return purchaseOrder;
	}

}
