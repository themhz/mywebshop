<?php
namespace mywebshop\views\pages\register;
use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\components\handlers\Register;

class Controller extends baseController{
    protected $app;
    public function __construct($app) {
        parent::__construct($app);
        $this->app = $app;
    }


    public function post(){
        $register = new Register($this->app);
        $register->register();
        //check if user email exists
        //if not register and login else return error

//        echo "register post";
//        print_r($this->app->request->body());
    }

    public function get(){

        $view = new view($this->app->request);
        echo $view->render('user', 'register', ["user"=> $this->app->user], "public");
    }

    public function put(){
        echo "put";
    }

    public function delete(){
        echo "delete";
    }
}