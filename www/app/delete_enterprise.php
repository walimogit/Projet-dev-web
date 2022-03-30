<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");
require_once('templates/tpl_delete_enterprise.php');

$msg = "";
if (isset($_POST['BtnDelEnterprise'])) {
    $ID_enterprise = trim($_POST['ID_enterprise']);
    DeleteEnterprise($ID_enterprise);
    //header('Location: tutor.php');
}
?>