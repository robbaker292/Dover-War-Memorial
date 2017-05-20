<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Relation extends CI_Controller {

	public function listAll() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('relation_model');
		$relation_data = $this->relation_model->getAll();

		$data = array(
			'relation_data' => $relation_data,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "List: Relation - Dover War Memorial Project"));
		$this->load->view('relation_list_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Displays the edit page of the given relation
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {
			$this->load->model('relation_model');

			//is an relation being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: Relation - Dover War Memorial Project"));
				$this->load->view('relation_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {		
				$relation = $this->relation_model->getRelation($id);
				
				if(count($relation) == 0) {
					redirect("relation/listAll");
				}
				$data = array(
					'relation' => $relation[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: ".$relation[0]->name." - Dover War Memorial Project"));
				$this->load->view('relation_edit_view', $data);
				$this->load->view('footer');

			}

		} else {
			redirect("relation/listAll");
		}

	}


	/**
	* Handles the updating of an relation
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			//var_dump($basicForm);

			$this->load->model('relation_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->relation_model->addRelation($basicForm);
			} else {
				//edit update
				$result = $this->relation_model->editRelation($basicForm);
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

}
