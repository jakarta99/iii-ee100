package org.iii.ee100.animour.shopping.web;

import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ClassifyService;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductSearchController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ClassifyService classifyService;
	
		//find product by classify
		@RequestMapping("/products/{id}")
		public String getProductByCategory(@PathVariable("id") Long id, Model model,
				@RequestParam(value="pageNo", required=false, defaultValue="1") String pageNoStr) {
			int pageNo = this.pageNumber(pageNoStr);
			model.addAttribute("page", productService.getProductByCategory(id, pageNo, 6));
			model.addAttribute("classifies", classifyService.getAll());
			return "/shopping/ProductIndex";
		}
		
		//KeyWord Select By Product
		@RequestMapping(path= {"/selectByNameKeyWord"}, method={RequestMethod.GET})
		public String selectByNameKeyWord(Product product, Model model,
				@RequestParam(value="pageNo", required=false, defaultValue="1") String pageNoStr) {
			int pageNo = this.pageNumber(pageNoStr);
			model.addAttribute("page", productService.getByNameKeyWord(product.getName(), pageNo, 6));
			model.addAttribute("classifies", classifyService.getAll());
			return "/shopping/ProductIndex";
		}
		
		//find Product by PriceLessThanEqual
		@RequestMapping(path= {"/selectPrice"}, method={RequestMethod.GET})
		public String selectPrice(Product product, Model model,
				@RequestParam(value="pageNo", required=false, defaultValue="1") String pageNoStr) {
			int pageNo = this.pageNumber(pageNoStr);
			model.addAttribute("page", productService.getByPriceLessThanEqual(product.getPrice(), pageNo, 6));
			model.addAttribute("classifies", classifyService.getAll());
			return "/shopping/ProductIndex";
		}
		
		//pageNumber Utility
		public int pageNumber(String pageNoStr) {
			int pageNo = 1;
			try {
				pageNo = Integer.parseInt(pageNoStr);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
			if(pageNo < 1 ) {
				pageNo = 1;
			}
			return pageNo;
		}
}
