<?php
session_start();
include ("bdd.php");

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
      $row   = $stmt->fetch(PDO::FETCH_ASSOC);
      if($count == 1 && !empty($row)) {
        /******************** Your code ***********************/
        $_SESSION['sess_user_id']   = $row['ID_people'];
        $_SESSION['sess_login'] = $row['Login'];
        $_SESSION['sess_pass'] = $row['Password'];
        $_SESSION['sess_user'] = $row['First_name'];
        $_SESSION['sess_role_id'] = $row['ID_role'];
        var_dump($_SESSION);
        
        $role;
        if ($_SESSION['sess_role_id'] == 1) {
          $role = "Student";
        } elseif ($_SESSION['sess_role_id'] == 2) {
          $role = "Delegate";
        } elseif ($_SESSION['sess_role_id'] == 3) {
          $role = "Tutor";
        }

        echo " <br><h1> hi ! ", $_SESSION['sess_user']," ",$_SESSION['sess_role_id'];
        echo "<br>Your role is ",$role;
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