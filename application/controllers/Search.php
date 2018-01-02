<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include APPPATH . 'third_party/Parsedown.php';
include APPPATH . 'third_party/ParsedownExtra.php';

class Search extends CI_Controller {

	/**
	*	Samples the text and highlights the search term
	*/
	private function sampleContent($text, $term) {
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

	public function index($type = null, $term = null, $options = null, $page = 1) {
		$Parsedown = new ParsedownExtra();
		$resultsPerPage = 20;
		$wordsPerResult = 40;
		$this->load->model('general_model');
		$this->load->helper('text');

		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		if($term == null || $options == null) {
			//load default view
			$this->load->view('header', array('title' => "Search - Dover War Memorial Project"));

			$data = array(
				'warList' => $this->general_model->getWars(),
				'commemorationLocationList' => $this->general_model->getCommemorationLocations(),
				'regimentList' => $this->general_model->getRegiments(),
				'rankList' => $this->general_model->getRanks(),
				'countryList' => $this->general_model->getCountries(),
				'placeList' => $this->general_model->getPlaces(),
				'service_numbers' => $this->general_model->getServiceNumbers(),
				'results' => false
			);

			$this->load->view('search_view', $data);
			$this->load->view('footer');
		} else if($type == "text") {
			//load search results

			$term = urldecode($term);

			$optionsArr = explode("-", $options);
			$this->load->model('search_model');
			$result = $this->search_model->getSearchResults($term, $optionsArr);

			$resultCount = count($result);
			$pageCount = (int) ceil($resultCount/$resultsPerPage);

			if($page > $pageCount) {
				$page = $pageCount;
			}

			$result = array_splice($result, ($page-1)*$resultsPerPage, $resultsPerPage);

			//highlight terms and limit to 40 words
			foreach ($result as $res) {
				$res->content = $this->sampleContent(strip_tags($Parsedown->text(preprocessMarkdown($res->content))),$term);
				//var_dump($res);
			}
			
			$this->load->view('header', array('title' => "Search - Dover War Memorial Project"));
			$this->load->view('search_view', array(
				'warList' => $this->general_model->getWars(),
				'commemorationLocationList' => $this->general_model->getCommemorationLocations(),
				'rankList' => $this->general_model->getRanks(),
				'regimentList' => $this->general_model->getRegiments(),
				'countryList' => $this->general_model->getCountries(),
				'placeList' => $this->general_model->getPlaces(),
				'service_numbers' => $this->general_model->getServiceNumbers(),
				'results' => true,
				'searchResults' => $result,
				'term' => $term,
				'options' => $optionsArr,
				'resultCount' => $resultCount,
				'pageCount' => $pageCount,
				'page' => $page
				));
			$this->load->view('footer');
		} else if($type == "data") {
			$optionsArr = array();
			parse_str($options, $optionsArr);

			if(isset($optionsArr["commemoration_location"])) {
				$optionsArr["commemoration_location.id"] = $optionsArr["commemoration_location"];
			}
			if(isset($optionsArr["regiment_service"])) {
				$optionsArr["regiment_service.id"] = $optionsArr["regiment_service"];
			}
			if(isset($optionsArr["service_numbers"])) {
				$optionsArr["service_number.service_number"] = $optionsArr["service_numbers"];
			}
			//var_dump($optionsArr);

			$this->load->model('search_model');
			$result = $this->search_model->performDataSearch($optionsArr);

			$resultCount = count($result);
			$pageCount = (int) ceil($resultCount/$resultsPerPage);

			if($page > $pageCount) {
				$page = $pageCount;
			}

			$result = array_splice($result, ($page-1)*$resultsPerPage, $resultsPerPage);

			//highlight terms
			foreach ($result as $res) {
				$res->content = substr(strip_tags($Parsedown->text(preprocessMarkdown($res->content))),0,400);
			}

			$this->load->view('header', array('title' => "Search - Dover War Memorial Project"));
			$this->load->view('search_view', array(
				'warList' => $this->general_model->getWars(),
				'commemorationLocationList' => $this->general_model->getCommemorationLocations(),
				'regimentList' => $this->general_model->getRegiments(),
				'rankList' => $this->general_model->getRanks(),
				'countryList' => $this->general_model->getCountries(),
				'placeList' => $this->general_model->getPlaces(),
				'service_numbers' => $this->general_model->getServiceNumbers(),
				'results' => true,
				'searchResults' => $result,
				'data' => $optionsArr,
				'options' => array(),
				'resultCount' => $resultCount,
				'pageCount' => $pageCount,
				'page' => $page
				));
			$this->load->view('footer');

		}


	}

	/**
	*	Takes the search data and formats it for the main index page. This allows bookmarking
	*/
	public function doSearch() {
		$basicForm = $this->input->post();
		//var_dump($basicForm);
		if(isset($basicForm["options"]) && $basicForm["term"]) {
			$options = implode("-", $basicForm["options"]);
			$term = $basicForm["term"];

			$term = str_replace('/','',$term);

			if($basicForm["termOptions"] == "allTerms") {
				$term = "+".implode(" +",explode(" ", $term));
			}

			//var_dump($basicForm);
			//var_dump($term);
			$page = 1;
			redirect(base_url()."search/index/text/".urlencode($term)."/".$options."/".$page);
		} else {
			//redirect to search page
			redirect(base_url()."search");
		}


	}

	/**
	*	Takes the form data from the "search by data" area
	*/
	public function doSearchData() {
		$basicForm = $this->input->post();
		$basicForm = array_filter($basicForm, function($value) { return $value !== ''; });

		if(count($basicForm) > 0) { //at least some results!
			$page = 1;
			redirect(base_url()."search/index/data/data/".http_build_query($basicForm)."/".$page);
		} else {
			//redirect to search page
			redirect(base_url()."search");
		}

		//var_dump($basicForm);


	}

}
