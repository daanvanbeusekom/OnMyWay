<!DOCTYPE html>
<?php
include "vars.php";
include "sessions.php";
include "functions.php";
include "database_connect.php";
?>

<html>
	<head>
		<!-- Basic -->
		<title><?php echo $page_title?> | On My Way</title>
		<link href="https://fonts.googleapis.com/css?family=Orbitron|Overpass+Mono" rel="stylesheet">
		<link href="CSS/main_stylesheet.css" type="text/css" rel="stylesheet" media='screen  and (min-width: 1000px)'>
		<link href="CSS/wide_stylesheet.css" type="text/css" rel="stylesheet" media='screen  and (min-width: 1000px)'>
		<link href='CSS/font_stylesheet.css' type="text/css" rel="stylesheet">
        <link href='CSS/form_stylesheet.css' type="text/css" rel="stylesheet">
        <link href='CSS/animate.css' type="text/css" rel="stylesheet">
        
		<!-- Mobile -->
		<link href="CSS/small_stylesheet.css" type="text/css" rel="stylesheet" media='screen  and (max-width: 999px)'>
		<meta name="viewport" content="user-scalable=no, initial-scale=0.5, minimum-scale=0.5" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<script type="text/javascript" src="JS/mobile.js"></script>
		<meta charset="UTF-8">
		
        <!-- Javascript -->
        <script src="JS/smooth-scroll.js"></script>
		<script>
			smoothScroll.init();
		</script>

        <!-- Info
            Made by: Daan v. Beusekom & Thijs v/d Heijden
            Made for: O&O 2017 Group 2
            Version: 0.0.09 Beta 1
            Description: Site for a new O&O project with group 2.
        -->
		
	</head>
	
	<body>
		<header class="container" id="top_body_wrapper">
			<div class="row">
				<a href="index.php"><h1 class="Logo">On My Way</h1></a>
				<a class="mobile_only" href="#" id="mobile_enabler" onClick="show_Menu()"><img src="IMG/Menu.png" id="menu_enabler" alt="Menu"/></a>
				<ul class="nav menu" id="menu">
                    <?php
						$full_name = $_SERVER['PHP_SELF'];
						$name_array = explode('/',$full_name);
						$count = count($name_array);
						$page_name_menu = $name_array[$count-1];
					?>
                    <li id="HM" class="<?php echo ($page_name_menu=='index.php')?'active':'';?>">
                        <a href="index.php">Home</a>
                    </li>
					<li id="OA" class="<?php echo ($page_name_menu=='our_idea.php')?'active':'';?>">
                        <a href="our_idea.php">Ons Idee</a>
                    </li>
					<li id="TECH" class="<?php echo ($page_name_menu=='technology.php')?'active':'';?>">
                        <a href="technology.php">Technologie</a>
                    </li>
                    <li id="NEWS" class="<?php echo ($page_name_menu=='news.php')?'active':'';?>">
                        <a href="news.php">Nieuws</a>
                    </li>
                    <li id="CONT" class="<?php echo ($page_name_menu=='contact.php')?'active':'';?>">
                        <a href="contact.php">Contact</a>
                    </li>
                    <?php
						
							if($_SESSION['signed_in'] == false){
						?>
					<li id="INL" class="<?php echo ($page_name_menu=='sign_in.php')?'active':'';?>">
                        <a href="sign_in.php">Inloggen</a>
                    </li>
                    <?php
							}else{
						?>
                    <li id="ULG" class="<?php echo ($page_name_menu=='sign_out.php')?'active':'';?>">
                        <a href="sign_out.php">Uitloggen</a>
                    </li>
                    <?php
							}
				    ?>
				    <?php
                        if($_SESSION['user_level'] == 1){
				    ?>
                    <li id="ADM" class="">
                        <a href="admin/admin.php">Admin</a>
                    </li>
                    <?php
							}
				    ?>
				</ul>
			</div>
		</header>
        
        <div id="middle_body_wrapper">