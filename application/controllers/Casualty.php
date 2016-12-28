<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Casualty extends CI_Controller {

	public function index() {
		echo "<a href=\"casualty/listMemorials\">casualty/listMemorials</a> <br>";
		echo "<a href=\"casualty/listWars\">casualty/listWars</a> <br>";
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

	public function listWars() {
		$this->load->model('casualty_model');

		$this->load->view('header');
		
		$casualty_data = $this->casualty_model->getCasualtiesFromWar(1);
		$this->load->view('casualty_list_view', array('casualty_data' => $casualty_data, 'item_name'=>'WW1'));

		$casualty_data = $this->casualty_model->getCasualtiesFromWar(2);
		$this->load->view('casualty_list_view', array('casualty_data' => $casualty_data, 'item_name'=>'WW2'));

		$this->load->view('footer');
	}

	public function listMemorials() {
		$this->load->model('casualty_model');

		$this->load->view('header');
		
		$casualty_data = $this->casualty_model->getCasualtiesFromMemorial(2);
		$this->load->view('casualty_list_view', array('casualty_data' => $casualty_data, 'item_name'=>'Dover War Memorial'));

		$casualty_data = $this->casualty_model->getCasualtiesFromMemorial(1);
		$this->load->view('casualty_list_view', array('casualty_data' => $casualty_data, 'item_name'=>'Book of Rememberance'));

		$this->load->view('footer');
	}

}
