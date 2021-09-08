<?php

namespace mywebshop\views\publicPages\basket;

use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\components\handlers\FileUploader;
use mywebshop\components\handlers\Session;
use mywebshop\models\Categories;
use mywebshop\components\handlers\WebServiceCaller;
use mywebshop\components\handlers\Order;
use mywebshop\models\Order_items;
use mywebshop\models\PaymentMethods;
use mywebshop\models\ShippingMethods;
use mywebshop\models\Locations;

use SampleWebApp\models\Products;


class Controller extends baseController
{
    private $view;

    public function __construct($app)
    {
        parent::__construct($app);
        $this->view = new view($this->app->request);
    }

    public function post()
    {

        $session = new Session();
        //Calculate total budget
        $products = $this->app->request->body();

        //print_r($session->getAll());
//        foreach($products as $product){
//            echo $product->id."\n";
//            echo $product->name."\n";
//            echo $product->qty."\n";
//            echo $product->price."\n";
//        }

        $order = new Order($this->app->session);
        $order->addProducts($products);
        //echo $order->getId();
//
//        $order_items = new Order_items(1, 2);
//        echo $order_items->getRegdate();

        //$wsc = new WebServiceCaller();
        //echo $wsc->send($products, $products);

    }

    public function get()
    {

        $paymentMethods = new PaymentMethods();
        $shippingMethods = new ShippingMethods();
        $locations = new Locations();
        $locations =  $locations->select([],["nomos"=>"asc", "dimos"=> "asc"]);


        echo $this->view->render('main', 'basket', ["paymentMethods"=>$paymentMethods->select(), "shippingMethods" => $shippingMethods->select(), "locations" =>$locations], 'public');
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


        $categories = new Categories();
        $data = $categories->select();        
        $menu = [];

        foreach ($data as $row) {            
            $menu[] = ['id' => $row->id, 'parent_id' => $row->parent_id, 'name' => $row->name, 'children' => []];            
        }

        echo json_encode($menu);
    }
}
