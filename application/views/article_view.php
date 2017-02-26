<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
	<h2><?php 
		echo $article_data->title; 
		if($loggedIn) {
			echo "<small>&nbsp;<a href=\"".base_url()."article/edit/".$article_data->id."\" class=\"btn btn-primary btn-xs\" role=\"button\">Edit</a></small>";
		}

		?></h2>
<div id="narrative">
<?php

	echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $article_data->content));
?>
</div>
<h6>Posted:&nbsp;<?php echo $article_data->posted_date; ?></h6>