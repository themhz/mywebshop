<?php

namespace mywebshop\views\pages\login;

use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\components\handlers\Session;
use mywebshop\components\handlers\Authenticate;

class Controller extends baseController
{
    public function __construct($app)
    {
        parent::__construct($app);
    }

    public function post()
    {



         //$params = $this->app->request->body();
        $authenticate = new Authenticate($this->app);
        $result = $authenticate->checkUserNameAndPassword();
        if($result==true){
            header('Location: ' . 'main');
        }else{
            $view = new view();
            echo $view->render('user', 'error', ["user"=>$this->app->user, "error"=>"wrong username or password"], 'public');
        }


    }

    public function get()
    {

         $this->checkLogout();
      
         $view = new view();
         echo $view->render('user', 'login', [ "user"=>$this->app->user], 'public');
    }

    public function put()
    {
        echo "put";
    }

    public function delete()
    {
        echo "delete";
    }


    public function checkLogout()
    {       
        $params = (object)$this->app->request->body();
        
        if (isset($params->logout) && $params->logout == 1) {
            $session = new Session();
            $session->clear();
            header('Location: ' . 'main');
        }
    }
}
