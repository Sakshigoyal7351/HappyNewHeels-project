package coms.HappyNewHeels.controller;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import coms.HappyNewHeels.model.CartItem;
import coms.HappyNewHeels.model.Product;
import coms.HappyNewHeels.model.PurchaseItem;
import coms.HappyNewHeels.model.PurchaseOrder;
import coms.HappyNewHeels.model.User;
import coms.HappyNewHeels.service.ProductService;
import coms.HappyNewHeels.service.PurchaseItemService;
import coms.HappyNewHeels.service.PurchaseOrderService;
import coms.HappyNewHeels.service.UserService;

@Controller
public class CartController {

	@Autowired
	ProductService productService;

	@Autowired
	UserService userService;

	@Autowired
	PurchaseOrderService purchaseOrderService;

	@Autowired
	PurchaseItemService purchaseItemService;

	private int cartCount;

	@SuppressWarnings("unchecked")
	@GetMapping("/addToCart/{productId}")
	public String cartAddItem(@PathVariable Long productId, javax.servlet.http.HttpServletRequest request) {

		HttpSession session = request.getSession();
		// if cart is already in session then retrieve it else create a new cart list
		// and
		// save it to session
		List<CartItem> cartItems = new ArrayList<CartItem>();
		if (session.getAttribute("cart_items") != null)
			cartItems = (List<CartItem>) session.getAttribute("cart_items");

		if (isItemInCart(cartItems, productId)) {
			System.out.println("Item already in cart - quantity increased by 1");
		} else {
			Product product = productService.getProductById(productId);
			CartItem item = new CartItem();
			item.setProductId(productId);
			item.setQuantity(1);
			item.setRate(product.getPrice());
			BigDecimal dprice = item.getRate().multiply(new BigDecimal(item.getQuantity()));
			item.setPrice(dprice);
			item.setName(product.getProductName());
			item.setImage_Url(product.getImage_Url());

			cartItems.add(item);
		}
		BigDecimal totalValue = getCartValue(cartItems);
		session.setAttribute("cartCount", cartCount);
		session.setAttribute("cartValue", totalValue);
		session.setAttribute("cart_items", cartItems);

		return "redirect:/cart";
	}

	@SuppressWarnings("unchecked")
	@GetMapping("/cart/deleteItem")
	public String cartDeleteItem(ModelMap map, javax.servlet.http.HttpServletRequest request,
			@RequestParam(value = "productId", required = true) Long productId) {
		HttpSession session = request.getSession();
		List<CartItem> cartItems = new ArrayList<CartItem>();
		if (session.getAttribute("cart_items") != null)
			cartItems = (List<CartItem>) session.getAttribute("cart_items");

		for (CartItem item : cartItems) {
			if (item.getProductId() == productId) {
				if (item.getQuantity() == 1) {
					cartItems.remove(item);

					BigDecimal totalValue = getCartValue(cartItems);
					session.setAttribute("cartValue", totalValue);
					System.out.println("###Total " + totalValue);
					break;
				} else {
					item.setQuantity(item.getQuantity() - 1);
					BigDecimal totalValue = getCartValue(cartItems);
					session.setAttribute("cartValue", totalValue);
					System.out.println("###Total " + totalValue);
					break;
				}
			}
		}
		session.setAttribute("cart_items", cartItems);
		return "redirect:/cart";
	}

	@SuppressWarnings("unchecked")
	@GetMapping("/cart")
	public String viewCart(ModelMap map, javax.servlet.http.HttpServletRequest request) {

		// check if user is logged in
		HttpSession session = request.getSession();
		String useremailId = (String) session.getAttribute("userEmailId");
		if (Objects.nonNull(useremailId)) {
			session.removeAttribute("errMessage");

		}

		List<CartItem> cartItems = new ArrayList<CartItem>();
		if (session.getAttribute("cart_items") != null)
			cartItems = (List<CartItem>) session.getAttribute("cart_items");

		// get total of all cart items
		BigDecimal totalValue = getCartValue(cartItems);
		System.out.println("###Total " + totalValue);
		map.addAttribute("cartValue", totalValue);
		map.addAttribute("cartItems", cartItems);

		session.setAttribute("cartValue", totalValue);
		session.setAttribute("cartItems", cartItems);

		return "cart";

	}

	@GetMapping("/checkout")
	public String checkout(Model model, javax.servlet.http.HttpServletRequest request) {
		HttpSession session = request.getSession();
		String useremailId = (String) session.getAttribute("userEmailId");
		if (Objects.isNull(useremailId)) {
			session.setAttribute("errMessage", "You need Login before checkout!!");
			return "redirect:/cart";
		}
		BigDecimal cartValue = (BigDecimal) session.getAttribute("cartValue");

		System.out.println(cartValue);
		if (cartValue != null) {
			model.addAttribute("cartTotal", session.getAttribute("cartValue"));
			BigDecimal shipping = (BigDecimal) ((BigDecimal) session.getAttribute("cartValue"))
					.multiply(new BigDecimal(0.10)).setScale(2, RoundingMode.CEILING);
			model.addAttribute("shipping", shipping);
			BigDecimal total = shipping.add(cartValue).setScale(2, RoundingMode.CEILING);
			model.addAttribute("total", total);

		} else {
			model.addAttribute("cartTotal", 0);
			model.addAttribute("shipping", 0);
			model.addAttribute("total", 0);
		}
		return "checkout";
	}

	@PostMapping("/payNow")
	public String completePurchase(ModelMap map, javax.servlet.http.HttpServletRequest request) {
		HttpSession session = request.getSession();
		String useremailId = (String) session.getAttribute("userEmailId");

		List<CartItem> cartItems = new ArrayList<CartItem>();
		if (session.getAttribute("cart_items") != null)
			cartItems = (List<CartItem>) session.getAttribute("cart_items");
		BigDecimal totalValue = getCartValue(cartItems);

		User user = userService.getUser(useremailId);
		PurchaseOrder purchaseOrder = new PurchaseOrder();
		purchaseOrder.setUser(user);
		purchaseOrder.setDate(java.sql.Date.valueOf(LocalDate.now(ZoneId.systemDefault())));
		purchaseOrder.setTotal(totalValue);
		purchaseOrder = purchaseOrderService.savePurchaseOrder(purchaseOrder);

		for (CartItem item : cartItems) {
			PurchaseItem pItem = new PurchaseItem();
			pItem.setPurchaseOrder(purchaseOrder);
			pItem.setPoduct(productService.getProductById(item.getProductId()));
			pItem.setUser(user);
			pItem.setRate(item.getRate());
			pItem.setQuantity(item.getQuantity());
			pItem.setPrice(item.getPrice());

			purchaseItemService.savePurchaseItem(pItem);
		}
		map.addAttribute("cartValue", 0);
		map.addAttribute("cartItems", null);
		map.addAttribute("orderNo", purchaseOrder.getID());
		session.setAttribute("cartValue", 0);
		session.setAttribute("cartItems", null);
		cartCount = 0;
		session.setAttribute("cartCount", cartCount);

		return "confirm";
	}

	/**
	 * Check if an item is already in the cart
	 * 
	 * @param list
	 * @param item
	 * @return
	 */
	private boolean isItemInCart(List<CartItem> list, long item) {
		boolean retVal = false;

		for (CartItem thisItem : list) {
			if (item == thisItem.getProductId()) {
				thisItem.setQuantity(thisItem.getQuantity() + 1);
				retVal = true;
				break;
			}
		}
		return retVal;
	}

	/**
	 * Get total value of items in cart
	 * 
	 * @param list
	 * @return
	 */
	private BigDecimal getCartValue(List<CartItem> list) {
		BigDecimal total = new BigDecimal(0.0);
		cartCount = 0;

		for (CartItem item : list) {

			cartCount = cartCount + item.getQuantity();
			BigDecimal dprice = item.getRate().multiply(new BigDecimal(item.getQuantity()));
			total = total.add(dprice);
		}
		return total;
	}

}
