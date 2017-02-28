<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

/**
*	Samples the text and highlights the search term
*/
function sampleContent($text, $term) {
	$buffer = 200;

	$index = strpos($text, $term);
	$first = max(0,$index-$buffer);
	$length = strlen($term)+(2*$buffer);

	return "...".str_replace($term, "<mark>".$term."</mark>",substr($text, $first, $length))."...";

}

?>

	<h2>Search</h2>
	<div class="panel panel-primary">
		<div class="panel-heading">Search by text</div>
		<div class="panel-body" id="searchOptions">

			<form id="basicForm" action="<?php echo base_url();?>search/doSearch" method="post">
				<div class="form-group">
					<label class="control-label col-sm-1" for="term">Search for</label>
					<div class="col-sm-5">
						<input type="text" class="form-control" id="term" placeholder="Enter Search Term" name="term" <?php if($results) { echo "value=\"".$term."\""; }?> >
					</div>
				</div>
			
				<div class="form-group">
					<label class="control-label col-sm-1" for="options">In</label>
					<div class="col-sm-4">
						<select class="form-control selectpicker" id="options" name="options[]" data-live-search="true" multiple data-selected-text-format="count > 4">
							<option value="casualty" <?php if($results && in_array("casualty", $options)) { echo "selected"; }?>>Casualty</option>
							<option value="article" <?php if($results && in_array("article", $options)) { echo "selected"; }?>>Article</option>
							<option value="site_update" <?php if($results && in_array("site_update", $options)) { echo "selected"; }?>>Update</option>
							<option value="memorial" <?php if($results && in_array("memorial", $options)) { echo "selected"; }?>>Memorial</option>
						</select>
					</div>
				</div>
				<button type="submit" class="btn btn-primary col-sm-1" id="search">Search</button>
			</form>
		</div>
	</div>

	<div class="panel panel-primary">
		<div class="panel-heading">Search by data</div>
		<div class="panel-body" id="searchData">
			Search by data
		</div>
	</div>

	<?php
	if($results) {
		?>
		<div class="panel panel-success">
			<div class="panel-heading">Search results</div>
			<table class="table table-striped">	
			<tr><th>Type</th><th>Title</th><th>Content</th></tr>
			<?php
			foreach($searchResults as $res) {
				echo "<tr>";
				echo "<td>".ucfirst($res->type)."</td>";
				echo "<td><a href=\"".base_url().$res->type."/view/".$res->id."\">".$res->title."</a></td>";
				echo "<td>".sampleContent($res->content,$term)."</td>";
			}

			?>
			</table>
		</div>

		<?php
	}
	?>