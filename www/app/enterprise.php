<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");

if(!isEnterprise())
    header('Location: index.php');

$result_stage = Search();

require_once('templates/tpl_header.php');
require_once('templates/tpl_enterprise.php');
require_once('templates/tpl_footer.php');
?>