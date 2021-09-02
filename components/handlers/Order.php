<?php

namespace mywebshop\components\handlers;
use mywebshop\components\handlers\Session;
use mywebshop\models\Products;

class Order
{
    private $id;

    //Creates the order id using the sessionid + datetimestamp to the milisecond
    public function __construct(Session $session)
    {
        $date = new \DateTime();
        $timestamp = $date->format('Y_m_d_H_i_s_ms_u');
        $timestamp = str_replace("_","",$timestamp);
        $this->id = $session->getId().$timestamp;
    }

    public function getId(): string
    {
        return $this->id;
    }

}