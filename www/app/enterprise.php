<?php
session_start();
require_once('tools/tools.php');
require_once("tools/bdd.php");

if(!isEnterprise()){
    header('Location: index.php');
}

$result_stage = Search2();

$peoplee = PeopleOfEnterprise($_SESSION['sess_user_id']);
$peoplee = $peoplee[0]['ID_enterprise'];

$AllStatsEntreprise = GetStatsEntreprise($peoplee);

require_once('templates/tpl_headerENTERPRISE.php');
require_once('templates/tpl_enterprise.php');
require_once('templates/tpl_footer.php');
?>