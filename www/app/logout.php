<?php
session_start();
if(isset($_SESSION['sess_user_id'])){
    session_destroy();
    header("location:index.php");
}else
    header("location:index.php");
?>