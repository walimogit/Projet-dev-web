<?php
session_start();
include ("db.php");

$login = $_POST["login"];
$passwordlogin = $_POST["password"];

$msg = ""; 
if(isset($_POST['submitBtnLogin'])) {
  $username = trim($_POST['login']);
  $password = trim($_POST['password']);
  if($username != "" && $password != "") {
    try {
      $query = 'SELECT * FROM utilisateurs WHERE pseudo=:username AND motDePasse=:password';
      $stmt = $db->prepare($query);
      $stmt->bindParam('username', $username, PDO::PARAM_STR);
      $stmt->bindValue('password', $password, PDO::PARAM_STR);
      $stmt->execute();
      $count = $stmt->rowCount();
      $row   = $stmt->fetch(PDO::FETCH_ASSOC);
      if($count == 1 && !empty($row)) {
        /******************** Your code ***********************/
        $_SESSION['sess_user_id']   = $row['id'];
        $_SESSION['sess_user_name'] = $row['pseudo'];
        $_SESSION['sess_pass'] = $row['motDePasse'];
        
        //var_dump($_SESSION);    
        //echo '<h4><a href="home.php">Home</a></h4>';
       
      } else {
        $msg = "Invalid username and password!";
        //header('location:login.html'); // en cas d'erreur ramène à la page précédente (Il faut faire passer le param MSG)
      }
    } catch (PDOException $e) {
      echo "Error : ".$e->getMessage();
    }
  } else {
    $msg = "Both fields are required!";
  }
}
//echo "$msg";


?>