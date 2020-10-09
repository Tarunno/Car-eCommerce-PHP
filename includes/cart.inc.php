<?php
	include 'includes/autoloader.inc.php';

	$cart = new Cart();
	$carts = $cart->get_cart($_SESSION['id']);
	$cartss = $cart->get_cart($_SESSION['id']);
	$car = new Car();
	$cars = $car->get_car();

	$count = 0;
	$total = 0;
	$user_id = $_SESSION['id'];
	while($row = $carts->fetch_assoc()){
		$total += $row['product_price'];
		$count++;
	}
	$_SESSION['cart'] = $count;

	if(isset($_POST['cnl-submit'])){
		$cart->delete_cart($_GET['cnl_id']);
		$_SESSION['cart'] -= 1;
		header("Location: cart.php");
	}
