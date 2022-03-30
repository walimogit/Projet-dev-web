<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

if(!isLoggedIn()){
    header('Location: index.php');
}

$result_stage = Search2();
$annonce = GetAllStatsOffer();
$StatsPeople = GetAllStatsPeople();

if (isset($_POST['btn'])) {

    $id = $_POST['id'];
    $idintership = $_POST['idintership'];

    AddToWishlist($id, $idintership); 
    
}



require_once('templates/tpl_header.php');
require_once('templates/tpl_annonces.php');
require_once('templates/tpl_footer.php');