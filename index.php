<?php
//Index.php

$page_title = "Home";
include "top.php";

$SQL = "SELECT `txt_id`, `category_id`, `txt_title`, `txt_content`, `post_by`, `txt_date`, `txt_visible` FROM `txt` WHERE txt_id='1'";
$result = $connection->query($SQL);
?>

	<div class="pictures">
		
			<img src="IMG/On My Way.png" id="Logo" width="200px" title="On My Way" alt="Logo - On My Way">
			<img src="IMG/WoW.png" id="WoW" width="200px" title="Wegbeheerders Ontmoeten Wegbeheerders" alt"Wegbeheerders Ontmoeten Wegbeheerders">
			
		</div>
		
		<div class="text">
		<?php
            while($row = $result->fetch_assoc()){
        ?>
			<div class="text-title">
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