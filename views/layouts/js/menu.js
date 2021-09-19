class Menu{
    list = '<ul class="navbar-nav">';
    constructor() {
        let self = this;
        
        document.addEventListener('readystatechange', function(evt) {
            if (evt.target.readyState == "complete") {
                var xhttp = new XMLHttpRequest();                
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {                
                        let response = JSON.parse(this.responseText);
                        let tree = self.buildList(response);
                    
                        self.buildUlLi(tree);
                        document.getElementById('menu').innerHTML = self.list + '<ul>';
                    }
                };
                xhttp.open("GET", "http://localhost:8080/?method=getmenu", true);
                xhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
                xhttp.send();       
            }
        });
    }

    buildList(data) {

        let counter = 0;
        var table = data;
        var root = {
            id: 0,
            parent_id: null,
            name: "",
            children: []
        };
        var node_list = {
            0: root
        };
    
        for (var i = 0; i < table.length; i++) {
            node_list[table[i].id] = table[i];
            node_list[table[i].parent_id].children.push(node_list[table[i].id]);
        }
    
        return root;
    }
    
    
    
    
    buildUlLi(tree) {
        let self = this;
        tree.children.forEach(function callbackFn(element, index, array) {
            self.list += '<li class="nav-item">';
            self.list += '<a class="nav-link" href="products?category='+element.id+'">'+element.name + '</a><ul>';
            self.buildUlLi(element);
            self.list += '</ul></li>';
        });
    }
}


