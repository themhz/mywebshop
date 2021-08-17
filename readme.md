Simple Web Application Framwork mywebshop  
----------------------------------------------------------------  
This is a simple web application framework.. Just another php framework.
I just wanted to play around and practice frameworks and mvc. So here it is. 

Web server runs index.php and loads the classes that are needed 


1. It creates an object of the web application
	$app = new App(dirname(__DIR__));

2. And runs the start method
	$app->start();

When start runs

1. Load requested HTTP Method [get,post,etc..] and fields from the request or messagebody  
2. Authenticate the user request  
3. Route to the requested path
4. Run the controller for the requested path as a requested method
5. Show the result

How to USE
----------------------------------------------------------------
1. You can download and unzip the files in your web server or clone the project in your local web directory.  
2. You need to change the config file. set the fields you need for your server  

	define('CONFIG', array(  
		'db.user' => 'root',  <= the username of the database  
		'db.password' => '',  <= the password of the database  
		'db.host' => 'localhost',<= the host or ip of the server where you have the database   
		'db.name' => 'samplewebapp', <= and the name of the database  
	));  

3. You can now start playing around. You can have restricted pages and public pages  
for public pages you can create your own folder in views/publicPages/{the name of your folder}  
in your folder you need to create a controller.php and a view.php. The controller has 4 basic methods in it that correspond to the http methods. I intended to make this a rest   api framework thats why I used these methods, post,get,put,delete.  

4. Create a table in your database. Say the name is products and you have two fields in it like id and name
5. then create a file in the models directory. Copy and paste one ready one and change the name of the file to correspond to the name of the table in the database and change the field within the file in the constructor. 

	public function __construct()  
    {  
        parent::__construct('products');  
    }  

6. create the properties to correspond to the tables fields like 
	public $id
	public $name

7.  go in the method get of your controller and create the following lines
	$p = new Products();  
	$p->select();
	$view = new view($this->app->request);
    echo $view->render('main', 'products' , $products);

 In the methods(get, post, put, delete) you can use the Database class in order to access the database. This framework uses a custom ORM that selects stuf from the database  
 Check the components/core/  Model for more. I have already made some examples on how to work with the database. Check the products controller and view to see how they work.   

You can specify a more precise select like $p->select(['id = '=> 1]); you can simply play like this

	$p->select(['id = '=> 1]);
	$p->select(['id > '=> 1]);
	$p->select(['id < '=> 1]);
	$p->select(['id >= '=> 1]);
	$p->select(['id = '=> 1, 'name =', 'johny']);
	$p->select(['id = '=> 1, 'and name like', '%johny%']);
	$p->select(['id = '=> 1, 'or name like', '%johny%']);

You can you the =, and or like or any sql operators. If you see how the Model is implemented you will understand more. 

8. You can pass any variables in your views and they will be usable as their names are.  

use the following statement echo $view->render('main', 'main' , $products);
Ths will load the main layout and the main view and pass in an array of $products with key value pair. 
for example. If the array is like ['id'=> 123, 'name' = 'keyboard'] you can access the variables with their name like $id or $name

There is still work to be done.. So please have patience. 
If your a developer and looking for some custom framework that you need to hack around and play with it, feel free to download it and do whatever you want with it. 

Thank you.





