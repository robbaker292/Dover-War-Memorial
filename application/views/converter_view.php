<?php
defined('BASEPATH') OR exit('No direct script access allowed');

include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';
$Parsedown = new ParsedownExtra();
?>


	<h2><i class="fa fa-file-code-o" aria-hidden="true"></i> Converter</h2>
	<p>
	Attempts to convert HTML from the original site to Markdown for the new site. Useful for updates, articles etc.<br>
	There is already a  tool to convert casualties.
	</p>

	<div id="editing">

		<form id="basicForm">
			<div class="form-group" id="titleGroup">
				<label class="control-label col-sm-3" for="text">HTML input:</label>
				<div class="col-sm-9">
					<textarea class="form-control" rows="15" id="text" placeholder="Enter HTML to convert" name="text"></textarea>
				</div>
			</div>

			<div class="form-group" id="titleGroup">
				<label class="control-label col-sm-3" for="result">Markdown result:</label>
				<div class="col-sm-9">
					<textarea class="form-control" rows="15" id="result" placeholder="Result will be shown here" name="result"></textarea>
				</div>
			</div>

			<div class="form-group">
				<div class="btn-group" role="group" aria-label="...">
					<button type="button" class="btn btn-primary" id="convert"><i class="fa fa-refresh" aria-hidden="true"></i> Convert</button>
				</div>		
			</div>

		</form>
	</div>
