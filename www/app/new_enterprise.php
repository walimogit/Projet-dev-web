<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");
require_once('templates/tpl_headerENTERPRISE.php');
require_once('templates/tpl_new_enterprise.php');
require_once('templates/tpl_footer.php');

$msg = "";
if (isset($_POST['BtnNewEnterprise'])) {
    $name = trim($_POST['name']);
    $Number_accepted = trim($_POST['Number_accepted']);
    $id_people = trim($_POST['id_people']);
    $city = trim($_POST['city']);
    $sector = trim($_POST['sector']); 
    CreateEnterprise($name, $Number_accepted, $id_people, $city, $sector);
    header('Location: tutor.php');
}