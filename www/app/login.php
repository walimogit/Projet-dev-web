<?php
session_start();
include ("bdd.php");

$msg = ""; 
if(isset($_POST['submitBtnLogin'])) {
  $username = trim($_POST['login']);
  $password = trim($_POST['password']);
  if($username != "" && $password != "") {
    try {
      $query = 'SELECT * FROM people WHERE login=:user_name AND password=:pass_word';
      $stmt = $bdd->prepare($query);
      $stmt->bindParam('user_name', $username, PDO::PARAM_STR);
      $stmt->bindValue('pass_word', $password, PDO::PARAM_STR);
      $stmt->execute();
      $count = $stmt->rowCount();
      $row   = $stmt->fetch(PDO::FETCH_ASSOC);
      if($count == 1 && !empty($row)) {
        /******************** Your code ***********************/
        $_SESSION['sess_user_id']   = $row['ID_people'];
        $_SESSION['sess_login'] = $row['Login'];
        $_SESSION['sess_pass'] = $row['Password'];
        $_SESSION['sess_user'] = $row['First_name'];
        
        var_dump($_SESSION);

        echo " <br><h1> hi ! ", $_SESSION['sess_user'];
        echo "<br> Maintenant il faut verif le role de USER et faire un affichage en fonction de celui-ci.";
       
      } else {
        $msg = "Invalid username and password!";
        header('location:loginform.php');
      }
    } catch (PDOException $e) {
      echo "Error : ".$e->getMessage();
    }
  } else {
    $msg = "Both fields are required!";
    header('location:loginform.php');
  }
}

?>