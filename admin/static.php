<?php
$page_title = "Indexbeheer";
$page_name = "Statistieken";
$local_page = "<i class='fa fa-bar-chart'></i>&nbsp;Statistieken /";
include "top_admin.php";

if($_SESSION['user_level'] == 1){
	
?>
				
				
				
<?php

include "bottom_admin.php"

?>
				
<?php
}else{

include "forbidden.php"
?>

<?php
}
?>