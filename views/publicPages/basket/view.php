<!-- Main jumbotron for a primary marketing message or call to action -->


<h2 class="display-6 text-center mb-4">Basket items</h2>


<table class="table table-bordered" id="basket" id="table">
  <tbody></tbody>
</table>


<script>
  document.addEventListener('readystatechange', function(evt) {
    if (evt.target.readyState == "complete") {
      loadBasket();
    }
  });

  function loadBasket() {
    let basket = localStorage.getItem('basket') ? JSON.parse(localStorage.getItem('basket')) : [];

    addrows(basket, ['id', 'name', 'qty', 'price', 'total'], 'basket');
    calculateTotals('basket');
  }

  function calculateTotals(tableid) {
    var table = document.getElementById(tableid)
    let total = 0;
    for (var i = 1, row; row = table.rows[i]; i++) {
      itemTotal = parseFloat(row.cells[2].innerHTML) * parseFloat(row.cells[3].innerHTML);
      total += itemTotal;
      row.cells[4].innerHTML = parseFloat(itemTotal) + '$';
    }
    var tr = document.createElement('tr');

    for (var c = 0; c < 5; c++) {
      var td = document.createElement('td');
      if (c == 4) {
        td.innerHTML = total + '$';
      }

      tr.appendChild(td);
    }


    table.tBodies[0].appendChild(tr);
  }


  function addrows(data, cols, tableid) {

    var self = this;
    var tabLines = document.getElementById(tableid); //Παίρνουμε τον πίνακα
    var cel = 0; //Μηδενίζουμε τον μετριτή κολόνας

    var tr = document.createElement('tr'); //Δημιουργούμε μια γραμμή πάνω στον πίνακα
    for (var c = 0; c < cols.length; c++) { //για κάθε κολόνα που έχουμε δηλώσει να εμφανίσουμε φτιάχνουμε ένα header στον πίνακα
      var th = document.createElement('th'); //Δημιουργούμε το header
      th.innerHTML = cols[c]; //το βάζουμε στο header
      tr.appendChild(th); //και το κάνουμε append στο tr την γραμμή
    }

    //document.getElementById("tbody").appendChild(tr);
    tabLines.tBodies[0].appendChild(tr);

    for (var j = 0; j < data.length; j++) { //Για κάθε εγγραφή μέσα στα δεδομένα που φέραμε σε μορφή json
      var tabLinesRow = tabLines.insertRow(j + 1); //τοποθετούμε μια γραμμή μέσα στον πίνακα
      for (var i = 0; i < cols.length; i++) { //Για κάθε μια από τις κολόνες μέσα στην λίστα μας
        var col1 = tabLinesRow.insertCell(cel); //Ε η φάση της τοοποθέτησης
        for (var k = 0; k < Object.keys(data[j]).length; k++) { //Για κάθε κολόνα μέσα στην γραμμή            

          if (Object.keys(data[j])[k] == cols[i]) { //Ελέγχουμε αν είναι ίδια η κολόνα της λίστας που θέλουμε με την κολόνα που φέραμε από την βάση αν ναι την τοποθετούμε
            //var col1 = tabLinesRow.insertCell(cel); //Ε η φάση της τοοποθέτησης
            cel++; //Αυξάνουμε τον μετριτή κολόνας
            col1.innerHTML = Object.values(data[j])[k]; //Τοποθετούμε το περιεχόμενο της κολόνας μέσα της
          }
        }
      }



      tabLinesRow.addEventListener("click", function(event) { //Για κάθε γραμμή στον πίνακα βάζω ένα event onclick ώστε όταν γίνεται click να ανοίγει ένα popup παράθυρο 
        // var modal = document.getElementById(self.popupwindow); // Παίρνω το όνομα του popup
        // modal.style.display = "block"; //Του αλλάζω στιλ για να το εμφανίσω

        // if(self.getItemUrl!=null){
        //     self.getItem(this.cells[0].innerHTML); //Παίρνω τον κωδικό της γραμμής ή του στοιχείου που βρίσκεται στην πρώτη στήλη.:ΠΡΟΣΟΧΗ αν δεν είναισ την πρώτη θέση δεν θα παίξει
        //     actionType = "update"; //Δηλώνω το acton type. Επειδή χρησιμοποιώ την ίδια φόρμα για το update και το insert για να ξέρω πότε θα γίνει το ένα και πότε το άλλο.
        // }

        // self.selectedrows = this.cells;
        // if(self.onOpenPopup!=null){
        //     self.onOpenPopup(self.selectedrows[0].innerHTML, self);
        // }  
        alert("clicked");
      });
      cel = 0; //Και μηδενίζουμε την κολόνα για την επόμενη γραμμή
    }

  }
</script>