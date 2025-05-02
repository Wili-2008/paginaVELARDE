<?php

class ConexionPDO
{
    static private $cnn;
    function__construct()
    {
        $pdo=';mysql:host'. HOST.';port=' .PORT.';dbname=' .DATABASE.';' .CHARSET;
        $OPTIONS=[PDO::ATTR_ERRMODE=>PDO::ERRMODE_ECEPTION];
        try{
            self::$cnn=new PDO($pdo,USERNAME,PASSWORD);
        } catch(EXCEPTION $e)
        {
            die("ERROR=" .$e->getMessage());
        }
    }
    static public function Conexion()
    {
        return self::$cnn;
    }
}