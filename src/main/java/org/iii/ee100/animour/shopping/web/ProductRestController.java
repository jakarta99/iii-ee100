package org.iii.ee100.animour.shopping.web;

import java.util.List;

import org.iii.ee100.animour.shopping.entity.Product;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductRestController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value={"/shopping/product"}, method=RequestMethod.GET, produces={"application/json", "application/xml"})
	public List<Product> listProduct(@RequestParam(value="pageNo", required=false, defaultValue="1") String pageNoStr) {
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(pageNoStr);
		} catch (NumberFormatException e) {}
		
		if(pageNo < 1 ) {
			pageNo = 1;
		}
		Page<Product> page = productService.getPage(pageNo, 6);
		List<Product> products = page.getContent();
		return products;
	}
}