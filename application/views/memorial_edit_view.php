<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
	<?php
	if ($new) {
		echo "<h2>New Memorial</h2>";
	} else {		
		echo "<h2>Editing Memorial</h2>";
	}	
	?>


<div id="editing">

	<form id="basicForm">
		<input type="hidden" id="id" name="id" <?php if(!$new) { echo "value=\"".$memorial->id."\""; }?>>

		<div class="form-group" id="titleGroup">
			<label class="control-label col-sm-3" for="name">Name:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="name" placeholder="Enter Name" name="name" <?php if(!$new) { echo "value=\"".$memorial->name."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="narrative">Content:</label>
			<div class="col-sm-9">
				<textarea class="form-control" rows="30" id="narrative" placeholder="Enter Content" name="narrative"><?php if(!$new) { echo $memorial->narrative; }?></textarea>
				<div class="help-block">Use Markdown to specify formatting. <a href="<?php echo base_url();?>meta/view/markdown" target="_blank">Help is available</a>. Click below to preview narrative.</div>
				<button type="button" class="btn btn-default" id="markdownPreview">Preview Below</button>
				<div id="markdownPreviewArea"></div>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="location">Location:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="location" placeholder="Enter Location" name="location" <?php if(!$new) { echo "value=\"".$memorial->location."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="lat">Latitude:</label>
			<div class="col-sm-9">
				<input type="number" class="form-control" id="lat" placeholder="Enter Latitude" name="lat" <?php if(!$new) { echo "value=\"".$memorial->lat."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="lon">Longitude:</label>
			<div class="col-sm-9">
				<input type="number" class="form-control" id="lon" placeholder="Enter Longitude" name="lon" <?php if(!$new) { echo "value=\"".$memorial->lon."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="mainOrder">Order in main section:</label>
			<div class="col-sm-9">
				<input type="number" class="form-control" id="mainOrder" placeholder="Enter order in main section" name="mainOrder" <?php if(!$new) { echo "value=\"".$memorial->mainOrder."\""; }?> >
				<div class="help-block">Specifies the order in which this memorial is displayed. Leave blank to show in "Other" section.</div>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="changed_details">What's changed:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="changed_details" placeholder="Enter details of what has changed in this edit" name="changed_details" value="">
			</div>
		</div>

		<div class="form-group">
			<div class="btn-group" role="group" aria-label="...">
				<button type="button" class="btn btn-primary" id="saveBasic">Save memorial</button>
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
		</div>

	</form>
</div>