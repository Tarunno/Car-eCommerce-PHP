<?php
	class Story extends DB{
		public function get_story($id=""){
			if($id == ""){
				$sql = "SELECT * FROM stories";
			} else {
				$sql = "SELECT * FROM stories WHERE id='$id';";
			}
			$stmt = $this->connect()->query($sql);
			return $stmt;
		}
		public function add_story($title, $body, $file, $showing){
			$file_name = $file['name'];
			$file_tmp_name = $file['tmp_name'];
			$file_type = $file['type'];
			$file_size = $file['size'];
			$file_error = $file['error'];

			$file_ext = explode('.', $file_name);
			$file_name = $file_ext[0];
			$file_actual_ext = strtolower(end($file_ext));

			$allowed = array('jpg');

			if(in_array($file_actual_ext, $allowed)){
				if($file_error === 0){
					if($file_size < 250000000){
						$image_name = str_replace(" ", "_", $title);
						$full_file_name = "story".$image_name.".jpg" ;
						$file_direction = "assets/Story_images/" . $full_file_name;
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

			$sql = "INSERT INTO `stories` SET `title`=?, `body`=?, `showing`=?;";
			$conn = $this->connect();
			$stmt = $conn->prepare($sql);
			$stmt->bind_param('sss', $title, $body, $showing);
			$stmt->execute();
		}
		public function story_visibality($id){
			$con = $this->connect();
			$selected_stroy = $this->get_story($id);
			$row = $selected_stroy->fetch_assoc();
			if($row['showing'] == 1){
				$sql = "UPDATE `stories` SET `showing`=0 WHERE `id`='$id';";
			} else {
				$sql = "UPDATE `stories` SET `showing`=1 WHERE `id`='$id';";
			}
			$con->query($sql);
		}
		public function delete_story($id){
			$con = $this->connect();
			$sql = "DELETE FROM `stories` WHERE `id`='$id';";
			$con->query($sql);
		}
	}
