<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

if(!isLoggedIn())
    header('Location: login.php');


if (!isEnterprise()){
    $result_stage = Search2();
    require_once('templates/tpl_header.php'); 
    require_once('templates/tpl_index.php');
    
}else {
    require_once('templates/tpl_headerENTERPRISE.php'); 
    require_once('templates/tpl_index.php');
}

require_once('templates/tpl_footer.php');

?>
