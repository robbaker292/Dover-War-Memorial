<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
<h2><i class="fa fa-cogs" aria-hidden="true"></i> Meta Pages <?php 
		if($loggedIn) {
			echo "<a href=\"".base_url()."meta/edit/-1\" class=\"btn btn-success btn-xs\" role=\"button\"><i class=\"fa fa-plus\" aria-hidden=\"true\"></i> New</a>";
		}

		?></h2>
<div id="narrative"><?php echo $Parsedown->text(str_replace("%asset_url%", asset_url(), $meta->content)); 
		if($loggedIn) {
			echo "<a href=\"".base_url()."meta/edit/".$meta->id."\" class=\"btn btn-primary btn-xs\" role=\"button\" ><i class=\"fa fa-pencil\" aria-hidden=\"true\"></i> Edit This Text</a>";
		}
		?>
</div>
<br>
<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-pencil" aria-hidden="true"></i> Edit Various Lists</h4></div>
	<table class="table table-striped">	
	<tr><th>Name</th><th>List All</th><th>New</th></tr>
	<tr>
		<td>Place</td><td><a href="<?php echo base_url() ?>place/listAll" class="btn btn-primary btn-xs" role="button"><i class="fa fa-pencil" aria-hidden="true"></i> List All</a></td>
		<td><a href="<?php echo base_url() ?>place/edit/-1" class="btn btn-success btn-xs" role="button"><i class="fa fa-plus" aria-hidden="true"></i> New</a></td>
	</tr>
	<tr>
		<td>Rank</td><td><a href="<?php echo base_url() ?>rank/listAll" class="btn btn-primary btn-xs" role="button"><i class="fa fa-pencil" aria-hidden="true"></i> List All</a></td>
		<td><a href="<?php echo base_url() ?>rank/edit/-1" class="btn btn-success btn-xs" role="button"><i class="fa fa-plus" aria-hidden="true"></i> New</a></td>
	</tr>
	<tr><td>Regiment/Service</td><td><a href="<?php echo base_url() ?>regiment_service/listAll" class="btn btn-primary btn-xs" role="button"><i class="fa fa-pencil" aria-hidden="true"></i> List All</a></td>
		<td><a href="<?php echo base_url() ?>regiment_service/edit/-1" class="btn btn-success btn-xs" role="button"><i class="fa fa-plus" aria-hidden="true"></i> New</a></td>
	</tr>
	<tr><td>Relation Type</td><td><a href="<?php echo base_url() ?>relation/listAll" class="btn btn-primary btn-xs" role="button"><i class="fa fa-pencil" aria-hidden="true"></i> List All</a></td>
		<td><a href="<?php echo base_url() ?>relation/edit/-1" class="btn btn-success btn-xs" role="button"><i class="fa fa-plus" aria-hidden="true"></i> New</a></td>
	</tr>
	<tr><td>Service Country</td><td><a href="<?php echo base_url() ?>service_country/listAll" class="btn btn-primary btn-xs" role="button"><i class="fa fa-pencil" aria-hidden="true"></i> List All</a></td>
		<td><a href="<?php echo base_url() ?>service_country/edit/-1" class="btn btn-success btn-xs" role="button"><i class="fa fa-plus" aria-hidden="true"></i> New</a></td>
	<tr>
		<td>War</td><td><a href="<?php echo base_url() ?>war/listAll" class="btn btn-primary btn-xs" role="button"><i class="fa fa-pencil" aria-hidden="true"></i> List All</a></td>
		<td><a href="<?php echo base_url() ?>war/edit/-1" class="btn btn-success btn-xs" role="button"><i class="fa fa-plus" aria-hidden="true"></i> New</a></td>
	</tr>
	</table>
</div>
<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-list-ul" aria-hidden="true"></i> List of all meta pages</h4></div>
	<table class="table table-striped">	
	<tr><th>ID</th><th>Title</th><th>Where used</th></tr>
	<?php
	foreach ($meta_data as $data) {
		echo "<tr>";
		echo "<td><a href=\"../meta/viewFull/".$data->id."\">";
		echo $data->id;
		echo "</a></td><td>";
		echo $data->title;
		echo "</td><td>";
		echo $data->whereUsed;
		echo "</td>";
		echo "</tr>";
	}
	?>
	</table>
</div>
<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-users" aria-hidden="true"></i>&nbsp;Casualties With No Memorial</h4></div>
	<?php
		if(count($casualty_data) == 0) {
			?>
			<div class="panel-body">
			No casualties without memorials
			</div>
			<?php
		} else {
			echo "<table class=\"table table-striped table-hover \" id=\"casualtyTable\">";
			echo "<tr><th>Name</th><th>Date of birth</th><th>Date of Death</th></tr>";
			foreach ($casualty_data as $data) {
				echo "<tr class=\"clickableRow\" data-url=\"".base_url()."/casualty/view/".$data->id."\" >";
				echo "<td><a href=\"".base_url()."casualty/view/".$data->id."\">";
				echo $data->given_name." ".$data->family_name;
				echo "</a></td><td>";
				echo $data->date_of_birth;
				echo "</td><td>";
				echo $data->date_of_death;
				echo "</td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		?>
</div>

<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp;Articles With No Category</h4></div>
	<?php
		if(count($article_data) == 0) {
			?>
			<div class="panel-body">
			No articles without a category
			</div>
			<?php
		} else {
			echo "<table class=\"table table-striped table-hover \" id=\"casualtyTable\">";
			echo "<tr><th>Name</th><th>Posted Date</th></tr>";
			foreach ($article_data as $data) {
				echo "<tr class=\"clickableRow\" data-url=\"".base_url()."/article/view/".$data->id."\" >";
				echo "<td><a href=\"".base_url()."article/view/".$data->id."\">";
				echo $data->title;
				echo "</a></td><td>";
				echo $data->posted_date;
				echo "</td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		?>
</div>

<div class="panel panel-primary">
	<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;Future Site Updates</h4></div>
	<?php
		if(count($update_data) == 0) {
			?>
			<div class="panel-body">
			No future site updates
			</div>
			<?php
		} else {
			echo "<table class=\"table table-striped table-hover \" id=\"casualtyTable\">";
			echo "<tr><th>Name</th><th>Posted Date</th></tr>";
			foreach ($update_data as $data) {
				echo "<tr class=\"clickableRow\" data-url=\"".base_url()."/siteUpdate/view/".$data->id."\" >";
				echo "<td><a href=\"".base_url()."siteUpdate/view/".$data->id."\">";
				echo $data->title;
				echo "</a></td><td>";
				echo $data->date;
				echo "</td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		?>
</div>


