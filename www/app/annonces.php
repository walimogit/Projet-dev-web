<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

$annonce = GetAllStatsOffer();

require_once('templates/tpl_header.php');
require_once('templates/tpl_annonces.php');
require_once('templates/tpl_footer.php');