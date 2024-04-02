package com.devsuperior.desafio1.services;

import com.devsuperior.desafio1.entities.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {
    // responsável por operações referentes a pedidos.
    @Autowired
    private ShippingService shippingService;
    
    public double total(Order order) {
        // preço básico
        double basic = order.getBasic();
        // valor do frete em cima do preço basico
        double shipping = shippingService.shipment(order);
        // valor do desconto
        double discount = basic * (order.getDiscount() / 100.0); 
        
        return order.getBasic() + shipping - discount;
    }
}
