<?php 
    require_once('Config/database.php');
    require_once('Controller/MovieController.php');

    $controller = new MoviesController();

    if(!empty($_REQUEST['one'])){
        $method = $_REQUEST['one'];
        if(method_exists($controller, $method)){
            $controller->method();
        }else{
            $controller->index();
        }
    }else{
        $controller->index();
    }
?>