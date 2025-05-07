<?php
$routes=[
    'home'=>['controller'=>'HomeController','method'=>'index'],
    'contacto'=>['controller'=>'ContactoController','method'=>'index'],
    'ubicación'=>['controller'=>'UbicaciónController','method'=>'index'],
       ''=>['controller'=>'HomeController','method'=>'index']
   
    ];
//devolver la vista si existe, de lo contrario ,devolver 404
function resolveRoute($route,$routes)
{
    return $routes[$route]?? '404';
}