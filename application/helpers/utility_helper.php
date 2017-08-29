<?php
function asset_url(){
   return base_url().'assets/';
}

function picture_url(){
   return base_url().'assets/pictures';
}

function preprocessMarkdown($input) {
	$input = str_replace("%asset_url%", asset_url(), $input);
	$input = str_replace("%picture_url%", picture_url(), $input);
	$input = str_replace("%base_url%", base_url(), $input);

	return $input;
}