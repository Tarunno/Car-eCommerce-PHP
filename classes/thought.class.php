<?php
	class Thought extends DB{
		public function get_thought($id=""){
			if($id == ""){
				$sql = "SELECT * FROM my_thoughts";
			} else {
				$sql = "SELECT * FROM my_thoughts WHERE id='$id'";
			}
			$stmt = $this->connect()->query($sql);
			return $stmt;
		}

		public function insert_thought($POST, $file){
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
							$full_file_name = "Thought".$file_name."." . $file_actual_ext;
							$file_direction = "assets/Thought_images/" . $full_file_name;
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
				unset($POST['add-thoughts-submit']);
				$sql = "INSERT INTO `my_thoughts` SET";
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
			public function delete_thought($POST){
				$sql1 = "DELETE FROM my_thoughts WHERE id='$POST';";
				$this->connect()->query($sql1);
			}
	}
