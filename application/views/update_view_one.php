<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($updates);
?>
		<h2><?php 
			echo $update->title;
			if($loggedIn) {
				echo "<small>&nbsp;<a href=\"".base_url()."siteUpdate/edit/".$update->id."\" class=\"btn btn-primary btn-xs\" role=\"button\">Edit</a></small>";
			}
		?>
		</h2>


<?php


?>
<div id="update">
		<p><?php echo $Parsedown->text($update->content); ?></p>
		<h6><small>Posted:&nbsp;<?php echo $update->date; ?></small></h6>
</div>
<?php echo "<a href=\"".base_url()."siteUpdate/".$update->year."\">Return to all ".$update->year." updates</a>"; ?>

	
