<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	/**
	* Logins the user in
	*/
	public function login() {
		//$this->load->model('user_model');
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			header('Location: '.base_url());
		} else {
			$this->load->view('header', array("title" => "Admin Login - Dover War Memorial Project"));

			$this->load->view('login_view', array("fail" => false));

			$this->load->view('footer');
		}
	}

	/**
	*	Handles the login system
	*/
	public function doLogin() {

		$user = $this->input->post('username');
		$pass = $this->input->post('password');

		$this->load->model('login_model');
		$result = $this->login_model->login($user, $pass);
		if($result[0]) {
			//login successful
			$this->session->token = $result[1];
			$this->session->user = $result[2];
			header('Location: '.base_url());

		} else {
			$this->load->view('header', array("title" => "Admin Login - Dover War Memorial Project"));

			$this->load->view('login_view', array("fail" => true));

			$this->load->view('footer');

		}
	}

	/**
	*	Logs a user out
	*/
	public function logout() {
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->user_model->logout($this->session->token);
			$this->session->unset_userdata('token'); //destroy token session
			$this->session->sess_destroy();
		}
		header('Location: '.base_url());
	}


}
