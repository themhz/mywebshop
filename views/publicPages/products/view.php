<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
  <div class="container">
    <h1 class="display-3">Products </h1>
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
    <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
  </div>
</div>