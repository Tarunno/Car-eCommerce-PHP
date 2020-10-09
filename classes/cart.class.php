<?php
	class Cart extends DB{
		public function get_cart($user_id=""){
			if($user_id == ""){
				$sql = "SELECT * FROM cart";
			} else {
				$sql = "SELECT * FROM cart WHERE user_id='$user_id'";
			}
			$stmt = $this->connect()->query($sql);
			return $stmt;
		}
		public function add_to_cart($product_id, $product_name, $product_price, $user_id, $user_name, $product_model, $user_email, $product_image){
			$sql = "INSERT INTO `cart` (product_name, user_id, product_id, product_price, user_name, product_model, user_email, product_image)
			VALUES(?, ?, ?, ?, ?, ?, ?, ?);";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('sssissss',  $product_name, $user_id, $product_id, $product_price, $user_name, $product_model, $user_email, $product_image);
			$stmt->execute();
		}
		public function delete_cart($id){
			$sql = "DELETE FROM cart WHERE id='$id';";
			$this->connect()->query($sql);
		}
		public function add_to_cart_product($product_id, $product_name, $product_price, $user_id, $user_name, $product_model, $user_email, $product_image, $product_id_2){
			$sql = "INSERT INTO `cart` (product_name, user_id, product_id, product_price, user_name, product_model, user_email, product_image, product_id_2)
			VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?);";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('sssisssss',  $product_name, $user_id, $product_id, $product_price, $user_name, $product_model, $user_email, $product_image, $product_id_2);
			$stmt->execute();
		}
	}
