<?php

$page_title = "Uitloggen";
include "top.php";

session_destroy();
echo '<META http-equiv="refresh" content="1;URL=sign_in.php">';
?>

<div class="text">
    <p>Je bent succesvol uitgelogd.</p>
</div>

<?php

$_SESSION['no_aside'] = true;
include "bottom.php";
?>