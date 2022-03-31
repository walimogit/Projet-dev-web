<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

if(!isLoggedIn())
    header('Location: login.php');

$search = trim($_GET['search']);
$result_stage = Search2();
require_once('templates/tpl_header.php');

foreach (Search() as $key) {
    if ($key['Name_enterprise'] === $search){
        $result_enterprise[] = $key;
    }elseif ($key['Competense'] === $search){
        $result_competense[] = $key;
    }elseif ($key['First_name'].' '.$key['Last_name'] === $search){
        $result_people[] = $key; 
    }
}
if (empty($search )){
    $result = 'Nothing found';
}

if (isset($_POST['btn_comp'])) {

    $id = $_POST['id'];
    $idintership = $_POST['idintership'];

    AddToWishlist($id, $idintership);
}

if (isset($_POST['btn_DELET'])) {
    $id = $_POST['id'];
    $idintership = $_POST['idintership'];

    RemoveWishlist($id, $idintership); 
    
}

$allresult = Search();

require_once('templates/tpl_search.php');
require_once('templates/tpl_footer.php');


?>