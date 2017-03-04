<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Search extends CI_Controller {

	public function index($type = null, $term = null, $options = null, $page = 1) {
		$resultsPerPage = 20;

		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		if($term == null || $options == null) {
			//load default view
			$this->load->view('header', array('title' => "Search - Dover War Memorial Project"));
			$this->load->view('search_view', array('results' => false));
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

			$this->load->view('header', array('title' => "Search - Dover War Memorial Project"));
			$this->load->view('search_view', array(
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
			//var_dump($optionsArr);

			$this->load->model('search_model');
			$result = $this->search_model->performDataSearch($optionsArr);

			$resultCount = count($result);
			$pageCount = (int) ceil($resultCount/$resultsPerPage);

			if($page > $pageCount) {
				$page = $pageCount;
			}

			$result = array_splice($result, ($page-1)*$resultsPerPage, $resultsPerPage);

			$this->load->view('header', array('title' => "Search - Dover War Memorial Project"));
			$this->load->view('search_view', array(
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
			//var_dump($term);
			//var_dump($options);
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
