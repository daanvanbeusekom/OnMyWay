<?php

$page_title = "Delete Post";
include "top_admin.php";

check_signed_in();
check_admin();

$post_id = $_GET['post'];

$SQL = "SELECT post_by, category_id, post_title, post_content, category_id FROM forum WHERE post_id = '" . $post_id . "'";
$result = $connection->query($SQL);

$sql = "DELETE FROM forum WHERE post_id = '" . $post_id . "'";
$result = $connection->query($sql);

if(!$result){
	echo '<p>Mmm er is iets mis gegaan. Probeer het eens opnieuw.</p>';
}else{
	echo '<p>Het bericht is succesvol gedelete.</p>';
	echo '<meta http-equiv="refresh" content="1; url=messages.php">';
}

include "bottom.php";
?>