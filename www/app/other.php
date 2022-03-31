<?php
session_start();
require_once('tools/tools.php');

if(!isOther() or !isAdmin()){
    header('Location: index.php');
}

require_once('templates/tpl_header.php');
require_once('templates/tpl_other.php');
require_once('templates/tpl_footer.php');
?>