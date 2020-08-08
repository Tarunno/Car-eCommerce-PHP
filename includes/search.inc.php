<?php
	if(!isset($_GET['type'])){
		$car_search = new Car();
		$car_searchs = $car_search->search();
		$type = 'all';
	}
