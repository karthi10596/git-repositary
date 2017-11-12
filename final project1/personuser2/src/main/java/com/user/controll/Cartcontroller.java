package com.user.controll;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.user.DAO.CartDAO;
import com.user.DAO.ProductDAO;
import com.user.entity.Cart;
import com.user.entity.Product;

@Controller
public class Cartcontroller {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CartDAO cartDAO;
	@RequestMapping("/addcart/{id}")
	public String addToCart(@PathVariable("id")int id,@RequestParam("quantity") int quantity,HttpSession session,Model m)
	{
		Cart cart=new Cart();
		String username=(String)session.getAttribute("username");
		cart.setCartid(1001);
		cart.setId(id);
		cart.setQuantity(quantity);
		cart.setStatus("N");
		cart.setUsername(username); 
		Product product=productDAO.getProduct(id);
		cart.setName(product.getName());
		cart.setPrize(product.getPrize());
		cartDAO.addToCart(cart);
		List<Cart> list=cartDAO.getCartItems(username);
		m.addAttribute("cartitems", list);
		return "cart";
	}
	@RequestMapping("addcart")
	public String getcart( HttpSession session,Model model)
	{
		String username=(String)session.getAttribute("username");
		List<Cart> list=cartDAO.getCartItems(username);
		model.addAttribute("cartitems", list);
		return "cart";
		
	}
	@RequestMapping(value="/updateCartItem/{citemid}")
	public String updateCartItem(@PathVariable("citemid")int citemid,@RequestParam("quantity")int quantity,HttpSession session,Model m)
	{
		Cart cart=cartDAO.getCartItem(citemid);
		cart.setQuantity(quantity);
		cartDAO.updateCartItem(cart);
		String username=(String)session.getAttribute("username");
		List<Cart> list=cartDAO.getCartItems(username);
		m.addAttribute("cartitems", list);
		return "cart";
		
	}
	@RequestMapping(value="/deleteCartItem/{citemid}")
	public String deleteCartItem(@PathVariable("citemid")int citemid,HttpSession session,Model m)
	{
		Cart cart=cartDAO.getCartItem(citemid);
		cartDAO.deleteCartItem(cart);
		String username=(String)session.getAttribute("username");
		List<Cart> list=cartDAO.getCartItems(username);
		m.addAttribute("cartitems", list);
		return "cart";
		
	}
}
