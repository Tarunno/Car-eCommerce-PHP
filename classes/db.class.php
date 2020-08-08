<?php
	class DB{
		private $dbservername = "localhost";
		private $dbusername = "root";
		private $dbpassword = "";
		private $dbname = "car_dealership";

		protected function connect(){
			$conn = new mysqli($this->dbservername, $this->dbusername, $this->dbpassword, $this->dbname);
			if($conn->connect_error){
				echo 'connection error';
				die();
			}
			return $conn;
		}
		public function printer($value){
			echo "<pre>" , print_r($value, true) , "</pre>";
		}
	}
?>
