<?php
namespace mywebshop\views\publicPages\products;
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
         $sql = "SELECT a.id, a.name, a.description, a.price, a.image, c.name categoryName, c.id categoryId FROM products a 
         inner join product_categories  b on  a.id = b.product_id
         inner join categories  c on c.id = b.category_id ";

        if(isset($requestparams['category'])){
            $sql .= ' where c.id = :category_id';
            $params = [':category_id' => $requestparams['category']];
        }
        
        //where c.id =:category_id

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