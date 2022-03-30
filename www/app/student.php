<?php
session_start();
require_once("tools/bdd.php");
require_once('tools/tools.php');

if(!isStudent()){
    header('Location: index.php');
}

$result_stage = Search2();

$StatsStudent = GetStatsStudent(142);

require_once('templates/tpl_header.php');
require_once('templates/tpl_student.php');
require_once('templates/tpl_footer.php');
?>