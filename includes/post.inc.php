<?php
	include 'includes/autoloader.inc.php';

	$thought = new Thought();
	if(isset($_GET['id'])){
		$thoughts = $thought->get_thought($_GET['id']);
	}
