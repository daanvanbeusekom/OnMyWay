<?php

$page_title = "Aanmelden";
include "top.php";

if($_SERVER['REQUEST_METHOD'] != 'POST'){
	//The form hasn't been send yet, so show the form
?>

<div class="text">
<h1 class="animated bounce"><?php echo $page_title; ?></h1>
<article>
	<p>
		<form method="POST" action="sign_up.php">
			<label for="username">
				<span>Gebruikersnaam:</span>
				<input type="text" name="user_name" id="username" required>
			</label>
			<label for="password">
				<span>Wachtwoord:</span>
				<input type="password" name="user_pass" id="password" required>
			</label>
			<label for="password_check">
                <span>Herhaal Wachtwoord:</span>
				<input type="password" name="user_pass_check" id="password_check" required>
			</label>
			<label for="email">
				<span>E-mail:</span>
				<input type="email" name="user_email" id="email" required>
			</label>
			<label for="age">
				<span>Leeftijd:</span>
				<input type="date" name="user_age" id="age" required>
			</label>
			<label for="submit">
				<input type="submit" value="Aanmelden" id="submit" class="submit">
			</label>
		</form>
	</p>
	<footer>
		<span></span>
	</footer>
</article>
</div>
<?php
}else{
	//So the form has been sent
	// 1. Check the Data
	// 2. refill if necessary
	// 3. Save in database
	
	$errors = array(); //Declare for later
	
	$user_name = $_POST['user_name'];
	$user_pass = sha1($_POST['user_pass']);
	$user_pass_check = sha1($_POST['user_pass_check']);
	$user_email = $_POST['user_email'];
	$user_age = $_POST['user_age'];
		
	
	//Check the user_name
	if(isset($user_name)){
        //the user name exists
        if(!ctype_alnum($user_name)){
            $errors[] = 'De gebruikersnaam mag alleen letters en cijfers bevatten.';
        }
		
        if(strlen($user_name) > 30){
            $errors[] = 'De gebruikersnaam mag niet langer zijn dan 30 tekens.';
        }
		
		$sql = "SELECT count(1) FROM users WHERE user_name='$user_name'";
		$result = $connection->query($sql);
		$data = mysqli_fetch_array($result, MYSQLI_NUM);
		if($data[0] > 0){
			$errors[] = 'Deze gebruikersnaam bestaat al.';
		}
		
    }else{
        $errors[] = 'De gebruikersnaam mag niet leeg zijn.';
    }
	
	//Check the user_pass
	if(isset($user_pass)){
        if($user_pass != $user_pass_check){
            $errors[] = 'De twee wachtwoorden komen niet overeen.';
        }
    }else{
        $errors[] = 'Het wachtwoord mag niet leeg zijn.';
    }
	
	if(!empty($errors)){ /*check for an empty array, if there are errors, they're in this array (note the ! operator)*/
	
        echo '<div class="text"><p>Ojee, sommige velden zijn niet juist ingevuld. Klik <a href="sign_up.php">hier</a> om het opnieuw te proberen.';
        echo '<ul class="sign_up"></div>';
		
        foreach($errors as $key => $value){ /* walk through the array so all the errors get displayed */
            echo '<li>' . $value . '</li>'; /* this generates a nice error list */
        }
		
        echo '</ul></p>';
		
    }else{
        //the form has been posted without, so save it
        //notice the use of mysql_real_escape_string, keep everything safe!
        //also notice the sha1 function which hashes the password
		
        $sql = "INSERT INTO users(user_name, user_pass, user_email, user_age,user_date, user_level)
                VALUES('$user_name','$user_pass','$user_email', '$user_age', NOW(),0)";
                         
        $result = $connection->query($sql);
        if(!$result){
            //something went wrong, display the error
            echo '<div class="text"><p class="error">Something went wrong while registering. Please try again later.</p></div>';
            echo $connection->error(); //debugging purposes, uncomment when needed
        }else{
            echo '<div class="text"><p>Je bent succesvol geregistreed. Je kan nu <a href="sign_in.php">inloggen</a></p></div>';
        }
    }
}

$_SESSION['no_aside'] = true;
include "bottom.php";
?>