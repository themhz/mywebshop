<?php
namespace mywebshop\models;
use mywebshop\components\core\Model;
use mywebshop\models\Products;

use \DateTime;

class Orders extends Model
{
    public int $id;
    public int $user_id;    
    public string $shipping_address;
    public string $shipping_postcode;
    public int $shipping_location_id;
    public int $payment_method_id;
    public int $shipment_method_id;
    public float $amount;
    public float $amount_with_tax;
    public DateTime $regdate;

    public function __construct()
    {
        parent::__construct('Order');
    }

    public function create($basket) : int{
        //print_r($basket);
        $this->user_id = -1; //unknown or not logged in-1
        $this->shipping_address = $basket["address"]->address;
        $this->shipping_postcode= $basket["zipcode"]->zipcode;
        $this->shipping_location_id = $basket["location"]->location;
        $this->payment_method_id = $basket["paymentMethod"]->paymentMethod;
        $this->shipment_method_id = $basket["shippingMethod"]->shippingMethod;
        //$this->amount;
//        $this->amount_with_tax;
//
        $this->calculateTotalCost($basket);
        print_r($this);

        //return $this->insert();
        return 0;
    }

    public function calculateTotalCost($basket){
        $price = 0;
        foreach($basket["products"] as $product){
            $price += $product->price * $product->qty;
        }
        $this->amount =$price;
    }


}
