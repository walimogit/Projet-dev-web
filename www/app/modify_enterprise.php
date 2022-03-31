<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");

// if(isStudent() or isEnterprise() or isDelegateTutor() or !isDelegateAdmin() or !isAdmin()){
//     header('Location: index.php');  //revoir le systeme de permission
// }

$result_stage = Search2();
require_once('templates/tpl_header.php');
require_once('templates/tpl_modify_enterprise.php');
require_once('templates/tpl_footer.php');

$msg = "";
if (isset($_POST['BtnModEnterprise'])) {
    $name = trim($_POST['name']);
    $Number_accepted = trim($_POST['Number_accepted']);
    $id_people = trim($_POST['id_people']);
    $ID_enterprise = trim($_POST['ID_enterprise']);
    $city = trim($_POST['city']);
    $sector = trim($_POST['sector']);
    UpdateEnterprise($name, $Number_accepted, $id_people, $ID_enterprise, $city, $sector);
    //header('Location: tutor.php');
}
?>