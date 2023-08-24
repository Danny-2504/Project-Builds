package com.app.controller;

import java.util.Map;

import org.json.JSONObject;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.razorpay.*;
@RestController
@RequestMapping("/api/payment")
public class PaymentController {
	
	@PostMapping("/create_order")
	public String placeOrderOnRazorpay(@RequestBody Map<String, Object> data) throws RazorpayException {
		RazorpayClient razorpayClient = new RazorpayClient("rzp_test_QQT1v9U5PAocCe", "m1OVibE8I1aQ2MNW1FPoPDoA");
		JSONObject options = new JSONObject();
		
		int amt=Integer.parseInt(data.get("amt").toString());
		options.put("amount", amt*100);
		options.put("currency", "INR");
		options.put("receipt", "txn_123456");
		Order order = razorpayClient.Orders.create(options);
		System.out.println(order);
		
		//add payment data to database
		return order.toString();
	}
	@PostMapping("/update_order")
	public ResponseEntity<?>  upadtePayment(@RequestBody Map<String, Object> data){
		
		System.out.println(data);
		//update payment data to database
		return ResponseEntity.ok("");
	}

}

//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.CrossOrigin;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import com.app.dto.PaymentDto;
//import com.app.entities.Payment;
//import com.app.service.PaymentService;
//
//@RestController
//@RequestMapping("/api/payment")
//@CrossOrigin
//public class PaymentController {
//	
//	@Autowired
//	private PaymentService paymentService;
//	
//	
//	@GetMapping("/{orderId}")
//	public ResponseEntity<?> getPaymentDetail(@PathVariable Integer orderId){
//		return ResponseEntity.status(HttpStatus.OK).body(paymentService.getPaymentByOrderId(orderId));
//	}
//	
//	@PostMapping
//	public ResponseEntity<?> addPaymentDetail(@RequestBody PaymentDto payment){
//		return ResponseEntity.status(HttpStatus.CREATED).body(paymentService.addPaymentDetail(payment) );
//	}
//	
//
//}
