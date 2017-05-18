<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
	<?php
	if ($new) {
		echo "<h2>New Article</h2>";
	} else {		
		echo "<h2>Editing Article</h2>";
	}	
	?>

<div id="editing">

	<form id="basicForm">
		<input type="hidden" id="id" name="id" <?php if(!$new) { echo "value=\"".$article->id."\""; }?>>

		<div class="form-group" id="titleGroup">
			<label class="control-label col-sm-3" for="title">Title:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="title" placeholder="Enter Title" name="title" <?php if(!$new) { echo "value=\"".$article->title."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="content">Content:</label>
			<div class="col-sm-9">
				<textarea class="form-control" rows="30" id="narrative" placeholder="Enter Content" name="content"><?php if(!$new) { echo $article->content; }?></textarea>
				<div class="help-block">Use Markdown to specify formatting. <a href="<?php echo base_url();?>meta/view/markdown" target="_blank">Help is available</a>. Click below to preview content.</div>
				<button type="button" class="btn btn-default" id="markdownPreview">Preview Below</button>
				<div id="markdownPreviecategory_idea"></div>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="posted_date">Posted Date:</label>
			<div class="col-sm-9">
				<input type="date" class="form-control" id="posted_date" placeholder="Enter Date of article" name="posted_date" <?php if(!$new) { echo "value=\"".$article->posted_date."\""; } else { echo "value=\"".date("Y-m-d")."\""; } ?>>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-3" for="category_id">Category:</label>
			<div class="col-sm-9">
				<select class="form-control selectpicker" id="category_id" name="category_id" data-live-search="true">
					<?php
					if($article->category_id == null) {
						echo "<option value=\"null\" selected>Unknown</option>";
					} else {
						echo "<option value=\"null\">Unknown</option>";
					}

					foreach($categories as $category_id) {
						if($category_id->id == $article->category_id) {
							echo "<option value=\"".$category_id->id."\" selected>(".$category_id->id.") ".$category_id->name."</option>";
						} else {
							echo "<option value=\"".$category_id->id."\">(".$category_id->id.") ".$category_id->name."</option>";
						}
						
					}

					?>
				</select>
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
				<button type="button" class="btn btn-primary" id="saveBasic">Save article</button>
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