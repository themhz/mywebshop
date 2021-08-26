<?php

namespace mywebshop\views\publicPages\test;

use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\components\handlers\FileUploader;
use mywebshop\models\Categories;

use mywebshop\models\Orders;

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

        $products = new Orders();
        echo "<pre>";
        print_r($products->selectWithRefs(['locatons.id = '=> 1]));
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
