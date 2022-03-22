<?php
session_start();
$_SESSION['sess_user_id']   = "";
$_SESSION['sess_login'] = "";
$_SESSION['sess_pass'] = "";
$_SESSION['sess_user'] = "";
$_SESSION['sess_role_id'] = "";
if(empty($_SESSION['sess_user_id'])) header("location: index.html");
?>