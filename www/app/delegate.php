<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

if(!isDelegate()){
    header('Location: index.php');
}

$result_stage = Search2();

require_once('tools/tools.php');
require_once('templates/tpl_header.php');
require_once('templates/tpl_delegate.php');
require_once('templates/tpl_footer.php');
?>