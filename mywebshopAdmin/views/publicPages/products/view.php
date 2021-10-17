<div class="row" id="products">
    <?php
    foreach ($params[0] as $rows) { ?>

        <div class="col-md-4">
            <div class="product-item">
                <div class="product-title">
                    <a href="product?product_id=<?php echo $rows->id ?>"><?php echo $rows->name ?></a>
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
                    <button class="btn" onclick="addToBasket('<?php echo $rows->id ?>', '<?php echo $rows->name ?>','<?php echo $rows->price ?>')"><i class="fa fa-shopping-cart"></i>προσθήκη στο καλάθι</button>
                </div>
            </div>
        </div>

    <?php } ?>

</div>

<!-- Pagination Start -->
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item ">
            <button class="page-link" tabindex="-1" onclick="showMore()" id="pageinator">Σελίδες </button>
        </li>
    </ul>
</nav>
<script>

    let page = 1;
    let pages = <?php echo $params[1] ?>;
    setShowMoreButtonText();
    function showMore() {
        page++;
        var xhttp = new XMLHttpRequest();

        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                let response = JSON.parse(this.responseText);
                addProducts(response);
                setShowMoreButtonText();
            }
        };

        let category = gup('category', location.href);
        if (category !== null) {
            xhttp.open("GET", window.location.origin + `/products?method=getProducts&category=${category}&page=${page}`, true);
        } else {
            xhttp.open("GET", window.location.origin + `/products?method=getProducts&page=${page}`, true);
        }

        xhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        xhttp.send();

    }

    function addProducts(response) {

        for (let i = 0; i < response.length; i++) {
            document.querySelector("#products").innerHTML += getHtml(response[i]);
        }

    }

    function getHtml(item) {

        return `
                <div class="col-md-4">
                <div class="product-item">
                    <div class="product-title">
                        <a href="product?product_id=${item.id}">${item.name}</a>
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
                            <img src="userfiles/products/${item.image}" alt="Product Image">
                        </a>
                        <div class="product-action">
                            <a href="#"><i class="fa fa-cart-plus"></i></a>
                            <a href="#"><i class="fa fa-heart"></i></a>
                            <a href="#"><i class="fa fa-search"></i></a>
                        </div>
                    </div>
                    <div class="product-price">
                        <h3><span>&euro;</span>${item.price}</h3>
                        <a class="btn" href=""><i class="fa fa-shopping-cart"></i>προσθήκη στο καλάθι</a>
                    </div>
                </div>
            </div>
        `;
    }

    function setShowMoreButtonText() {
        pages = <?php echo $params[1] ?> - page;
        if (pages >= 0) {
            document.querySelector("#pageinator").innerHTML = `${pages} Σελίδες `;
        } else {
            pages = pages + page;
        }
    }

    function gup(name, url) {
        if (!url) url = location.href;
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regexS = "[\\?&]" + name + "=([^&#]*)";
        var regex = new RegExp(regexS);
        var results = regex.exec(url);
        return results == null ? null : results[1];
    }

    function addToBasket(id, name, price){
        basket.addToBasket(id, name, price);
    }
</script>


<!-- <div class="col-md-12">
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item ">
                <button class="page-link" tabindex="-1" onclick="showMore()">Show More</button>
            </li>
            <li class="page-item active"><a class="page-link" href="#"><?php echo $params[1] ?></a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item" disabled>
                <a class="page-link" href="#">Next</a>
            </li>
        </ul>
    </nav>
</div> -->
<!-- Pagination Start -->