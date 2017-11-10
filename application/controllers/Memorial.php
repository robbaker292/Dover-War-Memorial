<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Memorial extends CI_Controller {

	public function index() {
		redirect(site_url()."memorial/listMain");
	}

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

		//redirect if the item is deleted and we're logged out
		$deleted = $memorial_data[0]->deleted;
		if($deleted == "1" && !$loggedIn) {
			redirect(site_url());
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


	/**
	*	Displays the edit page of the given memorial
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {
			$this->load->model('memorial_model');

			//is an memorial being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: Memorial - Dover War Memorial Project"));
				$this->load->view('memorial_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {		
				$memorial = $this->memorial_model->getMemorial($id);
				
				if(count($memorial) == 0) {
					redirect("memorial/listMain");
				}
				$data = array(
					'memorial' => $memorial[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: ".$memorial[0]->name." - Dover War Memorial Project"));
				$this->load->view('memorial_edit_view', $data);
				$this->load->view('footer');

			}

		} else {
			redirect("memorial/listMain");
		}

	}


	/**
	* Handles the updating of an memorial
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			var_dump($basicForm);

			$this->load->model('memorial_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->memorial_model->addMemorial($basicForm);
			} else {
				//edit update
				$result = $this->memorial_model->editMemorial($basicForm);
			}

			if($basicForm['mainOrder'] == "") {
				$basicForm['mainOrder'] = null;
			}


			//if the update worked
			if($result["type"] == "success") {
				//store the result data
				$this->session->set_flashdata($result);
				echo json_encode($result);
			} else {
				//output the error message :(
				header('HTTP/1.1 500 Internal Server Error');
       			header('Content-Type: application/json; charset=UTF-8');
        		die(json_encode($result));
			}

		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
		
	}

	/**
	*	Deletes a memorial
	*/
	public function delete($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('memorial_model');
			$result = $this->memorial_model->deleteMemorial($id);
			//if the update worked
			if($result["type"] == "success") {
				//var_dump($result);
				redirect("memorial/view/".$id);
			} else {
				//output the error message :(
				header('HTTP/1.1 500 Internal Server Error');
	   			header('Content-Type: application/json; charset=UTF-8');
	    		die(json_encode($result));
			}
		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
	}

	/**
	*	Restores a memorial
	*/
	public function restore($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('memorial_model');
			$result = $this->memorial_model->restoreMemorial($id);
			redirect("memorial/view/".$id);
		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
	}


	/**
	* Lists all the memorials
	*/
	public function map() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$data = array(
			"loggedIn" => $loggedIn
		);

		$this->load->view('header', array("title" => "Memorial Map - Dover War Memorial Project"));
		$this->load->view('memorial_map_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Gets the map data
	*/
	public function getMapData() {
		$this->load->model('memorial_model');
		$memorials = $this->memorial_model->getMemorialsWithCoords(true);
		echo json_encode($memorials);

	}

}
