<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
    public function index() {
        // $this->load->view('include/header');
        $this->load->view('home/index');
        // $this->load->view('include/footer');
    }    
    
}

/* End of file frontpage.php */
/* Location: ./application/controllers/frontpage.php */
