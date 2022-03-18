<?php
try {
    $dsn = 'mysql:dbname=prosit7;host=db;port=3306;charset=UTF8'; //a setup
    $user = 'root';
    $password = 'cesi';
    $db = new PDO($dsn, $user, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false); 
}catch (PDOException $e){
    echo "Connection failed : ". $e->getMessage();
}
?>