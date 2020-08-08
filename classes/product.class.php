<?php
class Product extends DB{
	public function get_product($id=""){
		if($id == ""){
			$sql = "SELECT * FROM products";
		} else {
			$sql = "SELECT * FROM products WHERE id='$id'";
		}
		$stmt = $this->connect()->query($sql);
		return $stmt;
	}

	public function insert_product($POST, $file){
			$file_name = $file['name'];
			$file_tmp_name = $file['tmp_name'];
			$file_type = $file['type'];
			$file_size = $file['size'];
			$file_error = $file['error'];

			$file_ext = explode('.', $file_name);
			$file_name = $file_ext[0];
			$file_actual_ext = strtolower(end($file_ext));

			$allowed = array('jpg', 'jpeg', 'png');

			if(in_array($file_actual_ext, $allowed)){
				if($file_error === 0){
					if($file_size < 250000000){
						$full_file_name = "Product".$file_name."." . $file_actual_ext;
						$file_direction = "assets/Product_images/" . $full_file_name;
						move_uploaded_file($file_tmp_name, $file_direction);
						$POST['image'] = $full_file_name;
					} else {
						$_SESSION['message'] = "Invalid imge format";
					}
				} else {
					$_SESSION['message'] = "Uploading imge error";
				}
			} else {
				$_SESSION['message'] = "Image size is too large";
			}
			unset($POST['add-product-submit']);
			$sql = "INSERT INTO `products` SET";
			$i = 0;
			foreach ($POST as $key => $value) {
				if($i === 0){
					$sql = $sql . " `$key`=?";
				}else{
					$sql = $sql . ", `$key`=?";
				}
				$i++;
			}
			$sql = $sql . ';';
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$values = array_values($POST);
			$type = str_repeat('s', count($values));
			$stmt->bind_param($type, ...$values);
			$stmt->execute();
		}
		public function update_product($POST){
			$id = $POST['id'];
			unset($POST['id']);
			unset($POST['update-product-submit']);
			$sql = "UPDATE `products` SET";
			$i = 0;
			foreach ($POST as $key => $value) {
				if($i === 0){
					$sql = $sql . " `$key`=?";
				}else{
					$sql = $sql . ", `$key`=?";
				}
				$i++;
			}
			$sql = $sql . " WHERE `id`='$id';";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$values = array_values($POST);
			$type = str_repeat('s', count($values));
			$stmt->bind_param($type, ...$values);
			$stmt->execute();
		}
		public function delete_product($POST){
			$sql1 = "DELETE FROM products WHERE id='$POST';";
			$sql2 = "DELETE FROM cart WHERE product_id_2='$POST'";
			$this->connect()->query($sql1);
			$this->connect()->query($sql2);
		}
	}
