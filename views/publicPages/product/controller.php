<?php
namespace mywebshop\views\publicPages\product;
use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\models\Products;

class Controller extends baseController{
    
    public function __construct($app) {
        parent::__construct($app);
    }

    public function post(){        
        
        echo "this is the products";
        $p = new Products();

        print_r($p->select());
        // $params = $this->app->request->body();
        // $view = new view($this->app);
        // echo $view->render('main', $this->app->request->path() , $params);
    }

    public function get(){
        
        $requestparams = $this->app->request->body();

         $params = [];
         $p = new Products();
         $sql = "SELECT * from products ";

        if(isset($requestparams['product_id'])){
            $sql .= ' where id = :product_id';
            $params = [':product_id' => $requestparams['product_id']];
        }
        
         $products = $p->customselect($sql, $params);
        
        
         $view = new view($this->app->request);
         echo $view->render('inner', $this->app->request->path() , $products);
    }

    public function put(){
        echo "put";
    }

    public function delete(){
        echo "delete";
    }
}