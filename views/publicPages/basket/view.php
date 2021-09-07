<!-- Main jumbotron for a primary marketing message or call to action -->


<h2 class="display-6 text-center mb-4">Basket items</h2>


<table class="table table-bordered" id="basket">
  <tbody></tbody>
</table>
<hr>------------------------</hr>
<?php print_r($paymentMethods); ?>
<hr>------------------------</hr>
<?php print_r($shippingMethods); ?>

<script>
  document.addEventListener('readystatechange', function(evt) {
    if (evt.target.readyState == "complete") {
      let b = new Basket('basket');
      b.loadBasket();
    }
  });

</script>