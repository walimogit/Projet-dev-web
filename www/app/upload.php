<?php 
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

if(isset($_POST['submitdownload']))
{
   var_dump(DownloadFile(GetFilePeople($_SESSION['sess_user_id'])[0]['Path'], "test.docx"));
}

require_once('templates/tpl_header.php');
require_once('templates/tpl_upload.php');



if(isset($_POST['submit']))
{
   AddAFile();
}




var_dump(GetFilePeople($_SESSION['sess_user_id'])[0]['Path']);


require_once('templates/tpl_footer.php');
?>