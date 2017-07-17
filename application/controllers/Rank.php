<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Rank extends CI_Controller {

	public function listAll() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('rank_model');
		$rank_data = $this->rank_model->getAll();

		$data = array(
			'rank_data' => $rank_data,
			'loggedIn' => $loggedIn
		);

		$this->load->view('header', array(
			"title" => "List: Rank - Dover Rank Memorial Project"));
		$this->load->view('rank_list_view', $data);
		$this->load->view('footer');
	}

	/**
	*	Displays the edit page of the given rank
	*/
	public function edit($id = null) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn || $id==null) {
			$this->load->model('rank_model');

			//is an rank being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true
				);

				$this->load->view('header', array("title" => "Creating: Rank - Dover Rank Memorial Project"));
				$this->load->view('rank_edit_view', $data);
				$this->load->view('footer');

			//editing rather than creating
			} else {		
				$rank = $this->rank_model->getRank($id);
				
				if(count($rank) == 0) {
					redirect("rank/listAll");
				}
				$data = array(
					'rank' => $rank[0],
					'loggedIn' => $loggedIn,
					'new' => false
				);

				$this->load->view('header', array("title" => "Editing: ".$rank[0]->name." - Dover Rank Memorial Project"));
				$this->load->view('rank_edit_view', $data);
				$this->load->view('footer');

			}

		} else {
			redirect("rank/listAll");
		}

	}


	/**
	* Handles the updating of an rank
	*/
	public function doUpdate() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();

			//var_dump($basicForm);

			$this->load->model('rank_model');

			if($basicForm['id']=="") {
				//add new update
				$result = $this->rank_model->addRank($basicForm);
			} else {
				//edit update
				$result = $this->rank_model->editRank($basicForm);
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
	*	Deletes a rank
	*/
	public function delete($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('rank_model');
			$result = $this->rank_model->deleteRank($id);
			//if the update worked
			if($result["type"] == "success") {
				//var_dump($result);
				redirect("rank/listAll");
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
