<?php

foreach ($params as $rows) { ?>

    <div class="col-md-4">
        <div class="product-item">
            <div class="product-title">
                <a href="product"><?php echo $rows->name ?></a>
                <div class="ratting">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div>
            </div>
            <div class="product-image">
                <a href="product">
                    <img src="userfiles/products/<?php echo $rows->image ?>" alt="Product Image">
                </a>
                <div class="product-action">
                    <a href="#"><i class="fa fa-cart-plus"></i></a>
                    <a href="#"><i class="fa fa-heart"></i></a>
                    <a href="#"><i class="fa fa-search"></i></a>
                </div>
            </div>
            <div class="product-price">
                <h3><span>&euro;</span><?php echo $rows->price ?></h3>
                <a class="btn" href=""><i class="fa fa-shopping-cart"></i>προσθήκη στο καλάθι</a>
            </div>
        </div>
    </div>

<?php } ?>