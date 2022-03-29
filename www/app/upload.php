<?php 
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

require_once('templates/tpl_header.php');
require_once('templates/tpl_upload.php');


if(isset($_POST['submit']))
{
   AddAFile();
}



?>