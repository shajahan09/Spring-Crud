/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.parvez.controller;

import com.parvez.Repository.productRepo;
import com.parvez.entity.Product;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author HP
 */
@Controller
public class ProductController {
    @Autowired
    private productRepo pr;
    @RequestMapping(value = "/")
    public String show(Model m){
        List<Product> products = (List<Product>) pr.findAll();
        m.addAttribute("products",products);
        return "index";
    }
    @RequestMapping(value = "/new")
    public String news(){
        
        return "addProduct";
    }
    @RequestMapping(value = "/save",method = RequestMethod.POST)
    public String insert(HttpServletRequest request,Model model){
         
        String name = request.getParameter("name");
        int qty =Integer.parseInt(request.getParameter("qty")) ;
        Double price =Double.parseDouble(request.getParameter("price")) ;
        
        
        Product pro = new Product();
        pro.setName(name);
        pro.setQty(qty);
        pro.setPrice(price);
        pr.save(pro);
         
        return "index";
        }
     @RequestMapping(value = "/delete/{id}")
     @ResponseBody
    public void remove(@PathVariable int id) {
        pr.delete(id);
       
    }
    @RequestMapping(value = "/edit/{id}")
    public String edits(@PathVariable Integer id, Model model) {
//        Product products = new Product();
//        products.getId();
         

    
    return "updatePage";
       
    }
     
    
}
