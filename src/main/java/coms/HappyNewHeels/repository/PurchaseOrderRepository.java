package coms.HappyNewHeels.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import coms.HappyNewHeels.model.PurchaseOrder;



public interface PurchaseOrderRepository extends JpaRepository<PurchaseOrder, Long> {
	
	

}
