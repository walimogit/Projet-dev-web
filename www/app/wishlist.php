<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");

if(!isStudent() or !isAdmin()){
    header('Location: index.php');
}

$result_stage = Search2();
require_once('templates/tpl_header.php');

$allresult = GetWishlist($_SESSION['sess_user_id']);

if (isset($_POST['btn_remove'])) {

    $id = $_POST['id'];
    $idintership = $_POST['idintership'];

    RemoveWishlist($id, $idintership);
    echo("<meta http-equiv='refresh' content='1'>");
}

if (isset($_POST['btn_candidate'])) {

    $id = $_POST['id'];
    $idintership = $_POST['idintership'];

    UpdateOfferAdvancement($id, $idintership, 1);
    echo("<meta http-equiv='refresh' content='1'>");
}


require_once('templates/tpl_wishlist.php');
require_once('templates/tpl_footer.php');
?>