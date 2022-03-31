<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");

if(isStudent() or isEnterprise() or !isDelegateTutor() or !isDelegateEnterprise() or !isDelegateAdmin() or !isAdmin()){
    header('Location: index.php');
}

$result_stage = Search2();

require_once('templates/tpl_header.php');
require_once('templates/tpl_delete_enterprise.php');
require_once('templates/tpl_footer.php');

$msg = "";
if (isset($_POST['BtnDelEnterprise'])) {
    $ID_enterprise = trim($_POST['ID_enterprise']);
    DeleteEnterprise($ID_enterprise);
    //header('Location: tutor.php');
}
?>