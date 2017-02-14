<?php
//technology.php

$page_title = "Technologie";
include "top.php";

$SQL = "SELECT `txt_id`, `category_id`, `txt_title`, `txt_content`, `post_by`, `txt_date`, `txt_visible` FROM `txt` WHERE txt_id='3'";
$result = $connection->query($SQL);
?>

    <div class="text">
	   <?php
            while($row = $result->fetch_assoc()){
        ?>
			<div class="text-title animated bounce">
				<h1><?php echo $row['txt_title']?></h1>
			</div>
			
			<div class="text-text">
				<p><?php echo $row['txt_content']?> </p>
			</div>
        <?php
            }
        ?>	
    </div>
		
<?php
include "bottom.php";
?>