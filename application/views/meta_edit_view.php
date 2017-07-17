<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
	<?php
	if ($new) {
		echo "<h2>New Meta Page</h2>";
	} else {		
		echo "<h2>Editing Meta Page</h2>";
	}	
	?>


<div id="editing">

	<form id="basicForm">
		<div class="form-group" id="titleGroup">
			<label class="control-label col-sm-3" for="id">ID:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="id" placeholder="Enter Unique ID" name="id" <?php if(!$new) { echo "value=\"".$meta->id."\""; }?> >
			</div>
		</div>

		<div class="form-group" id="titleGroup">
			<label class="control-label col-sm-3" for="title">Title:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="title" placeholder="Enter Title" name="title" <?php if(!$new) { echo "value=\"".$meta->title."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="content">Content:</label>
			<div class="col-sm-9">
				<textarea class="form-control" rows="15" id="narrative" placeholder="Enter Content" name="content"><?php if(!$new) { echo $meta->content; }?></textarea>
				<div class="help-block">Use Markdown to specify formatting. <a href="<?php echo base_url();?>meta/view/markdown" target="_blank">Help is available</a>. Click below to preview content.</div>
				<button type="button" class="btn btn-default" id="markdownPreview">Preview Below</button>
				<div id="markdownPreview"></div>
			</div>
		</div>

		<div class="form-group" >
			<label class="control-label col-sm-3" for="whereUsed">Where is this page used?:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="whereUsed" placeholder="Enter Where this page is used" name="whereUsed" <?php if(!$new) { echo "value=\"".$meta->whereUsed."\""; }?> >
				<div class="help-block">This will help identify where these meta pages are used.</div>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="changed_details">What's changed:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="changed_details" placeholder="Enter details of what has changed in this edit" name="changed_details" value="">
				<div class="help-block">Leave blank to stop this being listed on the changes page (e.g. admin pages).</div>
			</div>
		</div>

		<div class="form-group">
			<div class="btn-group" role="group" aria-label="...">
				<button type="button" class="btn btn-primary" id="saveBasic">Save meta page</button>
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
