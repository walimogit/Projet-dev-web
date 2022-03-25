<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

$search = trim($_GET['search']);

$result_stage = Search();

require_once('templates/tpl_search.php');


?>