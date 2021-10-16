<?php
namespace mywebshop\views\pages\register;
use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;

class Controller extends baseController{
    public function __construct($app) {
        parent::__construct($app);
    }


    public function post(){
        echo "register post";
        print_r($this->app->request->body());
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