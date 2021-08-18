<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sidebars/">
    <link href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/5.1/examples/sidebars/sidebars.css" rel="stylesheet">
    <style type="text/css">
        button.btn[data-v-20e3b604] {
            display: inline-block;
            font-weight: 300;
            line-height: 1.25;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            user-select: none;
            border: 1px solid transparent;
            cursor: pointer;
            letter-spacing: 1px;
            transition: all .15s ease
        }

        button.btn.btn-sm[data-v-20e3b604] {
            padding: .4rem .8rem;
            font-size: .8rem;
            border-radius: .2rem
        }

        button.btn.btn-primary[data-v-20e3b604] {
            color: #fff;
            background-color: #45C8F1;
            border-color: #45C8F1
        }

        button.btn.btn-outline-primary[data-v-20e3b604] {
            color: #45C8F1;
            background-color: transparent;
            border-color: #45C8F1
        }

        button.btn.btn-danger[data-v-20e3b604] {
            color: #fff;
            background-color: #FF4949;
            border-color: #FF4949
        }

        .text-muted[data-v-20e3b604] {
            color: #8492A6
        }

        .text-center[data-v-20e3b604] {
            text-align: center
        }

        .drop-down-enter[data-v-20e3b604],
        .drop-down-leave-to[data-v-20e3b604] {
            transform: translateX(0) translateY(-20px);
            transition-timing-function: cubic-bezier(0.74, 0.04, 0.26, 1.05);
            opacity: 0
        }

        .drop-down-enter-active[data-v-20e3b604],
        .drop-down-leave-active[data-v-20e3b604] {
            transition: all .15s
        }

        .move-left-enter[data-v-20e3b604],
        .move-left-leave-to[data-v-20e3b604] {
            transform: translateY(0) translateX(-80px);
            transition-timing-function: cubic-bezier(0.74, 0.04, 0.26, 1.05);
            opacity: 0
        }

        .move-left-enter-active[data-v-20e3b604],
        .move-left-leave-active[data-v-20e3b604] {
            transition: all .15s
        }

        .no-tr[data-v-20e3b604] {
            transition: none !important
        }

        .no-tr *[data-v-20e3b604] {
            transition: none !important
        }

        .overlay[data-v-20e3b604] {
            position: fixed;
            background: rgba(220, 220, 220, 0.8);
            display: flex;
            align-items: center;
            justify-content: center;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            transition: all 0.2s ease;
            opacity: 0;
            visibility: hidden
        }

        .overlay .modal[data-v-20e3b604] {
            transition: all 0.2s ease;
            opacity: 0;
            transform: scale(0.6);
            overflow: hidden
        }

        .overlay.show[data-v-20e3b604] {
            opacity: 1;
            visibility: visible
        }

        .overlay.show .modal[data-v-20e3b604] {
            opacity: 1;
            transform: scale(1)
        }

        .panel[data-v-20e3b604] {
            padding: 6px 10px;
            display: flex;
            width: 100%;
            box-sizing: border-box;
            align-items: center;
            border-radius: 4px;
            position: relative;
            border: 1px solid #eaf7ff;
            background: #f7fcff;
            outline: none;
            transition: all 0.07s ease-in-out
        }

        .btn[data-v-20e3b604] {
            cursor: pointer;
            box-sizing: border-box
        }

        .light-btn[data-v-20e3b604] {
            padding: 6px 10px;
            display: flex;
            width: 100%;
            box-sizing: border-box;
            align-items: center;
            border-radius: 4px;
            position: relative;
            border: 1px solid #eaf7ff;
            background: #f7fcff;
            outline: none;
            cursor: pointer;
            transition: all 0.07s ease-in-out
        }

        .light-btn[data-v-20e3b604]:hover {
            background: #e0f4ff;
            border-color: #8acfff
        }

        .shake[data-v-20e3b604] {
            animation: shake-data-v-20e3b604 0.82s cubic-bezier(0.36, 0.07, 0.19, 0.97) both;
            transform: translate3d(0, 0, 0)
        }

        @keyframes shake-data-v-20e3b604 {

            10%,
            90% {
                transform: translate3d(-1px, 0, 0)
            }

            20%,
            80% {
                transform: translate3d(2px, 0, 0)
            }

            30%,
            50%,
            70% {
                transform: translate3d(-4px, 0, 0)
            }

            40%,
            60% {
                transform: translate3d(4px, 0, 0)
            }
        }

        .pulse[data-v-20e3b604] {
            animation: pulse-data-v-20e3b604 2s ease infinite
        }

        @keyframes pulse-data-v-20e3b604 {
            0% {
                opacity: .7
            }

            50% {
                opacity: .4
            }

            100% {
                opacity: .7
            }
        }

        .flash-once[data-v-20e3b604] {
            animation: flash-once 3.5s ease 1
        }

        @keyframes fade-up-data-v-20e3b604 {
            0% {
                transform: translate3d(0, 10px, 0);
                opacity: 0
            }

            100% {
                transform: translate3d(0, 0, 0);
                opacity: 1
            }
        }

        .fade-in[data-v-20e3b604] {
            animation: fade-in-data-v-20e3b604 .3s ease-in-out
        }

        @keyframes fade-in-data-v-20e3b604 {
            0% {
                opacity: 0
            }

            100% {
                opacity: 1
            }
        }

        .spin[data-v-20e3b604] {
            animation-name: spin-data-v-20e3b604;
            animation-duration: 2000ms;
            animation-iteration-count: infinite;
            animation-timing-function: linear
        }

        @keyframes spin-data-v-20e3b604 {
            from {
                transform: rotate(0deg)
            }

            to {
                transform: rotate(360deg)
            }
        }

        .bounceIn[data-v-20e3b604] {
            animation-name: bounceIn-data-v-20e3b604;
            transform-origin: center bottom;
            animation-duration: 1s;
            animation-fill-mode: both;
            animation-iteration-count: 1
        }

        @keyframes bounceIn-data-v-20e3b604 {

            0%,
            20%,
            40%,
            60%,
            80%,
            100% {
                -webkit-transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
                transition-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1)
            }

            0% {
                opacity: 1;
                -webkit-transform: scale3d(0.8, 0.8, 0.8);
                transform: scale3d(0.8, 0.8, 0.8)
            }

            20% {
                -webkit-transform: scale3d(1.1, 1.1, 1.1);
                transform: scale3d(1.1, 1.1, 1.1)
            }

            40% {
                -webkit-transform: scale3d(0.9, 0.9, 0.9);
                transform: scale3d(0.9, 0.9, 0.9)
            }

            60% {
                opacity: 1;
                -webkit-transform: scale3d(1.03, 1.03, 1.03);
                transform: scale3d(1.03, 1.03, 1.03)
            }

            80% {
                -webkit-transform: scale3d(0.97, 0.97, 0.97);
                transform: scale3d(0.97, 0.97, 0.97)
            }

            100% {
                opacity: 1;
                -webkit-transform: scale3d(1, 1, 1);
                transform: scale3d(1, 1, 1)
            }
        }

        @keyframes dots-data-v-20e3b604 {

            0%,
            20% {
                color: rgba(0, 0, 0, 0);
                text-shadow: 0.25em 0 0 rgba(0, 0, 0, 0), 0.5em 0 0 rgba(0, 0, 0, 0)
            }

            40% {
                color: #8492A6;
                text-shadow: 0.25em 0 0 rgba(0, 0, 0, 0), 0.5em 0 0 rgba(0, 0, 0, 0)
            }

            60% {
                text-shadow: 0.25em 0 0 #8492A6, 0.5em 0 0 rgba(0, 0, 0, 0)
            }

            80%,
            100% {
                text-shadow: .25em 0 0 #8492A6, .5em 0 0 #8492A6
            }
        }

        @keyframes recording-data-v-20e3b604 {
            0% {
                box-shadow: 0px 0px 5px 0px rgba(173, 0, 0, 0.3)
            }

            65% {
                box-shadow: 0px 0px 5px 5px rgba(173, 0, 0, 0.3)
            }

            90% {
                box-shadow: 0px 0px 5px 5px rgba(173, 0, 0, 0)
            }
        }

        body[data-v-20e3b604] {
            margin: 0;
            font-size: 100%;
            color: #3C4858
        }

        a[data-v-20e3b604] {
            text-decoration: none;
            color: #45C8F1
        }

        h1[data-v-20e3b604],
        h2[data-v-20e3b604],
        h3[data-v-20e3b604],
        h4[data-v-20e3b604] {
            margin-top: 0
        }

        svg[data-v-20e3b604] {
            outline: none
        }

        .container_selected_area[data-v-20e3b604] {
            display: none;
            visibility: hidden;
            padding: 0;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 2147483647
        }

        .container_selected_area.active[data-v-20e3b604] {
            visibility: visible;
            display: block
        }

        .container_selected_area .label[data-v-20e3b604] {
            font-family: "Didact Gothic Regular", sans-serif;
            font-size: 22px;
            text-align: center;
            padding-top: 15px
        }

        .container_selected_area .area[data-v-20e3b604] {
            display: none;
            position: fixed;
            z-index: 2147483647;
            border: 1px solid #1e83ff;
            background: rgba(30, 131, 255, 0.1);
            box-sizing: border-box
        }

        .container_selected_area .area.active[data-v-20e3b604] {
            display: block;
            top: 0;
            left: 0
        }

        .hide[data-v-20e3b604] {
            display: none
        }
    </style>
    <style>
        body {
            font-family: "Lato", sans-serif;
        }

        .sidenav {
            height: 100%;
            width: 300px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: blue;
            /* overflow-x: hidden; */
            padding-top: 20px;
        }


        .sidenav a {
            text-decoration: none;
            font-size: 25px;
            color: white;
        }

        .sidenav a:hover {
            color: #f1f1f1;
        }

        .main {
            margin-left: 300px;
            /* Same as the width of the sidenav */
            font-size: 28px;
            /* Increased text to enable scrolling */
            padding: 0px 10px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

            .sidenav a {
                font-size: 18px;
            }
        }
    </style>

    <script>
        document.addEventListener('readystatechange', function(evt) {
            if (evt.target.readyState == "complete") {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        //var response = eval('(' + this.responseText + ')');
                        let response = JSON.parse(this.responseText);
                        let tree = buildList(response);
                        buildUlLi(tree);
                        document.getElementById('menu').innerHTML = list + '<ul>';
                    }
                };
                xhttp.open("GET", "http://localhost:8080/?method=getmenu", true);
                xhttp.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
                xhttp.send();
                // xhttp.send(JSON.stringify({
                //     "email": document.getElementById("email").value,
                //     "password": document.getElementById("password").value
                // }));

            }
        });

        function buildList(data) {

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


        let list = '<ul>';

        function buildUlLi(tree) {
            tree.children.forEach(function callbackFn(element, index, array) {
                list += "<li>";
                list += '<a href="products?category='+element.id+'">'+element.name + '</a><ul>';
                buildUlLi(element);
                list += '</ul></li>';
            });
        }
    </script>
</head>

<body>

    <div class="sidenav" id="menu">
               
    </div>

    <div class="main">
    {{VIEW}}
    </div>
    <script src="https://getbootstrap.com/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    <script src="https://getbootstrap.com/docs/5.1/examples/sidebars/sidebars.js"></script>
</body>

</html>