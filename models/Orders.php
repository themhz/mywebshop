<?php

namespace mywebshop\models;
use mywebshop\components\core\Model;
use \DateTime;

class Orders extends Model
{
    public int $id;
    public int $user_id;
    public float $amount;    
    public string $shipping_address;
    public string $shipping_postcode;
    public int $shipping_location_id;
    public int $payment_location_id;
    public int $payment_method_id;
    public int $shipment_method_id;
    public DateTime $regdate;

    public function __construct()
    {
        parent::__construct('Orders');
    }
        

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    

    /**
     * Get the value of user_id
     */ 
    public function getUser_id()
    {
        return $this->user_id;
    }

    /**
     * Set the value of user_id
     *
     * @return  self
     */ 
    public function setUser_id($user_id)
    {
        $this->user_id = $user_id;

        return $this;
    }

    /**
     * Get the value of amount
     */ 
    public function getAmount()
    {
        return $this->amount;
    }

    /**
     * Set the value of amount
     *
     * @return  self
     */ 
    public function setAmount($amount)
    {
        $this->amount = $amount;

        return $this;
    }

    /**
     * Get the value of shipping_address
     */ 
    public function getShipping_address()
    {
        return $this->shipping_address;
    }

    /**
     * Set the value of shipping_address
     *
     * @return  self
     */ 
    public function setShipping_address($shipping_address)
    {
        $this->shipping_address = $shipping_address;

        return $this;
    }

    /**
     * Get the value of shipping_postcode
     */ 
    public function getShipping_postcode()
    {
        return $this->shipping_postcode;
    }

    /**
     * Set the value of shipping_postcode
     *
     * @return  self
     */ 
    public function setShipping_postcode($shipping_postcode)
    {
        $this->shipping_postcode = $shipping_postcode;

        return $this;
    }

    /**
     * Get the value of shipping_location_id
     */ 
    public function getShipping_location_id()
    {
        return $this->shipping_location_id;
    }

    /**
     * Set the value of shipping_location_id
     *
     * @return  self
     */ 
    public function setShipping_location_id($shipping_location_id)
    {
        $this->shipping_location_id = $shipping_location_id;

        return $this;
    }

    /**
     * Get the value of payment_location_id
     */ 
    public function getPayment_location_id()
    {
        return $this->payment_location_id;
    }

    /**
     * Set the value of payment_location_id
     *
     * @return  self
     */ 
    public function setPayment_location_id($payment_location_id)
    {
        $this->payment_location_id = $payment_location_id;

        return $this;
    }

    /**
     * Get the value of payment_method_id
     */ 
    public function getPayment_method_id()
    {
        return $this->payment_method_id;
    }

    /**
     * Set the value of payment_method_id
     *
     * @return  self
     */ 
    public function setPayment_method_id($payment_method_id)
    {
        $this->payment_method_id = $payment_method_id;

        return $this;
    }

    /**
     * Get the value of shipment_method_id
     */ 
    public function getShipment_method_id()
    {
        return $this->shipment_method_id;
    }

    /**
     * Set the value of shipment_method_id
     *
     * @return  self
     */ 
    public function setShipment_method_id($shipment_method_id)
    {
        $this->shipment_method_id = $shipment_method_id;

        return $this;
    }

    /**
     * Get the value of regdate
     */ 
    public function getRegdate()
    {
        return $this->regdate;
    }

    /**
     * Set the value of regdate
     *
     * @return  self
     */ 
    public function setRegdate($regdate)
    {
        $this->regdate = $regdate;

        return $this;
    }
}
