<?php

namespace mywebshop\views\pages\login;

use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\components\handlers\Session;

class Controller extends baseController
{
    public function __construct($app)
    {
        parent::__construct($app);
    }

    public function post()
    {



        //$register = new UserRegister();
        // $params = $this->app->body();

        //  echo '<pre>';
        //   print_r($this->app->session['userdetails']);
        // //  print_r($_SESSION);
        //   echo '<pre>';
        //   die();

        //$view = new view($this->app);
        //echo "ok";
        //die();
        //echo $view->render('main', 'main', $this->app->user, 'public');
        header('Location: ' . 'main');
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
