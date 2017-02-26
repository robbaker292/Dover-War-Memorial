<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
	<h2><?php 
		echo $meta_data->title; 
		if($loggedIn) {
			echo "<small>&nbsp;<a href=\"".base_url()."meta/edit/".$meta_data->id."\" class=\"btn btn-primary btn-xs\" role=\"button\">Edit</a></small>";
		}

		?></h2>
<div id="narrative">
<?php

	echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $meta_data->content));
?>
</div>