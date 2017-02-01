<!DOCTYPE html>
<html>
	<head>
		<!-- Basic -->
		<title>On My Way</title>
		<link href="https://fonts.googleapis.com/css?family=Orbitron|Overpass+Mono" rel="stylesheet">
		<link href="CSS/main_stylesheet.css" type="text/css" rel="stylesheet" media='screen  and (min-width: 1000px)'>
		<link href="CSS/wide_stylesheet.css" type="text/css" rel="stylesheet" media='screen  and (min-width: 1000px)'>
		<link href='CSS/font_stylesheet.css' type="text/css" rel="stylesheet">
        
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
				<ul class="nav">
                    <?php
						$full_name = $_SERVER['PHP_SELF'];
						$name_array = explode('/',$full_name);
						$count = count($name_array);
						$page_name_menu = $name_array[$count-1];
					?>
                    <li id="HM" class="<?php echo ($page_name_menu=='index.php')?'active':'';?>">
                        <a href="index.php">Home</a>
                    </li>
					<li id="OA" class="<?php echo ($page_name_menu=='our_app.php')?'active':'';?>">
                        <a href="our_app.php">Onze App</a>
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
					<li id="INL" class="<?php echo ($page_name_menu=='sign_in.php')?'active':'';?>">
                        <a href="sign_in.php">Inloggen</a>
                    </li>
				</ul>
			</div>
		</header>