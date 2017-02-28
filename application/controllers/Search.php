<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Search extends CI_Controller {

	public function index($term = null, $options = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		if($term == null || $options == null) {
			//load default view
			$this->load->view('header', array('title' => "Search - Dover War Memorial Project"));
			$this->load->view('search_view', array('results' => false));
			$this->load->view('footer');
		} else {
			//load search results

			$optionsArr = explode("-", $options);
			$this->load->model('search_model');
			$result = $this->search_model->getSearchResults($term, $optionsArr);

			$this->load->view('header', array('title' => "Search - Dover War Memorial Project"));
			$this->load->view('search_view', array(
				'results' => true,
				'searchResults' => $result,
				'term' => $term,
				'options' => $optionsArr
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

		$options = implode("-", $basicForm["options"]);
		$term = $basicForm["term"];
		//var_dump($term);
		//var_dump($options);

		redirect(base_url()."search/index/".$term."/".$options);
	}

}
