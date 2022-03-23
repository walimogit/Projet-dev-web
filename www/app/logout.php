<?php
session_start();
session_destroy();
if(empty($_SESSION['sess_user_id'])) header("location: index.php");
?>