<?php
	class Order extends DB{
		public function get_order($id = ""){
			if($id == ""){
				$sql = "SELECT * FROM `orders`;";
			}else{
				$sql = "SELECT * FROM `orders` WHERE `id` = '$id';";
			}
			$result = $this->connect()->query($sql);
			return $result;
		}
		public function delete_order($id){
			$sql = "DELETE FROM `orders` WHERE `id`='$id';";
			$this->connect()->query($sql);
		}
		public function get_cart($id){
			$sql = "SELECT * FROM `cart` WHERE `user_id`='$id';";
			$result = $this->connect()->query($sql);
		}
		public function clear_cart($id){
			$sql = "DELETE FROM `cart` WHERE `user_id`='$id';";
			$this->connect()->query($sql);
		}
		public function place_order(){
			$id = $_POST['user_id'];
			$sql = "SELECT * FROM `orders` WHERE `user_id`='$id';";
			$result = $this->connect()->query($sql);

			if(mysqli_num_rows($result) == 0){
				$sql = "INSERT INTO `orders` (user_id, address, city, phone, postal_code)
				VALUES(?, ?, ?, ?, ?);";
			} else{
				$sql = "UPDATE `orders` SET user_id=?, address=?, city=?, phone=?, postal_code=?;";
			}

			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('sssss', $_POST['user_id'], $_POST['address'], $_POST['city'], $_POST['phone'], $_POST['postal_code']);
			$stmt->execute();
		}
		public function cart_to_order($id){
			$sql = "SELECT * FROM `orders` WHERE `user_id`='$id';";
			$result = $this->connect()->query($sql);
			$result = $result->fetch_assoc();
			$order_id = $result['id'];

			$sql = "SELECT * FROM `cart` WHERE `user_id`='$id';";
			$cart = $this->connect()->query($sql);
			while($row = $cart->fetch_assoc()){
				$car = $row['product_id'];
				$parts = $row['product_id_2'];
				$sql = "INSERT INTO `order_items` SET `order_id`='$order_id', `product_id`='$car', `product_id2`='$parts';";
				$this->connect()->query($sql);
			}
		}
		public function get_items($id){
			$sql = "SELECT * FROM `order_items` WHERE `order_id`='$id';";
			$result = $this->connect()->query($sql);
			return $result;
		}
	}
