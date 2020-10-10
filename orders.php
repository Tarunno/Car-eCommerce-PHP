<?php
    session_start();
    include 'includes/admin.inc.php';
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
	<head>
		<meta charset="utf-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css"  />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/admin.css">
		<title>TARUNNO DRIVES | product</title>
	</head>
	<body>
		<div class="order-all">
			<div class="heading">
				<h1><a href="javascript:history.back();"><i class="fas fa-angle-double-left"></i></a>TARUNNO DRIVES <span> Admin </span> </h1>
			</div>
			<div class="user-info">
				<h3>Client details</h3>
				<?php
					echo '
					<h4><i class="fas fa-user"></i> '.$_SESSION['username'].'</h4>
					<h4><i class="fas fa-envelope"></i> '.$_SESSION['email'].'</h4>
					';
				?>
				<?php
					$user_order = new Order();
					$user_order = $user_order->get_order($order_id);
					$user_order = $user_order->fetch_assoc();
					echo '
					<h4><i class="fas fa-map-marker-alt"></i> '.$user_order['address'].' | '.$user_order['city'].'</h4>
					<h4><i class="fas fa-mobile-alt"></i> '.$user_order['phone'].'</h4>
					<h4><i class="fas fa-mail-bulk"></i> '.$user_order['postal_code'].'</h4>
					';
				?>
			</div>
			<div class="order-container">
				<h3>Order details</h3>
				<?php
				echo '<div class="items">';
					while($row = $order_items->fetch_assoc()){
						$product_1 = $row['product_id'];
						$product_2 = $row['product_id2'];
						if($product_1 == -1){
							$item = new Product();
							$item = $item->get_product($product_2);
							$item = $item->fetch_assoc();

							echo '
							<div class="item">
								<img src="assets/Product_images/'.$item['image'].'">
								<h5 class="item-name">'.$item['model'].'</h5>
								<h5 class="item-name">'.$item['manufacturer'].'</h5>
								<h6 class="item-price">$'.$item['price'].'</h6>
							</div>
							';
						} else {
							$item = new Car();
							$item = $item->get_car($product_1);
							$item = $item->fetch_assoc();

							echo '
							<div class="item">
								<img src="assets/Car_images/'.$item['image'].'">
								<h5 class="item-name">'.$item['model'].'</h5>
								<h5 class="item-name">'.$item['manufacturer'].'</h5>
								<h6 class="item-price">$'.$item['price'].'</h6>
							</div>
							';
						}
					}
				echo '</div>'
				?>
			</div>
		</div>
		<footer>
			<div class="social">
			  <h2>FLLOW US</h2>
			  <a href="#"> <i class="fab fa-facebook"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-instagram"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-twitter"> <span></span> </i> </a>
			  <a href="#"> <i class="fab fa-youtube"> <span></span> </i> </a>
		  </div>
		  <div class="credit">
		  	<h1>TARUNNO DRIVES | Developed by mahadi hasan tarunno</h1>
		  </div>
		</footer>
	</body>
</html>
