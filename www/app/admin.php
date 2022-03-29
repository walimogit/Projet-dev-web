<?php
session_start();
require_once('tools/tools.php');
require_once('templates/tpl_header.php');

if(!isAdmin())
    header('Location: index.php');

require_once('templates/tpl_admin.php');
require_once('templates/tpl_footer.php');
?>