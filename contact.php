<?php
//Index.php

$page_title = "Contact";
include "top.php";

$SQL = "SELECT `txt_id`, `category_id`, `txt_title`, `txt_content`, `post_by`, `txt_date`, `txt_visible` FROM `txt` WHERE txt_id='4'";
$result = $connection->query($SQL);
?>
		
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
		
		<div class="opdrachtgevers">
		
			<a href="http://www.eurekacup.nl/" target="_blank"><img src="IMG/opdrachtgevers/eurekacup.png" id="opdrachtgever" width="200px" title="eurekacup" alt="eurekacup"></a>
			
			<a href="http://www.rijkswaterstaat.nl/" target="_blank"><img src="IMG/opdrachtgevers/rijkswaterstaat.png" id="opdrachtgever" width="200px" title="Rijkswaterstaat" alt="rijkswaterstaat"></a>
			
			<a href="http://techniekpromotie.nl/" target="_blank"><img src="IMG/opdrachtgevers/techniekpromotie.png" id="opdrachtgever" width="200px" title="techniekpromotie" alt="techniekpromotie"></a>
												
			<a href="https://weg.platformwow.nl/" target="_blank"><img src="IMG/opdrachtgevers/WoW.png" id="opdrachtgever" width="200px" title="Wegbeheerders Ontmoeten Wegbeheerders" alt="Wegbeheerders_Ontmoeten_Wegbeheerders"></a>
			
		</div>
		
<?php
include "bottom.php";
?>