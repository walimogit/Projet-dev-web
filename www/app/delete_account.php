<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");

if(!isLoggedIn())
    header('Location: login.php');

// if(isStudent() or isEnterprise() or !isDelegateTutor() or !isDelegateStudent() or !isDelegateAdmin() or !isAdmin()){
//     header('Location: index.php'); //revoir le systeme de permission
// }

$result_stage = Search2();

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