<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");

if(!isLoggedIn()){
    header('Location: index.php');
}
    
require_once('templates/tpl_header.php');
require_once('templates/tpl_new_account.php');


$msg = "";
if (isset($_POST['BtnNewAccount'])) {
    $first_name = trim($_POST['first_name']);
    $last_name = trim($_POST['last_name']);
    $login = trim($_POST['login']);
    $password = trim($_POST['password']);
    $role = trim($_POST['role']);
    CreatePeople($first_name, $last_name, $login, $password, $role);
    header('Location: tutor.php');
}

require_once('templates/tpl_footer.php');