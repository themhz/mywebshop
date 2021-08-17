<?php
namespace mywebshop\views\publicPages\register;
use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;

class Controller extends baseController{
    public function __construct($app) {
        parent::__construct($app);
    }


    public function post(){
        echo "login post";
    }

    public function get(){
        //echo "this is the products";
        

                        
        $view = new view($this->app->request);
        echo $view->render('main', 'register', []);
    }

    public function put(){
        echo "put";
    }

    public function delete(){
        echo "delete";
    }
}