<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Memorial extends CI_Controller {

	/**
	* Lists all the memorials
	*/
	public function listMain() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('memorial_model');
		$mainMemorials = $this->memorial_model->getMemorialList(true);
		$otherMemorials = $this->memorial_model->getMemorialList(false);

		$this->load->model('meta_model');
		$meta = $this->meta_model->getMeta("memorialIndex");

		$data = array(
			'mainMemorials' => $mainMemorials,
			'otherMemorials' => $otherMemorials,
			'meta' => $meta[0],
			"loggedIn" => $loggedIn
		);

		$this->load->view('header', array("title" => "Casualty Index - Dover War Memorial Project"));
		$this->load->view('memorial_list_view', $data);
		$this->load->view('footer');
	}

	/**
	* Loads the detail from a given memorial
	*/
	public function view($memId, $name = null) {

		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('memorial_model');

		$memorial_data = $this->memorial_model->getMemorial($memId);

		//redirect if invalid url
		if(count($memorial_data) == 0) {
			redirect(site_url());
		}

		//rewrite url to be nicer
		if($name == null) {
			$name = urlencode($memorial_data[0]->name);
			redirect(site_url(uri_string()."/".$name));
		}

		$this->load->view('header', array("title" => $memorial_data[0]->name." - Dover War Memorial Project"));

		$data = array(
			'memorial_data'=>$memorial_data[0],
			'item_name'=>$memorial_data[0]->name,
			'item_id'=>$memId,
			'item_type'=>'memorial',
			"loggedIn" => $loggedIn
		);

		$this->load->view('memorial_view',$data);

		$this->load->view('footer');
	}

	/**
	*	 Displays a JSON list of casualties from the given memorial and with the given first letter
	*/
	public function getCasualtiesOfLetterFromMemorial($memorialId, $warId, $firstLetter) {
		$this->load->model('memorial_model');
		$casualty_data = $this->memorial_model->getCasualtiesOfLetterFromMemorialFromWar($memorialId, $warId, $firstLetter);
		echo json_encode($casualty_data);
	}

}
