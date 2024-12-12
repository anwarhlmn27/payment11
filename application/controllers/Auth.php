<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct() { 
        parent::__construct(); 
        $this->load->library('session');
        $this->load->model('M_auth'); 
    }

	public function index() { 
        $this->form_validation->set_rules('email','Email','required|trim|valid_email'); 
        $this->form_validation->set_rules('password','Password','required|trim');

        if ($this->form_validation->run('login') == false) { 
            $this->load->view('login'); 
        } else { 
            $email = $this->input->post('email'); 
            $password = $this->input->post('password'); 
            $user = $this->M_auth->get_user_data($email); 
            
            if ($user) { 
                if (password_verify($password, $user['password'])) { 
                    $data = [ 
                        'email' => $user['email'], 
                        'role_id' => $user['role_id'],
                        'nama' => $user['nama'],
                        'nik_k' => $user['nik_k'],
                        'id_account' =>['id_account']
                    ]; 
                        
                    $this->session->set_userdata($data); 
                    
                    if ($user['role_id'] == 1) { 
                        redirect('page'); 
                    }elseif($user['role_id'] == 2){
                        redirect('page/user');
                    }else { 
                        redirect('Auth');
                    } 
                    $this->session->set_userdata($data); 
                    echo 'berhasil login'; 
                } else { 
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong password!</div>'); 
                    redirect('Auth'); 
                } 
            } 
            else { $this->session->set_flashdata('message', '<div class="alert alert-danger"alert">Email is not registered!</div>'); 
                redirect('auth'); 
            
            }
        }
    }

    function logout(){
        $this->session->sess_destroy();
        redirect('Auth','refresh');
    }
}
