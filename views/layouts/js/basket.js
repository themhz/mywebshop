class Basket {
    tableId = "";
    basketname = "";
    products = "";
    paymentMethods = null;
    shippingMethods = null;
    total = 0;
    currency = "&euro;";
    taxidromika= 1;
    antikatavoli= 2;
    shippingmethod = 1;
    locations = null;
    vatcodes = null;

    constructor(tableId, basketname="basket") {
        this.tableId = tableId;
        this.basketname = basketname;
    }

    loadBasket() {
        var Parent = document.getElementById(this.tableId).tBodies[0];
        while (Parent.hasChildNodes()) {
            Parent.removeChild(Parent.firstChild);
        }

        let basket = localStorage.getItem(this.basketname) ? JSON.parse(localStorage.getItem(this.basketname)) : [];

        this.addrows(basket, ['id', 'name', 'qty', 'price', 'total', 'action']);
        this.calculateTotals();
        this.addTextAreasAndButtons();

        let table = document.getElementById(this.tableId); //Παίρνουμε τον πίνακα
        let newRow = table.insertRow();
        let newRow2 = table.insertRow();
        for(let i=0;i<6;i++){
            newRow.insertCell();
            newRow2.insertCell();
        }

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
            row.cells[4].innerHTML = this.currency + parseFloat(itemTotal) ;
        }

        this.total = total;
    }


    addTextAreasAndButtons() {
        var table = document.getElementById(this.tableId);

        for (let i = 1; i < table.rows.length ; i++) {
            var input = document.createElement("input");
            input.type = "text";
            input.id = table.rows[i].cells[0].innerHTML;
            input.value = table.rows[i].cells[2].innerHTML;
           
            table.rows[i].cells[2].innerHTML = "";
            table.rows[i].cells[2].appendChild(input);

            var updatebtn = document.createElement("input");
            updatebtn.type = "button";
            updatebtn.value = "update";
            updatebtn.id = "updatebtn"+i;
            
            self = this;
            updatebtn.onclick = function(){               
                self.updateItem(table.rows[i].cells[0].innerHTML);
            }
            table.rows[i].cells[2].appendChild(updatebtn);
            
            var removebtn = document.createElement("input");
            removebtn.type = "button";
            removebtn.value = "remove";
            removebtn.id = "removebtn"+i;
            removebtn.onclick = function(){
                self.removeItem(table.rows[i].cells[0].innerHTML);
            }
            table.rows[i].cells[5].appendChild(removebtn);
        }
    }

    removeItem(id) {

        let basket = localStorage.getItem(this.basketname) ? JSON.parse(localStorage.getItem(this.basketname)) : [];
        for (let i = 0; i < basket.length; i++) {
            if (id == basket[i].id) {
                basket.splice(i, 1);
                localStorage.removeItem(this.basketname);
                localStorage.setItem(this.basketname, JSON.stringify(basket));
            }
        }
        this.reloadItems();
    }


    updateItem(id) {
        //alert(document.getElementById(id).value);
        if (document.getElementById(id).value <= 0) {
            alert("qty must be greater than 0");
            this.loadBasket();
            return;
        }
        let basket = localStorage.getItem(this.basketname) ? JSON.parse(localStorage.getItem(this.basketname)) : [];
        for (let i = 0; i < basket.length; i++) {
            if (id == basket[i].id) {
                basket[i].qty = document.getElementById(id).value;
            }
        }

        localStorage.removeItem(this.basketname);
        localStorage.setItem(this.basketname, JSON.stringify(basket));
        this.reloadItems();
    }

    checkout(){

        let products = localStorage.getItem(this.basketname) ? JSON.parse(localStorage.getItem(this.basketname)) : [];
        let xhttp = new XMLHttpRequest();
        let self = this;
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var response = eval('(' + this.responseText + ')');
            }
        };
        xhttp.open("post", "basket", true);
        xhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
        xhttp.send(JSON.stringify(products));

    }


    loadPaymentMethods(){
        let table = document.getElementById(this.tableId);
        let select = document.createElement("select");
        select.id = "paymentMethods";
        select.classList.add("form-control");

        for(let i=0; i<paymentMethods.length;i++){
            let option = document.createElement("option");
            option.innerHTML =paymentMethods[i].name;
            option.id =paymentMethods[i].id;
            select.appendChild(option);
        }

        table.rows[table.rows.length-2].cells[2].append(select);
        table.rows[table.rows.length-2].cells[1].append("Επέλεξε τρόπο πληρωμής");
    }

    showShippingForm(){

        this.shippingmethod =document.getElementById("shippingMethods").value;
        localStorage.setItem("shippingmethod", this.shippingmethod);

        if(document.getElementById("shippingMethods").value == this.taxidromika){
            document.getElementById("shipping_details").style.display="";
        }else{
            document.getElementById("shipping_details").style.display="none";
        }

    }

    loadShippingMethods(){
        let table = document.getElementById(this.tableId);
        let select = document.createElement("select");
        select.id = "shippingMethods";
        select.classList.add("form-control");
        let self =  this;
        select.onchange = function(){
            self.showShippingForm();
        }

        for(let i=0; i<shippingMethods.length;i++){
            let option = document.createElement("option");
            option.innerHTML =shippingMethods[i].name;
            option.value =shippingMethods[i].id;
            select.appendChild(option);
        }

        table.rows[table.rows.length-1].cells[2].append(select);
        table.rows[table.rows.length-1].cells[1].append("Επέλεξε τρόπο αποστολής");
        // console.log(this.shippingmethod);
        // select.value = this.shippingmethod;
        select.value = localStorage.getItem("shippingmethod");
        this.showShippingForm();
    }


    calculateTotalSum(){
        let table = document.getElementById(this.tableId);
        var checkoutbtn = document.createElement("input");
        checkoutbtn.id = "checkoutbtn";
        checkoutbtn.type="button";
        checkoutbtn.value="checkout";

        self = this;
        checkoutbtn.onclick = function(){
            self.checkout();
        };

        var td = document.createElement('td');
        var td2 = document.createElement('td');
        td.appendChild(checkoutbtn);

        td2.innerHTML = this.currency + this.total;
        td2.id = "total";

        var tr = document.createElement('tr');
        tr.insertCell();
        tr.insertCell();
        tr.insertCell();
        tr.insertCell();
        tr.appendChild(td2);
        tr.appendChild(td);
        table.tBodies[0].appendChild(tr);

        //this.calculateTotalVatId();
    }


    reloadItems(){
        this.loadBasket();
        this.loadPaymentMethods();
        this.loadShippingMethods();
        this.calculateTotalVatId();
        this.calculateTotalSum();
    }


    calculateTotalVatId(){
        let vatcodes = document.getElementById("location");
        let selected = vatcodes.options[vatcodes.selectedIndex];
        let vatid = selected.getAttribute("data-vatid");
        let rate = 0;
        for(let i=0; i<this.vatcodes.length;i++){
          //console.log(this.vatcodes[i].id);
            if(this.vatcodes[i].id == vatid){
                //console.log(this.vatcodes[i].rate);
                rate = this.vatcodes[i].rate;
            }
        }

        this.total = ((this.total * rate)/100) + this.total;

    }
}