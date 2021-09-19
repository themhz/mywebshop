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
        $fileUploader->upload();
    }

    public function get()
    {

        $view = new view($this->app->request);

        echo $view->render('main', 'main', [], 'public');
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
        //$data = $categories->select([],['parent_id'=>'asc', 'id'=>'asc']);        
        $data = $categories->customselect("WITH RECURSIVE menu (id, parent_id, name, path, lvl) AS
                                            (
                                            SELECT id, parent_id, name, name as path, 0 lvl
                                                FROM categories
                                                WHERE parent_id =0
                                            UNION ALL
                                            SELECT c.id, c.parent_id, c.name, CONCAT(cp.path, ' > ', c.name) ,cp.lvl + 1
                                                FROM menu AS cp JOIN categories AS c
                                                ON cp.id = c.parent_id
                                            )
                                            SELECT * FROM menu
                                            order by lvl ,id asc;");
        $menu = [];

        foreach ($data as $row) {            
            $menu[] = ['id' => $row->id, 'parent_id' => $row->parent_id, 'name' => $row->name, 'children' => []];            
        }

        echo json_encode($menu);
    }
}
