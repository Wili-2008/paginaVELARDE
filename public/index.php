<?php
//incluir el archivo web
require_once '../routes/web.php';
$request=isset($_GET['url'])? trim($_GET['url'],'/'):'';
//verificamos si la ruta existe en el array
if(isset($routes[$request]))
{
    $controllerName=$routes [$request]['controller'];
    $methodName =$routes[$request]['method'];
    
   
  require_once "../controller/$controllerName.php";
   $reflection=new ReflectionClass($controllerName);
        //verificar si la pagina tiene parametros
       //fin de verificacion
   $controller=$reflection->newInstance();
   $controller->$methodName();
}
else 
{
require '../views/404.php';
}

