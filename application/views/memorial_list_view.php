<?php
defined('BASEPATH') OR exit('No direct script access allowed');

?>

<?php 

if(isset($item_id)) {
	echo "<h4><a href=\"view/".$item_id."\">$item_name</a></h4>"; 
} else {
	echo $item_name; 
}
?>