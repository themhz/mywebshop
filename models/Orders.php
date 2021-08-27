<?php

namespace mywebshop\models;
use mywebshop\components\core\Model;


use \DateTime;

class Orders extends Model
{
    public int $id;
    public int $user_id;    
    public string $shipping_address;
    public string $shipping_postcode;
    public int $shipping_location_id;
    public int $payment_location_id;
    public int $payment_method_id;
    public int $shipment_method_id;
    public float $amount;
    public float $amount_with_tax;
    public DateTime $regdate;

    public function __construct()
    {
        parent::__construct('Orders');
    }

    public function create(){

    }
        

}
