class Menu{
    //list = '<ul class="navbar-nav">';
    list
    constructor() {
        let self = this;
        document.addEventListener('readystatechange', function(evt) {
            if (evt.target.readyState == "complete") {
                self.list = document.createElement('ul');
                self.list.classList.add("navbar-item");
                var xhttp = new XMLHttpRequest();

                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {                
                        let response = JSON.parse(this.responseText);
                        let tree = self.buildList(response);
                    
                        self.buildUlLi(tree, self.list);
                        document.getElementById('menu').append(self.list);
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
            children: [],
            lvl: 0
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





    buildUlLi(tree, ul) {
        let self = this;
        let display = "";
        tree.children.forEach(function callbackFn(element, index, array) {
            if(parseInt(element.lvl) > 0)
                display = "none";
            else
                display = "";

            let li = document.createElement('li');
            li.classList.add("nav-item");
            li.classList.add("level"+element.lvl);
            li.style.display = display;


            if(parseInt(element.num_of_products)>0) {
                let a = document.createElement('a');
                a.classList.add("nav-link");
                a.href = "products?category="+element.id;
                a.innerText = element.name + '('+element.num_of_products+')';
                li.append(a);
            }
            else{
                let div = document.createElement('div');
                div.classList.add("nav-link");
                div.classList.add("category-item");
                div.innerText = element.name;
                div.onclick = function(){self.openMenuItem(div, element.lvl)};
                li.append(div);
            }

            let ulchild = document.createElement('ul');

            self.buildUlLi(element, ulchild);
            li.append(ulchild);
            ul.append(li);

        });
    }

    openMenuItem(obj, lvl){
      let items = obj.parentElement;

        let ul = items.querySelector('ul');
        let li = ul.querySelectorAll("li.level"+(parseInt(lvl)+1));

        for (let item of li) {
            if(item.style.display == ""){
                item.style.display="none";
            }else{
                item.style.display="";
            }

        }
    }
}


