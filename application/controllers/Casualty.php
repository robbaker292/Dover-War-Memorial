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
	public function view($id, $name = null) {

		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		$this->load->model('casualty_model');
		$casualty_data = $this->casualty_model->getCasualty($id);

		//redirect if invalid url
		if(count($casualty_data) == 0) {
			redirect(site_url());
		}

		//rewrite url to be nicer
		if($name == null) {
			$name = urlencode($casualty_data[0]->given_name."-".$casualty_data[0]->family_name);
			if(strlen($name) > 151) {
				$name = substr($name,0,150);
			}			
			redirect(site_url(uri_string()."/".$name));
		}

		//redirect if the item is deleted and we're logged out
		$deleted = $casualty_data[0]->deleted;
		if($deleted == "1" && !$loggedIn) {
			redirect(site_url());
		}

		$regiment_data = $this->casualty_model->getRegimentService($id);
		$service_numbers = $this->casualty_model->getServiceNumbers($id);
		$commemorations = $this->casualty_model->getCommemorations($id);
		$relation_data = $this->casualty_model->getRelations($id);
		
		//$slug = $casualty_data[0]->given_name."-".$casualty_data[0]->family_name;

		$data = array(
			'casualty_data' => $casualty_data[0],
			'regiment_data' => $regiment_data,
			'service_numbers' => $service_numbers,
			'commemorations' => $commemorations,
			'relation_data' => $relation_data,
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

			//is a new casualty being created?
			if($id == "-1") {
				$data = array(
					'loggedIn' => $loggedIn,
					'new' => true,
					'warList' => $this->general_model->getWars(),
					'commemorationLocationList' => $this->general_model->getCommemorationLocations(),
					'regimentList' => $this->general_model->getRegiments(),
					'rankList' => $this->general_model->getRanks(),
					'countryList' => $this->general_model->getCountries(),
					'placeList' => $this->general_model->getPlaces(),
				);
				$this->load->view('header', array(
					"title" => "Creating: Casualty - Dover War Memorial Project"));
				$this->load->view('casualty_edit_view', $data);
				$this->load->view('footer');

			} else {

				$casualty_data = $this->casualty_model->getCasualtyBasic($id);

				//redirect if invalid url
				if(count($casualty_data) == 0) {
					redirect(site_url());
				}

				$regiment_data = $this->casualty_model->getRegimentService($id);
				$service_numbers = $this->casualty_model->getServiceNumbers($id);
				$commemorations = $this->casualty_model->getCommemorations($id);
				$relation_data = $this->casualty_model->getRelations($id);
				$casualties = $this->casualty_model->getAllCasualties();
				$relationTypes = $this->casualty_model->getRelationTypes();

				$commemorationIds = array();
				foreach($commemorations as $id) {
					$commemorationIds[] = $id->id;
				}
				
				$regimentIds = array();
				foreach($regiment_data as $id) {
					$regimentIds[] = $id->id;
				}

				$data = array(
					'casualty_data' => $casualty_data[0],
					'warList' => $this->general_model->getWars(),
					'commemorationLocationList' => $this->general_model->getCommemorationLocations(),
					'regimentList' => $this->general_model->getRegiments(),
					'rankList' => $this->general_model->getRanks(),
					'countryList' => $this->general_model->getCountries(),
					'placeList' => $this->general_model->getPlaces(),
					'relations' => $relation_data,
					'regiment_data' => $regiment_data,
					'service_numbers' => $service_numbers,
					'commemorations' => $commemorations,
					'commemorationIds' => $commemorationIds,
					'regimentIds' => $regimentIds,
					'casualties' => $casualties,
					'relationTypes' => $relationTypes,
					"loggedIn" => $loggedIn,
					"new" => false
				);

				$this->load->view('header', array(
					"title" => "Editing: ".$casualty_data[0]->given_name." ".$casualty_data[0]->family_name." - Dover War Memorial Project"));
				$this->load->view('casualty_edit_view', $data);
				$this->load->view('footer');
			}

		} else {
			redirect("casualty/view/".$id);
		}
		
	}

	/**
	* Handles the updating of a casualty
	*/
	public function doUpdate($type) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {

			$basicForm = $this->input->post();
			//$basicForm = array("id" => "1", "given_name" => "Frank3", "DANGER" => "DANEGR");

			$id = -1;
			if(isset($basicForm['id'])) {
				$id = $basicForm['id'];
			}
			
			$this->load->model('casualty_model');

			//update casualty
			if($basicForm['id']=="") {
				//add new update
				$result = $this->casualty_model->updateCasualty(-1, $basicForm);
			} else {
				//edit update
				$result = $this->casualty_model->updateCasualty($id, $basicForm);
			}

			//if the update worked
			if($result["type"] == "success") {
				//store the result data
				$this->session->set_flashdata($result);
				echo json_encode($result);
				//direct to the relevant location
			//	if($type == 0) {
			//		redirect("casualty/edit/".$id."#saveResult");
			//	} else {
			//		redirect("casualty/view/".$id."#saveResult");
			//	}
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
	* Handles the updating of commemoration locations for a casualty
	*/
	public function doUpdateCommemorations($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$basicForm = $this->input->post("basicForm");

			$this->load->model('casualty_model');

			//update casualty
			$result = $this->casualty_model->updateCommemorations($id, $basicForm);

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
    		die(json_encode(array('area' => 'commemoration', 'type'=>'failure', 'message'=>'User is not logged in')));
		}

	}

	/**
	* Handles the updating of regiments for a casualty
	*/
	public function doUpdateRegiments($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$basicForm = $this->input->post("basicForm");

			$this->load->model('casualty_model');

			//update casualty
			$result = $this->casualty_model->updateRegiments($id, $basicForm);

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
    		die(json_encode(array('area' => 'regiment', 'type'=>'failure', 'message'=>'User is not logged in')));
		}

	}


	/**
	* Handles the updating of service numbers for a casualty
	*/
	public function doUpdateServiceNumbers($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$basicForm = $this->input->post("basicForm");

			$this->load->model('casualty_model');

			//update casualty
			$result = $this->casualty_model->updateServiceNumbers($id, $basicForm);

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
    		die(json_encode(array('area' => 'serivceNumber', 'type'=>'failure', 'message'=>'User is not logged in')));
		}

	}

	/**
	* Handles the updating of relations
	*/
	public function doUpdateRelations($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$basicForm = $this->input->post();
			if(count($basicForm) > 0) {

				//var_dump($basicForm);

				$this->load->model('casualty_model');

				//update casualty
				$result = $this->casualty_model->updateRelations($id, $basicForm);

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
			}			

		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'serivceNumber', 'type'=>'failure', 'message'=>'User is not logged in')));
		}

	}

	/**
	*	Returns the AJAX code to create the extra relation dropdowns
	*/
	public function createRelationDropdowns() {
		$this->load->model('casualty_model');
		$casualties = $this->casualty_model->getAllCasualties();
		$relationTypes = $this->casualty_model->getRelationTypes();

		echo "			<div class=\"relationOptions\">
				<div class=\"form-group\">
					<label class=\"control-label col-sm-3\" for=\"relations\">Current Relations:</label>
					<div class=\"col-sm-4\">
						<select class=\"form-control selectpicker\" name=\"relations[]\" data-live-search=\"true\" multiple data-max-options=\"1\" >";

							foreach($casualties as $rL) {
								echo "<option value=\"".$rL->id."\" data-subtext=\"Born ".$rL->date_of_birth."\">(".$rL->id.") ".$rL->given_name." ".$rL->middle_names." ".$rL->family_name."</option>";
							}

echo "
						</select>
					</div>
					<div class=\"col-sm-5\">
						<select class=\"form-control selectpicker\" name=\"relationType[]\" data-live-search=\"true\" multiple data-max-options=\"1\" >";
							foreach($relationTypes as $rL) {
								echo "<option value=\"".$rL->id."\">".$rL->name."</option>";
							}

echo "
						</select>
					</div>
				</div>
			</div>

			";
	}

	/**
	*	Deletes a casualty
	*/
	public function delete($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('casualty_model');
			$result = $this->casualty_model->deleteCasualty($id);
			//if the update worked
			if($result["type"] == "success") {
				//var_dump($result);
				redirect("casualty/view/".$id);
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
	*	Shows recently imported casualties
	*/
	public function uploaded() {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);

		if($loggedIn) {
			$this->load->model('casualty_model');
			$casualty_data = $this->casualty_model->getCasualtyRecentlyImported();

			$data = array(
				'casualty_data' => $casualty_data,
				"loggedIn" => $loggedIn
			);

			$this->load->view('header', array(
				"title" => "Recently Imported Casualties - Dover War Memorial Project"));
			$this->load->view('casualty_new_view', $data);
			$this->load->view('footer');
		} else {
			redirect();
		}
	}

	/**
	*	Restores a casualty
	*/
	public function restore($id) {
		//is the user logged in
		$loggedIn = $this->user_model->isLoggedIn($this->session->token);
		if($loggedIn) {
			$this->load->model('casualty_model');
			$result = $this->casualty_model->restoreCasualty($id);
			redirect("casualty/view/".$id);
		} else {
			//return error message :(
			header('HTTP/1.1 500 Internal Server Error');
   			header('Content-Type: application/json; charset=UTF-8');
    		die(json_encode(array('area' => 'main', 'type'=>'failure', 'message'=>'User is not logged in')));
		}
	}

}
