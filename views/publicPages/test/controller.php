<?php

namespace mywebshop\views\publicPages\test;

use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\components\handlers\FileUploader;
use mywebshop\models\Categories;

use mywebshop\models\Orders;
use mywebshop\models\Products;

class Controller extends baseController
{

    public function __construct($app)
    {
        parent::__construct($app);
    }

    public function post()
    {
      
    }

    public function get()
    {

        $products = new Products();
        echo "<pre>";
        //print_r($products->selectWithRefs(['locatons.id = '=> 1]));
        print_r($products->select([], ['id'=>'desc', 'price'=>'desc']));
        echo "</pre>";
    }

    public function put()
    {
        echo "put";
    }

    public function delete()
    {
        echo "delete";
    }

    public function getmenu()
    {

        
    }
}
