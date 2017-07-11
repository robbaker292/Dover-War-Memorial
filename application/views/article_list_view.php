<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
<h2><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;Information Index <?php 
		if($loggedIn) {
			echo "<a href=\"".base_url()."article/edit/-1\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"fa fa-plus\" aria-hidden=\"true\"></i> New</a>";
		}

		?></h2>

<div id="narrative"><?php echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $meta->content)); 
		if($loggedIn) {
			echo "<a href=\"".base_url()."meta/edit/".$meta->id."\" class=\"btn btn-primary btn-xs\" role=\"button\" ><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit This Text</a>";
		}
		?>
</div>

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
