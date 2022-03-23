<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

$annonces = [1,23,4,5];

require_once('templates/tpl_header.php');
require_once('templates/tpl_annonces.php');
require_once('templates/tpl_footer.php');