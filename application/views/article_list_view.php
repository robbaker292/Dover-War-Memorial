<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
<h2>Information Index <?php 
		if($loggedIn) {
			echo "<small>&nbsp;<a href=\"".base_url()."article/edit/-1\">New</a></small>";
		}

		?></h2>

<?php

	foreach($articles_data as $category) {
		?>
		<h3><?php echo $category[0]["category_name"] ;?></h3>
		<div class="list-group">
		<?php
			foreach($category as $item) {
				echo "<a href=\"".base_url()."article/view/".$item["id"]."\" class=\"list-group-item\">".$item["title"]."</a>";
			}
		?>
		</div>
		<?php

		
	}

?>
