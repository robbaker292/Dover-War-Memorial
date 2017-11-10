<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();
if (!$new) {
?>
<script>
$(document).on("click", ".btn-delete", function(e) {
	bootbox.confirm({ 
		size: "large",
		title: "<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Warning!",
		message: "This will delete the current casualty. Deletions can be restored.",
		buttons: {
			confirm: {
				label: '<i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;Delete',
				className: 'btn-danger'
			},
			cancel: {
				label: '<i class="fa fa-ban" aria-hidden="true"></i>&nbsp;&nbsp;Cancel',
				className: 'btn-primary'
			}
		}, 
		callback: function(result){ 
			if(result) {
				window.location.href = <?php echo "\"".base_url()."casualty/delete/".$casualty_data->id."\""; ?>;
			}
		}
	});
});
</script>
	<?php
}
	if ($new) {
		echo "<h2>New Casualty</h2>";
	} else {
		?>
			<h2>Editing: <?php echo $casualty_data->given_name." ".$casualty_data->family_name; ?>

			<a href="<?php echo base_url()."casualty/view/".$casualty_data->id?>" class="btn btn-primary btn-md" role="button"><i class="fa fa-arrow-left" aria-hidden="true"></i> View</a>
			
		<a href="#" class="btn btn-danger btn-md pull-right btn-delete" role="button">
			<i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;Delete Casualty
		</a>
		</h2>
		<?php
	}	
	?>

	<div id="editing">

	<h3>Basic Details:</h3>

	<form id="basicForm">
		<input type="hidden" id="id" name="id" <?php if(!$new) { echo "value=\"".$casualty_data->id."\""; }?>>

		<div class="form-group">
			<label class="control-label col-sm-3" for="given_name">Given Name:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="given_name" placeholder="Enter Given Name (e.g. Henry)" name="given_name" <?php if(!$new) { echo "value=\"".$casualty_data->given_name."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="middle_names">Middle Names:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="middle_names" placeholder="Enter Middle Names (e.g. Henry)" name="middle_names" <?php if(!$new) { echo "value=\"".$casualty_data->middle_names."\""; }?>>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="family_name">Family Name:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="family_name" placeholder="Enter Family Name (e.g. Jones)" name="family_name" <?php if(!$new) { echo "value=\"".$casualty_data->family_name."\""; }?>>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="narrative">Narrative:</label>
			<div class="col-sm-9">
				<textarea class="form-control" rows="15" id="narrative" placeholder="Enter Narrative" name="narrative"><?php if(!$new) { echo $casualty_data->narrative; }?></textarea>
				<div class="help-block">Use Markdown to specify formatting. <a href="<?php echo base_url();?>meta/view/markdown" target="_blank">Help is available</a>. Click below to preview narrative.</div>
				<button type="button" class="btn btn-default" id="markdownPreview">Preview Below</button>
				<div id="markdownPreviewArea"></div>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="civilian">Civilian:</label>
			<div class="col-sm-9">
				<select class="form-control" id="civilian" name="civilian">
					<option value="0" <?php if(!$new && $casualty_data->civilian == "0") { echo "selected"; }?> >No</option>
					<option value="1" <?php if(!$new && $casualty_data->civilian == "1") { echo "selected"; }?> >Yes</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="gender">Gender:</label>
			<div class="col-sm-9">
				<select class="form-control" id="gender" name="gender">
					<option value="M" <?php if(!$new && $casualty_data->gender == "M") { echo "selected"; }?>>Male</option>
					<option value="F" <?php if(!$new && $casualty_data->gender == "F") { echo "selected"; }?>>Female</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="date_of_birth">Date Of Birth:</label>
			<div class="col-sm-9">
				<input type="date" class="form-control" id="date_of_birth" placeholder="Enter Date of Birth" name="date_of_birth" <?php if(!$new) { echo "value=\"".$casualty_data->date_of_birth."\""; }?>>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="date_of_death">Date Of Death:</label>
			<div class="col-sm-9">
				<input type="date" class="form-control" id="date_of_death" placeholder="Enter Date of Death" name="date_of_death" <?php if(!$new) { echo "value=\"".$casualty_data->date_of_death."\""; }?>>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="war">War:</label>
			<div class="col-sm-9">
				<select class="form-control selectpicker" id="war" name="war" data-live-search="true">
					<?php
					if(!$new && $casualty_data->war == null) {
						echo "<option value=\"null\" selected>Unknown</option>";
					} else {
						echo "<option value=\"null\">Unknown</option>";
					}

					foreach($warList as $war) {
						if(!$new && $war->id == $casualty_data->war) {
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

					if(!$new && $casualty_data->final_resting_place == null) {
						echo "<option value=\"null\" selected>Unknown</option>";
					} else {
						echo "<option value=\"null\">Unknown</option>";
					}

					foreach($commemorationLocationList as $cL) {
						if(!$new && $cL->id == $casualty_data->final_resting_place) {
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
					if(!$new &&  $casualty_data->rank_at_death == null) {
						echo "<option value=\"null\" selected>Unknown</option>";
					} else {
						echo "<option value=\"null\">Unknown</option>";
					}
					
					foreach($rankList as $rank) {
						if(!$new && $rank->id == $casualty_data->rank_at_death) {
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
					if(!$new && $casualty_data->service_country == null) {
						echo "<option value=\"null\" selected>Unknown</option>";
					} else {
						echo "<option value=\"null\">Unknown</option>";
					}
					
					foreach($countryList as $country) {
						if(!$new && $country->id == $casualty_data->service_country) {
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
					if(!$new && $casualty_data->place_of_birth == null) {
						echo "<option value=\"null\" selected>Unknown</option>";
					} else {
						echo "<option value=\"null\">Unknown</option>";
					}
					
					foreach($placeList as $place) {
						if(!$new && $place->id == $casualty_data->place_of_birth) {
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
					if(!$new && $casualty_data->last_known_address == null) {
						echo "<option value=\"null\" selected>Unknown</option>";
					} else {
						echo "<option value=\"null\">Unknown</option>";
					}
					
					foreach($placeList as $place) {
						if(!$new && $place->id == $casualty_data->last_known_address) {
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
				<input type="number" class="form-control" id="last_known_address_year" placeholder="Last Known Address Year" name="last_known_address_year" <?php if(!$new) { echo "value=\"".$casualty_data->last_known_address_year."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="recently_uploaded">Recently Imported:</label>
			<div class="col-sm-9">
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-default <?php if(!$new && $casualty_data->recently_uploaded == 1 ) { echo "active"; }?>">
						<input type="radio" name="recently_uploaded" id="recently_uploaded_yes" value="1" autocomplete="off" <?php if(!$new && $casualty_data->recently_uploaded == 1 ) { echo "checked"; }?>>
						Yes
					</label>

					<label class="btn btn-default <?php if(!$new && $casualty_data->recently_uploaded == 0 ) { echo "active"; }?>">
						<input type="radio" name="recently_uploaded" id="recently_uploaded_no" value="0" autocomplete="off" <?php if(!$new && $casualty_data->recently_uploaded == 0 ) { echo "checked"; }?>>
						No
					</label>
				</div>
				<div class="help-block">Will remove the warning label displayed to a user and removes this from the "recently imported" list.</div>
			</div>			
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="unsure_details">Unsure Details:</label>
			<div class="col-sm-9">
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-default <?php if(!$new && $casualty_data->unsure_details == 1 ) { echo "active"; }?>">
						<input type="radio" name="unsure_details" id="recently_uploaded_yes" value="1" autocomplete="off" <?php if(!$new && $casualty_data->unsure_details == 1 ) { echo "checked"; }?>>
						Yes
					</label>

					<label class="btn btn-default <?php if(!$new && $casualty_data->unsure_details == 0 ) { echo "active"; }?>">
						<input type="radio" name="unsure_details" id="recently_uploaded_no" value="0" autocomplete="off" <?php if(!$new && $casualty_data->unsure_details == 0 ) { echo "checked"; }?>>
						No
					</label>
				</div>
				<div class="help-block">Will remove the warning label displayed to a user because the casualty has some very unknown details.</div>
			</div>			
		</div>

		<div class="form-group">
			<div class="btn-group" role="group" aria-label="...">
			<?php
				if($new) {
					?>
						<button type="button" class="btn btn-primary" id="saveNew">Save and continue with editing</button>
					<?php
				}
				else {
					?>
						<button type="button" class="btn btn-primary" id="saveBasic">Save and continue with editing</button>
						<button type="button" class="btn btn-primary" id="saveReturn">Save and return to casualty</button>
					<?php
				}
			?>
			</div>
			<div id="saveResult">
				<?php
					if($this->session->flashdata('area') == "main") {
						$type = $this->session->flashdata('type');
						$message = $this->session->flashdata('message');

						if($type == "success") {
							?>
							<div class="alert alert-success" role="alert"><i class="fa fa-check" aria-hidden="true"></i><strong>Success</strong>&nbsp;<?php echo $message;?></div>
							<?php
						}
					}
				?>
			</div>			
			<?php if($new) { echo "<div class=\"help-block\">Casualty must be saved before below sections can be completed</div>"; } ?>
		</div>
	</form>

	<?php if(!$new) {?>
 	<hr>
	<h3>Commemorations Data:</h3>
	<form id="commemorationForm">
		<div class="form-group">
			<label class="control-label col-sm-3" for="commemorations">Commemoration Locations:</label>
			<div class="col-sm-9">
				<select class="form-control selectpicker" id="commemorations" name="commemorations" data-live-search="true" multiple data-selected-text-format="count > 3">
					<?php

					foreach($commemorationLocationList as $cL) {
						if(in_array($cL->id,$commemorationIds)) {
							echo "<option value=\"".$cL->id."\" selected>(".$cL->id.") ".$cL->name."</option>";
						} else {
							echo "<option value=\"".$cL->id."\">(".$cL->id.") ".$cL->name."</option>";
						}
					}

					?>
				</select>
			</div>
			<div class="help-block">Final Resting place is listed above.</div>
		</div>
	<button type="button" class="btn btn-primary" id="saveCommemorations">Save this section</button>
		<div id="saveResultCommemoration">
			<?php
				if($this->session->flashdata('area') == "commemoration") {
					$type = $this->session->flashdata('type');
					$message = $this->session->flashdata('message');

					if($type == "success") {
						?>
						<div class="alert alert-success" role="alert"><i class="fa fa-check" aria-hidden="true"></i><strong>Success</strong>&nbsp;<?php echo $message;?></div>
						<?php
					}
				}
			?>
		</div>
	</form>
	<hr>
	<h3>Regiment Data:</h3>
	<form id="regimentForm">
		<div class="form-group">
			<label class="control-label col-sm-3" for="regiments">Regiment / Service:</label>
			<div class="col-sm-9">
				<select class="form-control selectpicker" id="regiments" name="regiments" data-live-search="true" multiple data-selected-text-format="count > 3">
					<?php

					foreach($regimentList as $rL) {
						if(in_array($rL->id,$regimentIds)) {
							echo "<option value=\"".$rL->id."\" selected>(".$rL->id.") ".$rL->name."</option>";
						} else {
							echo "<option value=\"".$rL->id."\">(".$rL->id.") ".$rL->name."</option>";
						}
					}

					?>
				</select>
			</div>
		</div>
		<button type="button" class="btn btn-primary" id="saveRegiment">Save this section</button>
		<div id="saveResultRegiment">
			<?php
				if($this->session->flashdata('area') == "regiment") {
					$type = $this->session->flashdata('type');
					$message = $this->session->flashdata('message');

					if($type == "success") {
						?>
						<div class="alert alert-success" role="alert"><i class="fa fa-check" aria-hidden="true"></i><strong>Success</strong>&nbsp;<?php echo $message;?></div>
						<?php
					}
				}
			?>
		</div>
	</form>
	<hr>
	<h3>Service Number Data:</h3>
	<form id="serviceNumberForm">
		<div class="form-group">
			<label class="control-label col-sm-3" for="service_numbers">Current Service Numbers:</label>
			<div class="col-sm-9">
				<select class="form-control selectpicker" id="service_numbers" name="service_numbers" data-live-search="true" multiple data-selected-text-format="count > 5">
					<?php

					foreach($service_numbers as $rL) {
						echo "<option value=\"".$rL->service_number."\" selected>".$rL->service_number."</option>";
					}

					?>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-3" for="service_numbers_add">Add number:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="service_numbers_add" placeholder="Enter Service Number" name="service_numbers_add">
				<button type="button" class="btn btn-success" id="addServiceNumber">Add number</button>
			</div>
		</div>

	<button type="button" class="btn btn-primary" id="saveServiceNumber">Save this section</button>
		<div id="saveResultServiceNumber">
			<?php
				if($this->session->flashdata('area') == "serivceNumber") {
					$type = $this->session->flashdata('type');
					$message = $this->session->flashdata('message');

					if($type == "success") {
						?>
						<div class="alert alert-success" role="alert"><i class="fa fa-check" aria-hidden="true"></i><strong>Success</strong>&nbsp;<?php echo $message;?></div>
						<?php
					}
				}
			?>
		</div>
	</form>
	<hr>
	<h3>Relation Data:</h3>
	<form id="relationForm">
		<div id="relationChoosers">
		<?php foreach($relations as $relation) {?>
			<div class="relationOptions">
				<div class="form-group">
					<label class="control-label col-sm-3" for="relations">Current Relations:</label>
					<div class="col-sm-4">
						<select class="form-control selectpicker" name="relations[]" data-live-search="true" multiple data-max-options="1">
							<?php

							foreach($casualties as $rL) {
								echo "<option value=\"".$rL->id."\" data-subtext=\"Born ".$rL->date_of_birth."\"";
								if($relation->id == $rL->id) {
									echo "selected";
								}
								echo ">(".$rL->id.") ".$rL->given_name." ".$rL->middle_names." ".$rL->family_name."</option>";
							}

							?>
						</select>
					</div>
					<div class="col-sm-5">
						<select class="form-control selectpicker" name="relationType[]" data-live-search="true" multiple data-max-options="2">
							<?php

							foreach($relationTypes as $rL) {
								echo "<option value=\"".$rL->id."\" ";
								if($rL->id == $relation->relationType) {
									echo "selected";
								}
								echo ">".$rL->name."</option>";
							}

							?>
						</select>
					</div>
				</div>
			</div>
			<?php
			}
			?>
		</div>
		<button type="button" class="btn btn-success" id="relationAdder">Add another relation</button>&nbsp;
		<button type="button" class="btn btn-primary" id="saveRelations">Save this section</button>
		<div id="saveResultRelations">
			<?php
				if($this->session->flashdata('area') == "relations") {
					$type = $this->session->flashdata('type');
					$message = $this->session->flashdata('message');

					if($type == "success") {
						?>
						<div class="alert alert-success" role="alert"><i class="fa fa-check" aria-hidden="true"></i><strong>Success</strong>&nbsp;<?php echo $message;?></div>
						<?php
					}
				}
			?>
		</div>
	</form>
	<hr>
	<h3>Change Details</h3>
	<form id="changeDetailsForm">
		<div class="form-group">
			<label class="control-label col-sm-3" for="changed_details">What's changed:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="changed_details" placeholder="Enter details of what has changed in this edit" name="changed_details" value="">
			</div>
		</div>

		<button type="button" class="btn btn-primary" id="saveChangedDetails">Save this section</button>
		<div id="saveResultChangedDetails">
			<?php
				if($this->session->flashdata('area') == "changedDetails") {
					$type = $this->session->flashdata('type');
					$message = $this->session->flashdata('message');

					if($type == "success") {
						?>
						<div class="alert alert-success" role="alert"><i class="fa fa-check" aria-hidden="true"></i><strong>Success</strong>&nbsp;<?php echo $message;?></div>
						<?php
					}
				}
			?>
		</div>
	</form>
	<hr>
	<h3>Save all sections</h3>
	<form id="saveAllForm">
		<button type="button" class="btn btn-primary <?php if($new) { echo "disabled"; }?>" id="saveAll">Save all sections</button>
		<div class="help-block">Can only save all sections of an already existing casualty.</div>
		<div class="alert alert-success" role="alert" id="saveAllResultChangedDetails"><i class="fa fa-check" aria-hidden="true"></i><strong>Saved</strong></div>
		</div>
	</form>

	<?php }?>
</div>
