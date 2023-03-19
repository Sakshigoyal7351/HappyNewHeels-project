package coms.HappyNewHeels.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import coms.HappyNewHeels.repository.ProductCategoryRepository;
import coms.HappyNewHeels.repository.ProductRepository;
import coms.HappyNewHeels.service.ProductCategoryService;
import coms.HappyNewHeels.service.ProductService;

@Controller
public class ShopController {

	@Autowired
	ProductCategoryService productCategoryService;

	@Autowired
	ProductService productService;

	@Autowired
	ProductRepository productRepository;
	@Autowired
	ProductCategoryRepository productCategoryRepository;

	@GetMapping("/shop")
	public String shop(Model model) {

		model.addAttribute("products", productService.getAllProducts());

		return "shop";
	}

	@GetMapping({ "/shop/Gender/{gender}", "/shop/Kids/{gender}" })
	public String shopByMen(@PathVariable String gender, Model model) {

		model.addAttribute("products", productRepository.findAllProductsByTargetGroup(gender));

		return "shop";
	}

	@GetMapping("/shop/brand/{brandName}")
	public String shopByBrand(@PathVariable String brandName, Model model) {

		model.addAttribute("products", productRepository.findAllProductsByBrand(brandName));

		return "shop";
	}

	@GetMapping("/shop/style/{styleVal}")
	public String shopByStyle(@PathVariable String styleVal, Model model) {
		model.addAttribute("products", productRepository.findAllProductsByStyle(styleVal));

		return "shop";
	}

	@GetMapping("/shop/viewProduct/{productCode}")
	public String viewProduct(@PathVariable Long productCode, Model model) {
		System.out.println("## View Product ->Product Code " + productCode);

		model.addAttribute("product", productService.getProductById(productCode));

		return "viewProduct";
	}

}
