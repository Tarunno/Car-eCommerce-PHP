<?php
	include 'includes/autoloader.inc.php';

	$car = new Car();
	$thought = new Thought();

	if(isset($_GET['type'])){
		$type = $_GET['type'];
		if($type == 'Offroad'){
			$type = 'Off road';
		}
		$cars = $car->get_car();
	}
	if(isset($_GET['post'])){
		$thoughts = $thought->get_thought();
		$array = array();
		while($row = $thoughts->fetch_assoc()){
			array_push($array, $row);
		}
		$thoughts = array_reverse($array);
	}
