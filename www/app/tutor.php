<?php
session_start();
require_once("tools/bdd.php");
require_once('tools/tools.php');

if (!isTutor())
    header('Location: index.php');

$result_stage = Search();
$StatsPeople = GetAllStatsPeople();

// $msg = "";
// if (isset($_POST['BtnNewAccount'])) {
//     $first_name = trim($_POST['first_name']);
//     $last_name = trim($_POST['last_name']);
//     $login = trim($_POST['login']);
//     $password = trim($_POST['password']);
//     $role = trim($_POST['role']);
//     CreatePeople($first_name, $last_name, $login, $password, $role);
// }

require_once('templates/tpl_header.php');
require_once('templates/tpl_tutor.php');
require_once('templates/tpl_footer.php');