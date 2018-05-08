package org.iii.ee100.animour.shopping.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.iii.ee100.animour.shopping.entity.CartItem;
import org.iii.ee100.animour.shopping.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CartController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/cart/index")
	public String index() {
		return "/shopping/cartIndex";
	}
	
	//加入購物車
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/cart/buy/{id}", method=RequestMethod.GET)
	public String buy(@PathVariable("id") Long id, Model model, HttpSession session) {
		if(session.getAttribute("cart") == null) {
			List<CartItem> cart = new ArrayList<CartItem>();
			cart.add(new CartItem(productService.getOne(id), 1));
			session.setAttribute("cart", cart);
		} else {
			List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
			int index = this.isExist(id, session);
			if(index == -1) {
				cart.add(new CartItem(productService.getOne(id), 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
				session.setAttribute("cart", cart);
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/selectOneProduct?id=" + id;
	}
	
	//刪除購物車項目
	@SuppressWarnings({ "unchecked" })
	@RequestMapping(value="/cart/delete/{index}", method=RequestMethod.GET)
	public String delete(@PathVariable("index") int index, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		System.err.println(cart.size());
		cart.remove(index);
		System.err.println(cart.size());
		session.setAttribute("cart", cart);
		return "redirect:/cart/index";
	}
	
	@SuppressWarnings("unchecked")
	public int isExist(Long id, HttpSession session) {
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		for(int i = 0; i < cart.size(); i++) {
			if(cart.get(i).getProduct().getId() == id) {
				return i;
			}
		}
		return -1;
	}
}