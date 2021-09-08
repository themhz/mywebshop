<?php

namespace mywebshop\components\handlers;
use mywebshop\components\handlers\Session;
use mywebshop\models\Products;
use mywebshop\models\Order_items;

class Order
{
    private $id;
    private array $order_items;

    //Creates the order id using the sessionid + datetimestamp to the milisecond
    public function __construct(Session $session)
    {
        $date = new \DateTime();
        $timestamp = $date->format('Y_m_d_H_i_s_ms_u');
        $timestamp = str_replace("_","",$timestamp);
        $this->id = $session->getId().$timestamp;
    }

    public function addProducts($items){

        $products = new Products();
        foreach($items as $item){
            //$orderItems = new Order_items();
            //$orderItems->setOrderId($product->id);
            //$orderItems->setOrderId($orderid);
            $product = $products->select(["id ="=>$item->id], [])[0];

            echo $this->id."\n";
            echo $product->id."\n";
            echo $product->price."\n";

        }

        //die();
        //$order_items

    }

    public function getId(): string
    {
        return $this->id;
    }

}