<?php
namespace mywebshop\views\adminPages\users;
use mywebshop\components\core\Controller as baseController;
use mywebshop\components\View;

class Controller extends baseController{
    
    public function __construct($app) {
        parent::__construct($app);
    }

    public function post(){        
        
      
    }

    public function get(){
        echo "users";
        // $params = $this->app->body();
        // $view = new view($this->request->app);
        // echo $view->render('main', $this->app->request->path() , $params);
    }

    public function put(){
        echo "put";
    }

    public function delete(){
        echo "delete";
    }
}
 