<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

if(!isLoggedIn())
    header('Location: login.php');
    
//TODO logique bdd / $^_POST etc...


$result_stage = Search();

require_once('templates/tpl_header.php');

var_dump(isStudent());

require_once('templates/tpl_index.php');
require_once('templates/tpl_footer.php');

?>
