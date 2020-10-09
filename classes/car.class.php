<?php
	class Car extends DB{
		public function get_car($id=""){
			if($id == ""){
				$sql = "SELECT * FROM cars";
			} else {
				$sql = "SELECT * FROM cars WHERE id='$id'";
			}
			$stmt = $this->connect()->query($sql);
			return $stmt;
		}

		public function insert_car($POST, $file){
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
						if($file_size < 5000000){
							$full_file_name = "Car".$file_name."." . $file_actual_ext;
							$file_direction = "assets/Car_images/" . $full_file_name;
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
				unset($POST['add-car-submit']);
				$sql = "INSERT INTO `cars` SET";
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
			public function update_car($POST){
				$id = $POST['id'];
				unset($POST['id']);
				unset($POST['update-car-submit']);
				$sql = "UPDATE `cars` SET";
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
			public function delete_car($POST){
				$sql1 = "DELETE FROM cars WHERE id='$POST';";
				$sql2 = "DELETE FROM cart WHERE product_id='$POST'";
				$this->connect()->query($sql1);
				$this->connect()->query($sql2);
			}
			public function search(){
				$con = $this->connect();
				if(isset($_POST['regular-search'])){
					$search = mysqli_real_escape_string($con, $_POST['regular-search']);
					$sql = "SELECT * FROM `cars` WHERE `manufacturer` LIKE '%$search%' OR `model` LIKE '%$search%';";
					$cars = $con->query($sql);
					return $cars;
				}
			}
		}
