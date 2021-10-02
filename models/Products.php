<?php

namespace mywebshop\models;
use mywebshop\components\core\Model;
use \DateTime;

class Products extends Model
{
    public int $id;
    public string $name;
    public string $description;
    public float $price;
    public int $stock;
    public int $enabled;
    public int $width;
    public int $height;
    public int $length;
    public int $weight;
    public int $deleted;
    public DateTime $regdate;

    public function __construct()
    {
        parent::__construct('products');
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
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @param string $name
     */
    public function setName(string $name): void
    {
        $this->name = $name;
    }

    /**
     * @return string
     */
    public function getDescription(): string
    {
        return $this->description;
    }

    /**
     * @param string $description
     */
    public function setDescription(string $description): void
    {
        $this->description = $description;
    }

    /**
     * @return float
     */
    public function getPrice(): float
    {
        return $this->price;
    }

    /**
     * @param float $price
     */
    public function setPrice(float $price): void
    {
        $this->price = $price;
    }

    /**
     * @return int
     */
    public function getStock(): int
    {
        return $this->stock;
    }

    /**
     * @param int $stock
     */
    public function setStock(int $stock): void
    {
        $this->stock = $stock;
    }

    /**
     * @return int
     */
    public function getEnabled(): int
    {
        return $this->enabled;
    }

    /**
     * @param int $enabled
     */
    public function setEnabled(int $enabled): void
    {
        $this->enabled = $enabled;
    }

    /**
     * @return int
     */
    public function getWidth(): int
    {
        return $this->width;
    }

    /**
     * @param int $width
     */
    public function setWidth(int $width): void
    {
        $this->width = $width;
    }

    /**
     * @return int
     */
    public function getHeight(): int
    {
        return $this->height;
    }

    /**
     * @param int $height
     */
    public function setHeight(int $height): void
    {
        $this->height = $height;
    }

    /**
     * @return int
     */
    public function getLength(): int
    {
        return $this->length;
    }

    /**
     * @param int $length
     */
    public function setLength(int $length): void
    {
        $this->length = $length;
    }

    /**
     * @return int
     */
    public function getWeight(): int
    {
        return $this->weight;
    }

    /**
     * @param int $weight
     */
    public function setWeight(int $weight): void
    {
        $this->weight = $weight;
    }

    /**
     * @return int
     */
    public function getDeleted(): int
    {
        return $this->deleted;
    }

    /**
     * @param int $deleted
     */
    public function setDeleted(int $deleted): void
    {
        $this->deleted = $deleted;
    }

    /**
     * @return DateTime
     */
    public function getRegdate(): DateTime
    {
        return $this->regdate;
    }

    /**
     * @param DateTime $regdate
     */
    public function setRegdate(DateTime $regdate): void
    {
        $this->regdate = $regdate;
    }

    public function getProductsByCategory($requestparams){
        $sql = "SELECT a.id, a.name, a.description, min(a.price) price, d.image, c.name categoryName, c.id categoryId 
         FROM products a 
         inner join product_categories  b on  a.id = b.product_id
         inner join categories  c on c.id = b.category_id
         inner join product_images d on d.product_id = a.id
        ";

        if(isset($requestparams['category'])){
            $sql .= ' where c.id = :category_id ';
            $params = [':category_id' => $requestparams['category']];
        }
        $sql .= '  group by a.id 
        limit 0,10';
        
        return $this->customselect($sql, $params);
    }
        

}
