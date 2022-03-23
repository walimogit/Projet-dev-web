<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

if(isLoggedIn())
  header('Location: index.php');

$msg = ""; 
if(isset($_POST['submitBtnLogin'])) {
  $username = trim($_POST['login']);
  $password = trim($_POST['password']);
  if($username != "" && $password != "") {
    try {
      $query = 'SELECT People.ID_people, First_name, Last_name, Login, Password, ID_role FROM `People` JOIN `Own` WHERE login=:user_name AND password=:pass_word AND People.ID_people = Own.ID_people';
      $stmt = $bdd->prepare($query);
      $stmt->bindParam('user_name', $username, PDO::PARAM_STR);
      $stmt->bindValue('pass_word', $password, PDO::PARAM_STR);
      $stmt->execute();
      $count = $stmt->rowCount();
      $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
      if(!empty($rows)) {

        $_SESSION['sess_user_id']   = $rows[0]['ID_people'];
        $_SESSION['sess_login'] = $rows[0]['Login'];
        $_SESSION['sess_user'] = $rows[0]['First_name'];
        $_SESSION['sess_roles'] = $rows;

        header('location:controller/accueil.php');

      } else {
        
        $msg = "Invalid username and password!";
        
      }
    } catch (PDOException $e) {
      $msg = "Error : ".$e->getMessage();
     
    }
  } else {
    $msg = "Both fields are required!";
  }
}


require_once('templates/tpl_login.php');

?>

