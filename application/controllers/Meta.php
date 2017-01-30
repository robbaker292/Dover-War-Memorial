<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Meta extends CI_Controller {

	/**
	*	Displays the home page
	*/
	public function index() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->view('header', array(
			"title" => "Markdown Help - Dover War Memorial Project"));
		$this->load->view('static_home_view');
		$this->load->view('footer');
	}

	/**
	*	Displays the markdown help
	*/
	public function markdown() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->view('header', array(
			"title" => "Markdown Help - Dover War Memorial Project"));
		$this->load->view('static_markdown_view');
		$this->load->view('footer');

	}


}
