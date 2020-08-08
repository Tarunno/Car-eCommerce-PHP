<?php

	class Gallary extends DB{
		public function get_gallary(){
			$sql = "SELECT * FROM gallary";
			$stmt = $this->connect()->query($sql);
			return $stmt;
		}

		public function insert_gallary($file, $coloum){
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
							$full_file_name = "Gallary".$file_name."." . $file_actual_ext;
							$file_direction = "assets/Gallary_images/" . $full_file_name;
							move_uploaded_file($file_tmp_name, $file_direction);
						} else {
							$_SESSION['message'] = "Invalid imge format";
						}
					} else {
						$_SESSION['message'] = "Uploading imge error";
					}
				} else {
					$_SESSION['message'] = "Image size is too large";
				}
				$id = 1;
				$sql = "UPDATE `gallary` SET `$coloum` = '$full_file_name' WHERE  `id` = '$id';";
				print_r($sql);
				$conn = $this->connect();
				$stmt = $conn->query($sql);
			}
		}
