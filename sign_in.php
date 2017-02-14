<?php

$page_title = "Inloggen";
$txt_title = "Inloggen";
include "top.php";

if($_SESSION['signed_in'] == true){
?>

<div class="text">
    <p>
	   Je bent al in ingelogd. Klik <a href="sign_out.php">hier</a> om uit te loggen.
    </p>
</div>
<?php
}else{
	if($_SERVER['REQUEST_METHOD'] != 'POST'){
?>

<div class="text">
    
<div class="txt-title animated bounce">   
    <h1 ><?php echo $page_title; ?></h1>
</div>
    <article>
        <p>
            <form method="POST" action="sign_in.php">
                <label for="username">
                    <span>Gebruikersnaam:</span>
                    <input type="text" name="user_name" id="username" placeholder="Gebruikersnaam" required>
                    <label for="user" class="entypo-user"></label>
                </label>
                <label for="password">
                    <span>Wachtwoord:</span>
                    <input type="password" name="user_pass" id="password" palceholder="Wachtwoord" required>
                </label>
                <label>
                    <input type="submit" value="Log in" class="submit">
                </label>
            </form>
        </p>
        <footer>
            <span><br />Nog geen account? Klik <a href="sign_up.php">hier.</a></span>
        </footer>
    </article>
</div>

<?php
	}else{
		//The Form has been post
		
		//Get variables
		$user_name = $_POST['user_name'];
		$user_pass = sha1($_POST['user_pass']);
	
		//create error Array
		$errors = array();
	
		if(!isset($user_name)){
			$errors[] = 'De gebruikersnaam is niet ingevuld.';
		}
		
		if(!isset($user_pass)){
			$errors[] = 'Het wachtwoord is niet ingevuld.';
		}
		
		//Check if there are errors
		if(!empty($errors)){
			echo '<p>Ojee, sommige velden zijn niet juist ingevuld. Klik <a href="sign_in.php">hier</a> om het opnieuw te proberen.';
			echo '<ul class="sign_in">';
			
			foreach($errors as $key => $value){ /* walk through the array so all the errors get displayed */
				echo '<li>' . $value . '</li>'; /* this generates a nice error list */
			}
			
			echo '</ul></p>';
		}else{
			//Check the database
			
			$sql = "SELECT user_id, user_name, user_level, user_theme, user_img FROM users WHERE user_name ='$user_name' AND user_pass ='$user_pass'";
			$result = $connection->query($sql);
			
			if(!$result){
				echo $connection->error;
			}else{
				if($result->num_rows == 0){
					echo '<p>Combinatie is niet juist.</p>';
				}else{
					//set the $_SESSION['signed_in'] variable to TRUE
                    $_SESSION['signed_in'] = true;
                     
                    //we also put the user_id and user_name values in the $_SESSION, so we can use it at various pages
                    while($row = mysqli_fetch_assoc($result))
                    {
                        $_SESSION['user_id']    = $row['user_id'];
                        $_SESSION['user_name']  = $row['user_name'];
                        $_SESSION['user_level'] = $row['user_level'];
                        $_SESSION['user_theme'] = $row['user_theme'];
						$_SESSION['user_img']   = $row['user_img'];
                    }
                     
                    echo '<div class="text"><br /><p>Welkom, ' . $_SESSION['user_name'] . '. <a href="index.php">Ga naar de home pagina.</a>.</p></div>';
					echo '<META http-equiv="refresh" content="1;URL=index.php">'; 
				}
			}
		}
		
	}
}

$_SESSION['no_aside'] = true;
include "bottom.php";
?>