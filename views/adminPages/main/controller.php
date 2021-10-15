<?php
namespace mywebshop\views\adminPages\main;
use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\components\core\FileUploader;
use mywebshop\models\OrderItems;
use mywebshop\models\Orders;
use mywebshop\models\User;


class Controller extends baseController{
    
    public function __construct($app) {
        parent::__construct($app);
    }

    public function post()
    {        
        // $target_dir = $this->app->rootpath . DIRECTORY_SEPARATOR . 'SampleWebApp/views/' . DIRECTORY_SEPARATOR . 'publicPages' . DIRECTORY_SEPARATOR . 'userfiles' . DIRECTORY_SEPARATOR;
        // $fileUploader = new FileUploader($target_dir);
        // $fileUploader->multiupload();

         $view = new view($this->app->request);
         //echo $this->app->request->path();
        echo $view->render('main', 'main', [], 'admin');

    }

    public function get()
    {
        $orders = new Orders($this->app->user->id);
        $orders = $orders->select();

        $users = new User();
        $users = $users->select();

        $orderItemsHolder = [];

        foreach ($orders as $order){
            $orderItems = new OrderItems($order->id);
            $orderItemsHolder[$order->id] = $orderItems->select(["order_id ="=>$order->id]);

        }

        //$order_items->select([])

        $view = new view($this->app->request);
        echo $view->render('admin', 'main', ['user'=>$this->app->user, 'orders'=>$orders, 'orderitems'=>$orderItemsHolder, "users"=>$users], 'private');
    }


    public function put(){
        echo "put";
    }

    public function delete(){
        echo "delete";
    }
}
 