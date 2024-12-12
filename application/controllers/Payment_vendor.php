<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payment_vendor extends CI_Controller {

	
	public function index()
	{
		$this->load->view('payment_vendor');
	}
}
