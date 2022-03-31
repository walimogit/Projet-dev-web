<?php
session_start();
require_once("tools/bdd.php");
require_once('tools/tools.php');

if (!isTutor())
    header('Location: index.php');
$ID_people = $_SESSION['sess_user_id'];
$result_stage = Search2();
$StatsOnePeople = GetOneStatsPeople($ID_people);
$id_campus = $StatsOnePeople[0]['ID_campus'];
$StatsPeople = GetAllStatsPeople($id_campus);

require_once('templates/tpl_header.php');
require_once('templates/tpl_tutor.php');
require_once('templates/tpl_footer.php');