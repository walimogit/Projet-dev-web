<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");
// require_once('templates/tpl_header.php');
require_once('templates/tpl_modify_account.php');
// require_once('templates/tpl_footer.php');

$msg = "";
if (isset($_POST['BtnModAccount'])) {
    $first_name = trim($_POST['first_name']);
    $last_name = trim($_POST['last_name']);
    $login = trim($_POST['login']);
    $password = trim($_POST['password']);
    $role = trim($_POST['role']);
    $id_people = trim($_POST['id_people']);
    UpdatePeople($first_name, $last_name, $login, $password, $role, $id_people);
    //header('Location: tutor.php');
}
?>