<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SiteUpdate extends CI_Controller {

	public function index($year = null) {
		if($year == null) {
			$year = date("Y");
		}

		$this->load->model('siteUpdate_model');
		
		$updates = $this->siteUpdate_model->getUpdatesFromYear($year);
		$updateFromYear = $this->siteUpdate_model->countUpdatesByYear();

		$data = array(
			'year' => $year,
			'updates' => $updates,
			'updateFromYear' => $updateFromYear
		);

		$this->load->view('header', array("title" => $year." Site Updates - Dover War Memorial Project"));
		$this->load->view('updates_view', $data);
		$this->load->view('footer');

	}

}
