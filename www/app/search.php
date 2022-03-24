<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

$search = trim($_GET['search']);

require_once('templates/tpl_search.php');


?>