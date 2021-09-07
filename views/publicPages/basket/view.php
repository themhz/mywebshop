<!-- Main jumbotron for a primary marketing message or call to action -->


<h2 class="display-6 text-center mb-4">Basket items</h2>

<table class="table table-bordered" id="basket">
  <tbody></tbody>
</table>
<hr>
<?php //print_r($paymentMethods); ?>


<hr>
<?php //print_r($shippingMethods); ?>

<script>
  let paymentMethods = JSON.parse('<?php echo json_encode($paymentMethods); ?>');
  let shippingMethods = JSON.parse('<?php echo json_encode($shippingMethods); ?>');

  document.addEventListener('readystatechange', function(evt) {
    if (evt.target.readyState == "complete") {
      let b = new Basket('basket');
      b.loadBasket();

        console.log(paymentMethods);
        console.log(shippingMethods);
    }
  });

</script>