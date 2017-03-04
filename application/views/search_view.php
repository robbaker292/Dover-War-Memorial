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
	$term = preg_replace('/["\-+]/', "", $term);
	$index = stripos($text, $term);
	$first = max(0,$index-$buffer);
	$length = strlen($term)+(2*$buffer);
	$substr = substr($text, $first, $length);

	$terms = explode(" ", $term);
	foreach($terms as $item) {
		if($index === false) { //maybe the whole search couldn't be found
			$itemIndex = stripos($text, $item);
			if($itemIndex !== false) { //if it could be found this time
				$first = max(0,$itemIndex-$buffer);
				$length = strlen($item)+(2*$buffer);
				$substr = substr($text, $first, $length);
			}

		}

		$item = preg_replace('[^A-Za-z0-9]', "", $item);
		$substr = preg_replace('/\b' . preg_quote($item, "/") . '\b/i', "<mark>\$0</mark>", $substr);
	}
	
	$output = preg_replace('/\b' . preg_quote($term, "/") . '\b/i', "<mark>\$0</mark>", $substr);
	//$output = str_replace(lcfirst($term), "<mark>".lcfirst($term)."</mark>",$output);

	return $output;

}
?>

	<h2>Search</h2>
	<div class="panel panel-primary">
		<div class="panel-heading">Search by text</div>
		<div class="panel-body" id="searchOptions">

			<form id="basicForm" action="<?php echo base_url();?>search/doSearch" method="post">
				<div class="form-group">
					<label class="control-label col-sm-2" for="term">Search for</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="term" placeholder="Enter Search Term" name="term" <?php if($results && isset($term)) { echo "value=\"".str_replace('"', '&quot;', $term)."\""; }?> >
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
		<div class="panel-heading">Search Casualty by data</div>
		<div class="panel-body" id="searchData">
			<div id="toggler">Show search options <i class="fa fa-arrow-circle-down" aria-hidden="true"></i></div>

			<form id="dataForm" action="<?php echo base_url();?>search/doSearchData" method="post">

				<div class="form-group">
					<label class="control-label col-sm-3" for="given_name">Given Name:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="given_name" placeholder="Enter Given Name (e.g. Henry)" name="given_name" <?php if($results && isset($data["given_name"])) { echo "value=\"".$data["given_name"]."\""; }?> >
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="middle_names">Middle Names:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="middle_names" placeholder="Enter Middle Names (e.g. Henry)" name="middle_names" <?php if($results && isset($data["middle_names"])) { echo "value=\"".$data["middle_names"]."\""; }?>>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="family_name">Family Name:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="family_name" placeholder="Enter Family Name (e.g. Jones)" name="family_name" <?php if($results && isset($data["family_name"])) { echo "value=\"".$data["family_name"]."\""; }?>>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="civilian">Civilian:</label>
					<div class="col-sm-9">
						<select class="form-control" id="civilian" name="civilian">
							<option value="" <?php if($results || !isset($data["civilian"])) { echo "selected"; }?> > </option>
							<option value="0" <?php if($results && isset($data["civilian"]) && $data["civilian"] == "0") { echo "selected"; }?> >No</option>
							<option value="1" <?php if($results && isset($data["civilian"]) && $data["civilian"] == "1") { echo "selected"; }?> >Yes</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-3" for="gender">Gender:</label>
					<div class="col-sm-9">
						<select class="form-control" id="gender" name="gender">
							<option value="" <?php if($results || !isset($data["gender"])) { echo "selected"; }?> > </option>
							<option value="M" <?php if($results && isset($data["gender"]) && $data["gender"] == "M") { echo "selected"; }?>>Male</option>
							<option value="F" <?php if($results && isset($data["gender"]) && $data["gender"] == "F") { echo "selected"; }?>>Female</option>
						</select>
					</div>
				</div>

				<button type="submit" class="btn btn-primary col-sm-1" id="search">Search</button>

			</form>
		</div>
	</div>

	<?php
	if($results) {
		?>
		<div class="panel panel-success">
			<div class="panel-heading">Search results</div>
			<?php if(count($searchResults) != 0) { ?>
				<div class="panel-body text-center">
					<ul class="pagination">
					<?php
					$currentUrl = current_url();
					$urlArr = $this->uri->segment_array();
					$lastSegment = array_splice($urlArr, -1)[0];

					$res = substr($currentUrl, 0, strlen($currentUrl)-strlen($lastSegment));

					//var_dump($res);
					for($i = 1; $i <= $pageCount; $i++) {
						$output = "<li";
						if($i == $page) {
							$output .= " class=\"active\"";
						}
						$output .= "><a href=\"".$res.$i."\">".$i."</a></li>";
						echo $output;
					}

					?>
					</ul>
				</div>
				<table class="table table-striped">	
				<tr><th class="col-sm-1">Type</th><th class="col-sm-2">Title</th><th class="col-sm-8">Content</th></tr>
				<?php
				foreach($searchResults as $res) {
					echo "<tr>";
					echo "<td>".ucfirst($res->type)."</td>";
					echo "<td><a href=\"".base_url().$res->type."/view/".$res->id."\">".$res->title."</a></td>";
					if(isset($term)) {
						echo "<td>...".sampleContent($res->content,$term)."...</td>";
					} else {
						echo "<td>...".substr($res->content,0,200)."...</td>";
					}
					
				}

				?>
				</table>
			<?php } else { ?>
				<div class="panel-body">No results found</div>

			<?php } ?>
		</div>

		<?php
	}
	?>