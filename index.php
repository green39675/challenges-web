<?php

//ob_start();
session_start();


// If User is logged => redirect to tavern.php and announce it

 if ( isset($_SESSION['user']) ) {
  $_SESSION['logged'] = 1;
  header("Location: tavern.php");
  echo "<meta http-equiv='refresh' content='0; url=tavern.php'>";
  exit;
 }

require_once 'inc.php';

html_head("Dauntless Challenges");

navbar('bgimg_index');


pageFade();


Landing();


?>


</body>
</html>