<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Casualty extends CI_Controller {

	public function index() {
		echo "<a href=\"memorial/listMain\">memorial/listMain</a> <br>";
		echo "<a href=\"war/listAll\">war/listAll</a> <br>";
		echo "<a href=\"casualty/view/1\">casualty/view/1</a> <br>";
	}

	/**
	*	Displays the details of the given casualty
	*/
	public function view($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('casualty_model');
		$casualty_data = $this->casualty_model->getCasualty($id);
		$regiment_data = $this->casualty_model->getRegimentService($id);
		$service_numbers = $this->casualty_model->getServiceNumbers($id);
		$commemorations = $this->casualty_model->getCommemorations($id);
		
		$slug = $casualty_data[0]->given_name."-".$casualty_data[0]->family_name;

		$data = array(
			'casualty_data' => $casualty_data[0],
			'regiment_data' => $regiment_data,
			'service_numbers' => $service_numbers,
			'commemorations' => $commemorations,
			"loggedIn" => $loggedIn
		);

		$this->load->view('header', array(
			"title" => $casualty_data[0]->given_name." ".$casualty_data[0]->family_name." - Dover War Memorial Project"));
		$this->load->view('casualty_view', $data);
		$this->load->view('footer');

		//redirect("Casualty/view/{$id}/{$str_slug}");
	}

	/**
	*	Displays the editing form of the given casualty
	*/
	public function edit($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$this->load->model('casualty_model');
			$this->load->model('general_model');

			$casualty_data = $this->casualty_model->getCasualtyBasic($id);

			$regiment_data = $this->casualty_model->getRegimentService($id);
			$service_numbers = $this->casualty_model->getServiceNumbers($id);
			$commemorations = $this->casualty_model->getCommemorations($id);
			
			$slug = $casualty_data[0]->given_name."-".$casualty_data[0]->family_name;

			$data = array(
				'casualty_data' => $casualty_data[0],
				'warList' => $this->general_model->getWars(),
				'commemorationLocationList' => $this->general_model->getCommemorationLocations(),
				'rankList' => $this->general_model->getRanks(),
				'countryList' => $this->general_model->getCountries(),
				'placeList' => $this->general_model->getPlaces(),

				'regiment_data' => $regiment_data,
				'service_numbers' => $service_numbers,
				'commemorations' => $commemorations,
				"loggedIn" => $loggedIn,
				"new" => false
			);

			$this->load->view('header', array(
				"title" => "Editing: ".$casualty_data[0]->given_name." ".$casualty_data[0]->family_name." - Dover War Memorial Project"));
			$this->load->view('casualty_edit_view', $data);
			$this->load->view('footer');


		} else {
			redirect("casualty/view/".$id);
		}
		
	}

	/**
	* Handles the updating of a casualty
	*/
	public function doUpdate() {
		echo "updating!";
	}

}
