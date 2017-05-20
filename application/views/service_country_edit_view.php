<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();

?>
	<?php
	if ($new) {
		echo "<h2>New Service Country</h2>";
	} else {		
		echo "<h2>Editing Service Country</h2>";
	}	
	?>


<div id="editing">

	<form id="basicForm">
		<input type="hidden" id="id" name="id" <?php if(!$new) { echo "value=\"".$service_country->id."\""; }?>>

		<div class="form-group" id="titleGroup">
			<label class="control-label col-sm-3" for="new_id">id:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="new_id" placeholder="Enter ID" name="new_id" <?php if(!$new) { echo "value=\"".$service_country->id."\""; }?> >
				<div class="help-block">Use a two letter <a href="https://en.wikipedia.org/wiki/ISO_3166-1#Current_codes">ISO-3166 code</a>. If a historical country (e.g. Newfoundland), use QM-QZ, XA-XZ.</div>
			</div>
		</div>

		<div class="form-group" id="titleGroup">
			<label class="control-label col-sm-3" for="name">Name:</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" id="name" placeholder="Enter Name" name="name" <?php if(!$new) { echo "value=\"".$service_country->name."\""; }?> >
			</div>
		</div>

		<div class="form-group">
			<div class="btn-group" role="group" aria-label="...">
				<button type="button" class="btn btn-primary" id="saveBasic">Save Service Country</button>
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