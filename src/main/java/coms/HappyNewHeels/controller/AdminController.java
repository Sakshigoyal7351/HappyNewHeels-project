package coms.HappyNewHeels.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import coms.HappyNewHeels.model.Product;
import coms.HappyNewHeels.model.ProductCategory;
import coms.HappyNewHeels.model.PurchaseItem;
import coms.HappyNewHeels.model.User;
import coms.HappyNewHeels.repository.AdminRepository;
import coms.HappyNewHeels.repository.UserRepository;
import coms.HappyNewHeels.service.ProductCategoryService;
import coms.HappyNewHeels.service.ProductService;
import coms.HappyNewHeels.service.PurchaseItemService;
import coms.HappyNewHeels.service.UserService;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;

	@Autowired
	UserRepository userRepository;

	@Autowired
	AdminRepository adminRepository;

	@Autowired
	ProductCategoryService productCategoryService;

	@Autowired
	ProductService productService;

	@Autowired
	PurchaseItemService purchaseItemService;

	@GetMapping("/admin")
	public String adminHome() {

		return "adminDetails";
	}

	@GetMapping(path = "/admin/userList")
	public ModelAndView listOfRegisteredUsers() {
		List<User> customerList = userService.fetchUserList().stream()
				.filter(user -> user.getDiscriminatorValue().equals("Customer")).collect(Collectors.toList());

		ModelAndView modelAndView = new ModelAndView("registeredUserList");

		modelAndView.addObject("userList", customerList);

		return modelAndView;
	}

	@PostMapping(path = "/admin/users/search")
	public ModelAndView searchUsersList(ModelMap map, javax.servlet.http.HttpServletRequest request,
			@RequestParam(value = "searchId", required = false) String searchId) {

		/*
		 * ResponseEntity<List<Todo>> responseEntity = restTemplate.exchange(BASE_URL,
		 * HttpMethod.GET,null,new ParameterizedTypeReference<List<Todo>>() { });
		 */

		List<User> userList = userRepository.findByfirstNameContainingIgnoreCase(searchId).stream()
				.filter(user -> user.getDiscriminatorValue().equals("Customer")).collect(Collectors.toList());

		ModelAndView modelAndView = new ModelAndView("registeredUserList");

		modelAndView.addObject("userList", userList);

		return modelAndView;
	}

	@GetMapping("/admin/categories")
	public String getCategory(Model model) {
		model.addAttribute("categories", productCategoryService.fetchProductCategoryList());
		return "productCategoryList";
	}

	@GetMapping("/admin/categories/add")
	public String addCategory(Model model) {
		return "addProductCategory";
	}

	@PostMapping("/categories/add")
	public String addCategories(@ModelAttribute("productCategory") ProductCategory productCategory,
			HttpServletRequest request) throws ServletException {

		productCategoryService.saveCategory(productCategory);
		return "adminDetails";

	}

	@GetMapping(path = "/admin/category/Edit")
	public ModelAndView showEditCategoryPage(@RequestParam("categoryId") Long theId, Model theModel) {

		ProductCategory productCategory = productCategoryService.getCategoryById(theId);
		theModel.addAttribute("productCategory", productCategory);
		return new ModelAndView("editProductCategory");

	}

	@GetMapping(path = "/admin/category/Delete")
	public ModelAndView deleteCategory(@RequestParam("categoryId") Long theId) {
		productCategoryService.deleteCategory(theId);

		return new ModelAndView("redirect:/admin/categories");

	}

	@PostMapping(path = "/category/update/save")
	public ModelAndView updateCategory(@ModelAttribute("productCategory") ProductCategory category) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/categories");
		
		productCategoryService.updateCategory(category);

		return modelAndView;
	}

	@GetMapping("/admin/products")
	public String getProductList(Model model) {
		model.addAttribute("products", productService.getAllProducts());
		return "productList";
	}

	@GetMapping("/admin/product/add")
	public String addProduct(Model model) {
		model.addAttribute("categories", productCategoryService.fetchProductCategoryList());
		return "addProduct";
	}

	@PostMapping("admin/product/add")
	public ModelAndView updateProduct(@ModelAttribute("product") Product product, HttpServletRequest request)
			throws ServletException {

		productService.saveProduct(product);
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/products");
		return modelAndView;

	}

	@GetMapping(path = "/admin/product/Edit")
	public ModelAndView showEditProductPage(@RequestParam("productId") Long theId, Model theModel) {

		Product product = productService.getProductById(theId);
		theModel.addAttribute("categories", productCategoryService.fetchProductCategoryList());
		theModel.addAttribute("product", product);
		return new ModelAndView("editProduct");

	}

	@PostMapping(path = "/admin/product/Edit/save")
	public ModelAndView updateProduct(@ModelAttribute("product") Product product) {
		ModelAndView modelAndView = new ModelAndView("redirect:/admin/products");

		productService.updateProduct(product);

		return modelAndView;
	}

	@GetMapping(path = "/admin/product/Delete")
	public ModelAndView deleteProduct(@RequestParam("productId") Long theId) {
		
		System.out.println(theId);
		productService.deleteProduct(theId);

		return new ModelAndView("redirect:/admin/products");

	}

	@GetMapping(path = "/admin/purchaseReport")
	public ModelAndView purchaseReport() {

		List<PurchaseItem> purchaseItemList = purchaseItemService.getAllPurchaseItemList();

		ModelAndView modelAndView = new ModelAndView("purchaseReport");

		modelAndView.addObject("purchaseItemList", purchaseItemList);

		return modelAndView;
	}

}
