<?php
namespace mywebshop\models;
use mywebshop\components\core\Model;

class Order_items extends Model
{
    private int $id;
    private int $order_id;
    private int $product_id;
    private float $amount;
    private float $amount_with_tax;
    private Date $regdate;

    /**
     * @param $id
     * @param $order_id
     */
    public function __construct($id, $order_id)
    {
        $this->id = $id;
        $this->order_id = $order_id;
    }

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setId(int $id): void
    {
        $this->id = $id;
    }

    /**
     * @return int
     */
    public function getOrderId(): int
    {
        return $this->order_id;
    }

    /**
     * @param int $order_id
     */
    public function setOrderId(int $order_id): void
    {
        $this->order_id = $order_id;
    }

    /**
     * @return int
     */
    public function getProductId(): int
    {
        return $this->product_id;
    }

    /**
     * @param int $product_id
     */
    public function setProductId(int $product_id): void
    {
        $this->product_id = $product_id;
    }

    /**
     * @return float
     */
    public function getAmount(): float
    {
        return $this->amount;
    }

    /**
     * @param float $amount
     */
    public function setAmount(float $amount): void
    {
        $this->amount = $amount;
    }

    /**
     * @return float
     */
    public function getAmountWithTax(): float
    {
        return $this->amount_with_tax;
    }

    /**
     * @param float $amount_with_tax
     */
    public function setAmountWithTax(float $amount_with_tax): void
    {
        $this->amount_with_tax = $amount_with_tax;
    }

    /**
     * @return Date
     */
    public function getRegdate(): string
    {
        if(empty($this->regdate)){
            $date = new \DateTime();
            return $date->format('Y/m/d H:i:s');
        }

        return $this->regdate;

    }

    /**
     * @param Date $regdate
     */
    public function setRegdate(Date $regdate): void
    {
        $this->regdate = $regdate;
    }


}