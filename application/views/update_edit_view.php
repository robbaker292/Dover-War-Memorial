<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

//var_dump($update);
?>
<script>
$(document).on("click", ".btn-delete", function(e) {
	bootbox.confirm({ 
		size: "large",
		title: "<i class=\"fa fa-exclamation-triangle\" aria-hidden=\"true\"></i>&nbsp;&nbsp;Warning!",
		message: "This will delete the site update.<br>This CANNOT be undone",
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
				window.location.href = <?php echo "\"".base_url()."siteUpdate/delete/".$update->id."\""; ?>;
			}
		}
	});
});
</script>
	<?php
	if ($new) {
		echo "<h2>New Update</h2>";
	} else {		
		echo "<h2>Editing Update";
		?>
		<a href="<?php echo base_url()."siteUpdate/view/".$update->id?>" class="btn btn-primary btn-md" role="button"><i class="fa fa-arrow-left" aria-hidden="true"></i> View</a>
		<a href="#" class="btn btn-danger btn-md pull-right btn-delete" role="button">
			<i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;Delete Site Update
		</a>
		</h2>
		<?php
	}	
	?>


	<div id="editing">

	<form id="basicForm">
		<input type="hidden" id="id" name="id" <?php if(!$new) { echo "value=\"".$update->id."\""; }?>>

		<div class="form-group" id="titleGroup">
			<label class="control-label col-sm-3" for="title">Title:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="title" placeholder="Enter Title" name="title" <?php if(!$new) { echo "value=\"".$update->title."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="content">Narrative:</label>
			<div class="col-sm-9">
				<textarea class="form-control" rows="15" id="narrative" placeholder="Enter Content" name="content"><?php if(!$new) { echo $update->content; }?></textarea>
				<div class="help-block">Use Markdown to specify formatting. <a href="<?php echo base_url();?>meta/view/markdown" target="_blank">Help is available</a>. Click below to preview content.</div>
				<button type="button" class="btn btn-default" id="markdownPreview">Preview Below</button>
				<div id="markdownPreviewArea"></div>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="date">Update Date:</label>
			<div class="col-sm-9">
				<input type="date" class="form-control" id="date" placeholder="Enter Date of Update" name="date" <?php if(!$new) { echo "value=\"".$update->date."\""; } else { echo "value=\"".date("Y-m-d")."\""; } ?>>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="family">Family update:</label>
			<div class="col-sm-9">
				<div class="btn-group" data-toggle="buttons">
					<label class="btn btn-default <?php if(!$new && $update->family == 1 ) { echo "active"; }?>">
						<input type="radio" name="family" id="recently_uploaded_yes" value="1" autocomplete="off" <?php if(!$new && $update->family == 1 ) { echo "checked"; }?>>
						Yes
					</label>

					<label class="btn btn-default <?php if( (!$new && $update->family == 0) || $new ) { echo "active"; }?>">
						<input type="radio" name="family" id="recently_uploaded_no" value="0" autocomplete="off" <?php if( (!$new && $update->family == 0) || $new ) { echo "checked"; }?>>
						No
					</label>
				</div>
				<div class="help-block">Will highlight the update with a different backgroud</div>
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
				<button type="button" class="btn btn-primary" id="saveBasic">Save update</button>
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




	
