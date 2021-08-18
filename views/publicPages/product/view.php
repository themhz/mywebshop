<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
  <div class="container">
    <h1 class="display-3">Product </h1>
    <p>
    <table class="table">


      <?php foreach ($params as $rows) {
        echo "<tr>";

        echo "<td><img style='width:150px;' src='userfiles/$rows->image'/> </td>";
        echo "<td>$rows->id </td>";
        echo "<td>$rows->name </td>";
        echo "<td>$rows->description </td>";
        echo "<td>$rows->price </td>";
        echo "</tr>";
      }
      //print_r($params);
      ?>

    </table>
    </p>
    <button class="btn btn-primary btn-lg" onclick="addToBasket()">add to basket</button>
    <a class="btn btn-primary btn-lg" href="basket">go to basket</a>
  </div>
</div>

<script>
  function addToBasket() {
    let id = '<?= $params[0]->id ?>';
    let name = '<?= $params[0]->name ?>';
    let item = {
      'id': id,
      'name': name,
      'qty': 1
    };

    let basket = localStorage.getItem('basket') ? JSON.parse(localStorage.getItem('basket')) : [];

    
    //Basket doesnt have items
    if (basket.length == 0) {
      localStorage.setItem('basket', JSON.stringify([item]));
      return;

    } else {

      //Check if item exists
      for (i = 0; i < basket.length; i++) {
        if (basket[i].id == id) {
          basket[i].qty++;
          localStorage.removeItem('basket');
          localStorage.setItem('basket', JSON.stringify(basket));
          return;
        }
      }

      //Item does not exist
      basket.push(item);
      localStorage.removeItem('basket');
      localStorage.setItem('basket', JSON.stringify(basket));
      return;

    }

  }
</script>