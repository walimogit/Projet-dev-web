<?php
try {
    $dsn = 'mysql:dbname=bddprojet;host=db;port=3306;charset=UTF8'; //a setup
    $user = 'root';
    $password = 'cesi';
    $bdd = new PDO($dsn, $user, $password);
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $bdd->setAttribute(PDO::ATTR_EMULATE_PREPARES, false); 
}catch (PDOException $e){
    echo "Connection failed : ". $e->getMessage();
}
?>