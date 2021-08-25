class Basket {
    tableId = "";
    
    constructor(tableId) {
        this.tableId = tableId;
    }


    loadBasket() {
        var Parent = document.getElementById(this.tableId).tBodies[0];
        while (Parent.hasChildNodes()) {
            Parent.removeChild(Parent.firstChild);
        }

        let basket = localStorage.getItem('basket') ? JSON.parse(localStorage.getItem('basket')) : [];

        this.addrows(basket, ['id', 'name', 'qty', 'price', 'total', 'action']);
        this.calculateTotals();
        this.addTextAreasAndButtons();
    }

    addrows(data, cols) {

        var tabLines = document.getElementById(this.tableId); //Παίρνουμε τον πίνακα
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



            tabLinesRow.addEventListener("click", function (event) { //Για κάθε γραμμή στον πίνακα βάζω ένα event onclick ώστε όταν γίνεται click να ανοίγει ένα popup παράθυρο 
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
                        //alert("clicked");
            });
            cel = 0; //Και μηδενίζουμε την κολόνα για την επόμενη γραμμή
        }
    }

    calculateTotals() {
        var table = document.getElementById(this.tableId);
        
        let total = 0;
        for (var i = 1, row; row = table.rows[i]; i++) {
          
            let itemTotal = parseFloat(row.cells[2].innerHTML) * parseFloat(row.cells[3].innerHTML);
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


    addTextAreasAndButtons() {
        var table = document.getElementById(this.tableId);

        for (let i = 1; i < table.rows.length - 1; i++) {
            var input = document.createElement("input");
            input.type = "text";
            input.id = table.rows[i].cells[0].innerHTML;
            input.value = table.rows[i].cells[2].innerHTML;
           
            table.rows[i].cells[2].appendChild(input);

            var updatebtn = document.createElement("input");
            updatebtn.type = "button";
            updatebtn.value = "update";
            
            self = this;
            updatebtn.onclick = function(){               
                self.updateItem(table.rows[i].cells[0].innerHTML);
            }
            table.rows[i].cells[2].appendChild(updatebtn);

            
            var removebtn = document.createElement("input");
            removebtn.type = "button";
            removebtn.value = "remove";
            removebtn.onclick = function(){
                self.removeItem(table.rows[i].cells[0].innerHTML);
            }
            table.rows[i].cells[5].appendChild(removebtn);
            ///table.rows[i].cells[5].innerHTML = "<input type='button' value='remove' onclick='removeItem(" + table.rows[i].cells[0].innerHTML + ")'/>";
        }
    }

    removeItem(id) {

        let basket = localStorage.getItem('basket') ? JSON.parse(localStorage.getItem('basket')) : [];
        for (let i = 0; i < basket.length; i++) {
            if (id == basket[i].id) {
                basket.splice(i, 1);
                localStorage.removeItem('basket');
                localStorage.setItem('basket', JSON.stringify(basket));
            }
        }
        this.loadBasket();
    }


    updateItem(id) {
        //alert(document.getElementById(id).value);
        if (document.getElementById(id).value <= 0) {
            alert("qty must be greater than 0");
            this.loadBasket();
            return;
        }
        let basket = localStorage.getItem('basket') ? JSON.parse(localStorage.getItem('basket')) : [];
        for (let i = 0; i < basket.length; i++) {
            if (id == basket[i].id) {
                basket[i].qty = document.getElementById(id).value;
            }
        }

        localStorage.removeItem('basket');
        localStorage.setItem('basket', JSON.stringify(basket));
        this.loadBasket();
    }


}