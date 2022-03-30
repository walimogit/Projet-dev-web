<?php
session_start();
require_once('tools/tools.php');
require_once('tools/bdd.php');

if(!isAdmin()){
    header('Location: index.php');
}

$result_stage = Search2();


require_once('templates/tpl_header.php');
require_once('templates/tpl_admin.php');
require_once('templates/tpl_footer.php');
?>