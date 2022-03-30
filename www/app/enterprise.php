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
var_dump($peoplee);

$AllStatsEntreprise = GetStatsEntreprise($peoplee);

echo $AllStatsEntreprise;
var_dump($AllStatsEntreprise) ;

require_once('templates/tpl_header.php');
require_once('templates/tpl_enterprise.php');
require_once('templates/tpl_footer.php');
?>