<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class War extends CI_Controller {

	public function listAll() {
		$this->load->model('war_model');

		$this->load->view('header');
		
		$casualty_data = $this->war_model->getCasualtiesFromWar(1);
		$this->load->view('casualty_list_view', array('casualty_data' => $casualty_data, 'item_name'=>'WW1', 'item_type'=>'war'));

		$casualty_data = $this->war_model->getCasualtiesFromWar(2);
		$this->load->view('casualty_list_view', array('casualty_data' => $casualty_data, 'item_name'=>'WW2', 'item_type'=>'war'));

		$this->load->view('footer');
	}

}
