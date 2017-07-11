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

	<h2><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Search</h2>
	<div class="panel panel-primary">
		<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Search by text</h4></div>
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
					<div class="col-sm-3">
						<select class="form-control selectpicker" id="options" name="options[]" data-live-search="true" multiple data-selected-text-format="count > 2">
							<option value="casualty" <?php if($results && in_array("casualty", $options)) { echo "selected"; }?>>Casualty</option>
							<option value="article" <?php if($results && in_array("article", $options)) { echo "selected"; }?>>Article</option>
							<option value="site_update" <?php if($results && in_array("site_update", $options)) { echo "selected"; }?>>Update</option>
							<option value="memorial" <?php if($results && in_array("memorial", $options)) { echo "selected"; }?>>Memorial</option>
						</select>
					</div>
				</div>
				<button type="submit" class="btn btn-primary col-sm-2" id="search"><i class="fa fa-search"></i> Search</button>
			</form>
		</div>
	</div>

	<div class="panel panel-primary">
		<div class="panel-heading"><h4 class="panel-title"><a data-toggle="collapse" href="#collapse1" class="panel-title toggler"><i class="fa fa-arrow-down" aria-hidden="true"></i>Search Casualty by data</a></h4></div>
		<div id="collapse1" class="panel-collapse collapse">
			<div class="panel-body">
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

					<div class="form-group">
						<label class="control-label col-sm-3" for="date_of_birth">Date Of Birth:</label>
						<div class="col-sm-9">
							<input type="date" class="form-control" id="date_of_birth" placeholder="Enter Date of Birth" name="date_of_birth" <?php if($results && isset($data["date_of_birth"])) { echo "value=\"".$data["date_of_birth"]."\""; }?>>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="date_of_death">Date Of Death:</label>
						<div class="col-sm-9">
							<input type="date" class="form-control" id="date_of_death" placeholder="Enter Date of Death" name="date_of_death" <?php if($results && isset($data["date_of_death"])) { echo "value=\"".$data["date_of_death"]."\""; } ?>>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="war">War:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="war" name="war" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["war"])) {	
									echo "selected";	
								}
								echo " > </option>";

								foreach($warList as $war) {
									if($results && isset($data["war"]) && $war->id == $data["war"]) {
										echo "<option value=\"".$war->id."\" selected>(".$war->id.") ".$war->name."</option>";
									} else {
										echo "<option value=\"".$war->id."\">(".$war->id.") ".$war->name."</option>";
									}
									
								}

								?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="final_resting_place">Final Resting Place:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="final_resting_place" name="final_resting_place" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["final_resting_place"])) {	
									echo "selected";	
								}
								echo " > </option>";

								foreach($commemorationLocationList as $cL) {
									if($results && isset($data["final_resting_place"]) && $cL->id == $data["final_resting_place"]) {
										echo "<option value=\"".$cL->id."\" selected>(".$cL->id.") ".$cL->name."</option>";
									} else {
										echo "<option value=\"".$cL->id."\">(".$cL->id.") ".$cL->name."</option>";
									}
								}

								?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="rank_at_death">Rank at death:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="rank_at_death" name="rank_at_death" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["rank_at_death"])) {	
									echo "selected";	
								}
								echo " > </option>";
								
								foreach($rankList as $rank) {
									if($results && isset($data["rank_at_death"]) && $rank->id == $data["rank_at_death"]) {
										echo "<option value=\"".$rank->id."\" selected>(".$rank->id.") ".$rank->name."</option>";
									} else {
										echo "<option value=\"".$rank->id."\">(".$rank->id.") ".$rank->name."</option>";
									}
								}

								?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="service_country">Service Country:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="service_country" name="service_country" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["service_country"])) {	
									echo "selected";	
								}
								echo " > </option>";
								
								foreach($countryList as $country) {
									if($results && isset($data["service_country"]) && $country->id == $data["service_country"]) {
										echo "<option value=\"".$country->id."\" selected>(".$country->id.") ".$country->name."</option>";
									} else {
										echo "<option value=\"".$country->id."\">(".$country->id.") ".$country->name."</option>";
									}
								}

								?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="place_of_birth">Place of Birth:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="place_of_birth" name="place_of_birth" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["place_of_birth"])) {	
									echo "selected";	
								}
								echo " > </option>";
								
								foreach($placeList as $place) {
									if($results && isset($data["place_of_birth"]) && $place->id == $data["place_of_birth"]) {
										echo "<option value=\"".$place->id."\" selected>(".$place->id.") ".$place->name."</option>";
									} else {
										echo "<option value=\"".$place->id."\">(".$place->id.") ".$place->name."</option>";
									}
								}

								?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="last_known_address">Last Known Address:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="last_known_address" name="last_known_address" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["last_known_address"])) {	
									echo "selected";	
								}
								echo " > </option>";
								
								foreach($placeList as $place) {
									if($results && isset($data["last_known_address"]) && $place->id == $data["last_known_address"]) {
										echo "<option value=\"".$place->id."\" selected>(".$place->id.") ".$place->name."</option>";
									} else {
										echo "<option value=\"".$place->id."\">(".$place->id.") ".$place->name."</option>";
									}
								}

								?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="last_known_address_year">Last Known Address Year:</label>
						<div class="col-sm-9">
							<input type="number" class="form-control" id="last_known_address_year" placeholder="Last Known Address Year" name="last_known_address_year" <?php if($results && isset($data["last_known_address_year"])) { echo "value=\"".$data["last_known_address_year"]."\""; }?> >
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="commemoration_location">Commemoration Location:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="commemoration_location" name="commemoration_location" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["commemoration_location.id"])) {	
									echo "selected";	
								}
								echo " > </option>";

								foreach($commemorationLocationList as $cL) {
									if($results && isset($data["commemoration_location"]) && $cL->id == $data["commemoration_location"]) {
										echo "<option value=\"".$cL->id."\" selected>(".$cL->id.") ".$cL->name."</option>";
									} else {
										echo "<option value=\"".$cL->id."\">(".$cL->id.") ".$cL->name."</option>";
									}
								}

								?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="regiment_service">Regiment / Service:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="regiment_service" name="regiment_service" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["regiment_service"])) {	
									echo "selected";	
								}
								echo " > </option>";

								foreach($regimentList as $rL) {
									if($results && isset($data["regiment_service"]) && $rL->id == $data["regiment_service"]) {
										echo "<option value=\"".$rL->id."\" selected>(".$rL->id.") ".$rL->name."</option>";
									} else {
										echo "<option value=\"".$rL->id."\">(".$rL->id.") ".$rL->name."</option>";
									}
								}

								?>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3" for="service_numbers">Current Service Numbers:</label>
						<div class="col-sm-9">
							<select class="form-control selectpicker" id="service_numbers" name="service_numbers" data-live-search="true">
								<?php
								echo "<option value=\"\"";
								if($results || !isset($data["service_numbers"])) {	
									echo "selected";	
								}
								echo " > </option>";

								foreach($service_numbers as $rL) {
									if($rL->service_number == "") {
										continue;
									}

									if($results && isset($data["service_numbers"]) && $rL->service_number == $data["service_numbers"]) {
										echo "<option value=\"".$rL->service_number."\" selected>".$rL->service_number."</option>";
									} else {
										echo "<option value=\"".$rL->service_number."\">".$rL->service_number."</option>";
									}
									
								}

								?>
							</select>
						</div>
					</div>

					<button type="submit" class="btn btn-primary col-sm-2" id="searchData"><i class="fa fa-search"></i> Search</button>

				</form>
			</div>
		</div>
	</div>

	<?php
	if($results) {
		?>
			<?php if(count($searchResults) != 0) { ?>
			<div class="panel panel-success">
			<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-check" aria-hidden="true"></i>&nbsp;Search results</h4></div>
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
				<div class="panel panel-danger">
					<div class="panel-heading"><h4 class="panel-title"><i class="fa fa-times" aria-hidden="true"></i>&nbsp;Search results</h4></div>
						<div class="panel-body">No results found</div>

			<?php } ?>
		</div>

		<?php
	}
	?>