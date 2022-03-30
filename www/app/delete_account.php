<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");
require_once('templates/tpl_header.php');
require_once('templates/tpl_delete_account.php');
require_once('templates/tpl_footer.php');

$msg = "";
if (isset($_POST['BtnDelAccount'])) {
    $id_people = trim($_POST['id_people']);
    DeletePeople($id_people);
    //header('Location: tutor.php');
}
?>