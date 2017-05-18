<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Memorial extends CI_Controller {

	/**
	* Loads the main two memorials
	*/
	public function listMain() {
		$this->load->model('memorial_model');

		$this->load->view('header', array("title" => "Memorials - Dover War Memorial Project"));


		$this->load->view('memorial_list_view', array('item_name'=>'Dover War Memorial', 'item_id'=>1, 'item_type'=>'memorial'));
		$this->load->view('memorial_list_view', array('item_name'=>'Book of Remembrance', 'item_id'=>2, 'item_type'=>'memorial'));

		$this->load->view('footer');
	}

	/**
	* Loads the detail from a given memorial
	*/
	public function view($memId) {

		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('memorial_model');

		$memorial_data = $this->memorial_model->getMemorial($memId);

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
