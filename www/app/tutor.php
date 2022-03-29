<?php
session_start();
require_once("tools/bdd.php");
require_once('tools/tools.php');

if(!isTutor())
    header('Location: index.php');

$result_stage = Search();

require_once('templates/tpl_header.php');
require_once('templates/tpl_tutor.php');
require_once('templates/tpl_footer.php');
?>