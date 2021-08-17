<?php

namespace mywebshop\views\publicPages\main;

use mywebshop\components\core\Controller as baseController;
use mywebshop\components\core\View;
use mywebshop\components\handlers\FileUploader;
use mywebshop\models\Categories;

use SampleWebApp\models\Products;

class Controller extends baseController
{

    public function __construct($app)
    {
        parent::__construct($app);
    }

    public function post()
    {
        $target_dir = $this->app->rootpath . DIRECTORY_SEPARATOR . 'SampleWebApp' . DIRECTORY_SEPARATOR . 'userfiles' . DIRECTORY_SEPARATOR;
        $fileUploader = new FileUploader($target_dir);
        $fileUploader->multiupload();
    }

    public function get()
    {

        $view = new view($this->app->request);

        echo $view->render('inner', 'main', [], 'public');
    }

    public function put()
    {
        echo "put";
    }

    public function delete()
    {
        echo "delete";
    }

    public function getmenu()
    {

        // $menu = "<script>const data = JSON.parse('".$menu ."');         
        // let tree = buildList(data);
        // buildUlLi(tree);
        // document.getElementById('menu').innerHTML = list+'<ul>';
        // </script>";

        $categories = new Categories();
        $data = $categories->select();        
        $menu = [];

        foreach ($data as $row) {            
            $menu[] = ['id' => $row->id, 'parent_id' => $row->parent_id, 'name' => $row->name, 'children' => []];            
        }

        echo json_encode($menu);
    }
}
