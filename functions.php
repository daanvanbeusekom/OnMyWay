<?php

function check_signed_in(){
	if(!isset($_SESSION['signed_in']) || $_SESSION['signed_in'] == false){
		echo "	<article>
				<header class='header_red'>
				<h1>Niet ingelogd</h1>
				</header>
				<p class='error'>Sorry je moet ingelogd zijn om dit te zien.</p>
				</article>";
		include "bottom.php";
		die();
	}
}

function check_admin(){
	if($_SESSION['user_level'] != 1){
		echo "	<article>
				<header class='header_red'>
				<h1>Niet Bevoegd</h1>
				</header>
				<p class='error'>Sorry je mag hier niet komen.</p>
				</article>";
		include "bottom.php";
		die();
	}
}

function check_result($result,$connection){
	if(!$result){
		echo "<p class='error'>Error" . $connection->error . "</p>";
		include "bottom.php";
		die();
	}
}

function get_maker_name($post_by, $connection){

	$sql = "SELECT user_name FROM users WHERE user_id='$post_by'";
	$result = $connection->query($sql);
	
	$row = $result->fetch_assoc();
	return $row['user_name'];
}

function get_maker_name_news($news_by, $connection) {
	
	$sql = "SELECT user name FROM users WHERE user_id='$news_by'";
	$result = $connection->query($sql);
	
	$row = $result->fetch_assoc2();
	return $row['user_name'];
}

function get_cat_name($cat_id, $connection){
	
	$sql = "SELECT cat_name FROM category WHERE cat_id='$cat_id'";
	$result = $connection->query($sql);
	
	$row = $result->fetch_assoc();
	return $row['cat_name'];
}

function get_last_post($topic_id, $connection){
	$sql = "SELECT post_id FROM posts WHERE post_topic='$topic_id'";
	$result = $connection->query($sql);
	
	$id = array();
	
	while($row = $result->fetch_assoc()){
	
		$id[] = $row['post_id'];
	
	}
	
	$post_id = max($id);
	
	$sql = "SELECT post_content FROM posts WHERE post_id='$post_id'";
	$result = $connection->query($sql);
	
	$row = $result->fetch_assoc();
	return $row['post_content'];
}

function get_last_news($topic_id, $connection){
	$sql = "SELECT news_id FROM news WHERE news_topic='$topic_id'";
	$result = $connection->query($sql);
	
	$id = array();
	
	while($row = $result->fetch_assoc2()){
	
		$id[] = $row['news_id'];
	
	}
	
	$post_id = max($id);
	
	$sql = "SELECT news_content FROM news WHERE news_id='$news_id'";
	$result = $connection->query($sql);
	
	$row = $result->fetch_assoc2();
	return $row['news_content'];
}

function get_user_level_name($user_level, $connection){
	if($user_level == 1){
		return "Admin";
	}else{
		return "Gebruiker";
	}
}
?>
