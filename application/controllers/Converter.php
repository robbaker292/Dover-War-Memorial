<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Converter extends CI_Controller {

	public function index() {

		$this->load->view('header', array(
			"title" => "Converter - Dover War Memorial Project"));
		$this->load->view('converter_view');
		$this->load->view('footer');

	}

	/**
	*	Attempts to convert HTML from the original site to Markdown for entry to the DB
	*/
	public function doConvert() {

		$basicForm = $this->input->post();
		$input = $basicForm["text"];

		$dom = new DOMDocument;
		$dom->loadHTML($input);

		$text = "";
		$ps = $dom->getElementsByTagName('p');
		foreach($ps as $p) {
			$textP = $p->textContent;
			//remove the massive whitespace at the start of each line on some articles
			$textArr = explode("\r\n", $textP);
			$newArr = array();
			foreach($textArr as $ta) {
				$ta = ltrim($ta);
				$newArr[] = $ta;
			}
			$textP = implode("\r\n", $newArr);

			$text .= "\n\n".$textP;
		}		

		$images = $dom->getElementsByTagName('img');
		$i = 0;
		foreach ($images as $image) {
			$src = "%asset_url%pictures/".$image->getAttribute('src');
			$alt = str_replace("\"", "", $image->getAttribute('alt'));

			$align = "";
			if($i % 3 == 0) {
				$align = ".left";
			} elseif($i % 3 == 1) {
				$align = ".middle";
			} else {
				$align = ".right";
			}

			$imageText = "![".$alt."](".$src." \"".$alt."\"){".$align."}";
			$text .= "\n".$imageText;

			$i++;
		}
		//var_dump($text);
		echo $text;
	}

}
