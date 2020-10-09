<?php
	include 'includes/autoloader.inc.php';

	$cart = new Cart();
	$order = new Order();
	$carts = $cart->get_cart($_SESSION['id']);

	$count = 0;
	$total = 0;
	$result = "";
	while($row = $carts->fetch_assoc()){
		$total += $row['product_price'];
		$count++;
	}

	if(isset($_POST['order-submit'])){
		$order->place_order();
		$order->cart_to_order($_POST['user_id']);
		$order->clear_cart($_POST['user_id']);
		$_SESSION['cart'] = 0;
		unset($_POST);
		$count = 0;
		$total = 0;
	}
