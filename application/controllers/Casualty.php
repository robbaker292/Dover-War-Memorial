<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Casualty extends CI_Controller {

	public function index() {
		echo "<a href=\"memorial/listMain\">memorial/listMain</a> <br>";
		echo "<a href=\"war/listAll\">war/listAll</a> <br>";
		echo "<a href=\"casualty/view/1\">casualty/view/1</a> <br>";
	}

	public function view($id)
	{

		$this->load->model('casualty_model');
		$casualty_data = $this->casualty_model->getCasualty($id);
		$regiment_data = $this->casualty_model->getRegimentService($id);
		$service_numbers = $this->casualty_model->getServiceNumbers($id);
		$commemorations = $this->casualty_model->getCommemorations($id);

		$data = array(
			'casualty_data' => $casualty_data,
			'regiment_data' => $regiment_data,
			'service_numbers' => $service_numbers,
			'commemorations' => $commemorations
		);

		$this->load->view('casualty_view', $data);
	}

}
