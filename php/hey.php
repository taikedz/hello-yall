<?php
require_once "stuff/hello.php";

if(count($_GET) == 0) {
    echo "Give me a query!";
} else {
  foreach ($_GET as $name => $place) {
    $phrase = hello_greet($place, $name);
    echo "<p>$phrase</p>\n";
  }
}
?>

