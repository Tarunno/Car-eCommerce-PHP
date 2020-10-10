<?php
	include 'includes/autoloader.inc.php';

	$car = new Car();
	$cart = new Cart();
	$user = new User();
	$product = new Product();

	if(isset($_GET['id'])){
		$id = $_GET['id'];
		$cars = $car->get_car($id);
		$row = $cars->fetch_assoc();
	}
	if(isset($_GET['product_id'])){
		$id = $_GET['product_id'];
		$products = $product->get_product($id);
		$row = $products->fetch_assoc();
	}
	if(isset($_POST['add-to-cart'])){
		$cart->add_to_cart($row['id'], $row['manufacturer'], $row['price'], $_SESSION['id'], $_SESSION['username'], $row['model'], $_SESSION['email'], $row['image']);
		$user->update_cart_increment($_SESSION['id']);
		$_SESSION['cart'] += 1;
		header("Location: index.php");
		exit();
	}
	if(isset($_POST['add-to-cart-product'])){
		$cart->add_to_cart_product("-1", $row['manufacturer'], $row['price'], $_SESSION['id'], $_SESSION['username'], $row['model'], $_SESSION['email'], $row['image'], $row['id']);
		$user->update_cart_increment($_SESSION['id']);
		$_SESSION['cart'] += 1;
		header("Location: index.php");
		exit();
	}
