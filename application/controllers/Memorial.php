<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Memorial extends CI_Controller {

	public function listMain() {
		$this->load->model('memorial_model');

		$this->load->view('header');
		
		$casualty_data = $this->memorial_model->getCasualtiesFromMemorial(2);
		$this->load->view('casualty_list_view', array('casualty_data' => $casualty_data, 'item_name'=>'Dover War Memorial', 'item_id'=>2, 'item_type'=>'memorial'));

		$casualty_data = $this->memorial_model->getCasualtiesFromMemorial(1);
		$this->load->view('casualty_list_view', array('casualty_data' => $casualty_data, 'item_name'=>'Book of Remembrance', 'item_id'=>1, 'item_type'=>'memorial'));

		$this->load->view('footer');
	}

	public function detail($memId) {
		$this->load->model('memorial_model');

		$this->load->view('header');

		$memorial_data = $this->memorial_model->getMemorial($memId);
		$casualty_data = $this->memorial_model->getCasualtiesFromMemorial($memId);

		$this->load->view('memorial_view', 
			array('casualty_data' => $casualty_data, 'memorial_data'=>$memorial_data)
		);

		$this->load->view('footer');
	}

}
