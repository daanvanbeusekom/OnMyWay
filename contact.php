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
			
			<a href=""><img src="IMG/opdrachtgevers/heutink.png" id="opdrachtgever" width="100px" title="heutink" alt="heutink"></a>
			
			<a href=""><img src="IMG/opdrachtgevers/huijbregts.jpg" id="opdrachtgever" width="100px" title="huijbregts" alt="huijbregts"></a>
			
			<a href=""><img src="IMG/opdrachtgevers/prorail.png" id="opdrachtgever" width="100px" title="prorail" alt="prorail"></a>
			
			<a href=""><img src="IMG/opdrachtgevers/rijkswaterstaat.png" id="opdrachtgever" width="100px" title="rijkswaterstaat" alt="rijkswaterstaat"></a>
			
			<a href=""><img src="IMG/opdrachtgevers/techniekpromotie.jpg" id="opdrachtgever" width="100px" title="techniekpromotie" alt="techniekpromotie"></a>
			
			<a href=""><img src="IMG/opdrachtgevers/twente.png" id="opdrachtgever" width="100px" title="twente" alt="twente"></a>
			
			<a href=""><img src="IMG/opdrachtgevers/uterecht.png" id="opdrachtgever" width="100px" title="uterecht" alt="uterecht"></a>
			
			<a href=""><img src="IMG/opdrachtgevers/werkenbijdefensie.png" id="opdrachtgever" width="100px" title="werken bij defensie" alt="werken_bij_defensie"></a>
			
			<a href=""><img src="IMG/opdrachtgevers/WoW.png" id="opdrachtgever" width="100px" title="Wegbeheerders Ontmoeten Wegbeheerders" alt="Wegbeheerders_Ontmoeten_Wegbeheerders"></a>
			
		</div>
		
<?php
include "bottom.php";
?>