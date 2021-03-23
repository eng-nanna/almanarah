<?php
	$db_user = 'u445761217_manar';
	$db_pass = 'fyjxnQ0Ju1Ia';
	$host = 'localhost';
	/******************************************************/
	$db_conn = mysqli_connect($host, $db_user, $db_pass);
	if (!$db_conn){
		die('Could not connect: ' . mysqli_error($db_conn));
	}
	
	/******************************************************/
	// select the desired database
	$db_name= "u445761217_alman";
	$db_select = mysqli_select_db($db_conn,$db_name);
	if (!$db_select){
		die('Database selection failed: ');
	}
	
	/******************************************************/	
	mysqli_query($db_conn,"SET NAMES 'utf8'");
?>