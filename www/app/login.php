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
      $row = $stmt->fetchAll(PDO::FETCH_ASSOC);
      if($count == 1 && !empty($row)) {

        $_SESSION['sess_user_id']   = $row[0]['ID_people'];
        $_SESSION['sess_login'] = $row[0]['Login'];
        $_SESSION['sess_pass'] = $row[0]['Password'];
        $_SESSION['sess_user'] = $row[0]['First_name'];
        $_SESSION['sess_role_id'] = $row[0]['ID_role'];

        header('location:youraccount1.php');

      } elseif ($count == 2 && !empty($row)) {

        if ($row[0]['ID_role'] == 1 && $row[1]['ID_role'] == 2){
          $_SESSION['sess_role_id'] =12;  
        }elseif ($row[0]['ID_role'] == 2 && $row[1]['ID_role'] == 3){
          $_SESSION['sess_role_id'] =23;    
        }elseif ($row[0]['ID_role'] == 2 && $row[1]['ID_role'] == 4){
          $_SESSION['sess_role_id'] =24;          
        }elseif ($row[0]['ID_role'] == 1 && $row[1]['ID_role'] == 5){
          $_SESSION['sess_role_id'] =15;      
        }elseif ($row[0]['ID_role'] == 3 && $row[1]['ID_role'] == 5){
          $_SESSION['sess_role_id']=35;
        }

        $_SESSION['sess_user_id']   = $row[0]['ID_people'];
        $_SESSION['sess_login'] = $row[0]['Login'];
        $_SESSION['sess_pass'] = $row[0]['Password'];
        $_SESSION['sess_user'] = $row[0]['First_name'];

        header('location:youraccount2.php');
            
      } elseif ($count == 3 && !empty($row)) {

        if ($row[0]['ID_role'] == 1 && $row[1]['ID_role'] == 2 && $row[2]['ID_role'] == 5){
          $_SESSION['sess_role_id'] =125;  
        }elseif ($row[0]['ID_role'] == 2 && $row[1]['ID_role'] == 3 && $row[2]['ID_role'] == 5){
          $_SESSION['sess_role_id'] =235;    
        }elseif ($row[0]['ID_role'] == 2 && $row[1]['ID_role'] == 4 && $row[2]['ID_role'] == 5){
          $_SESSION['sess_role_id'] =245;    
        }

        $_SESSION['sess_user_id']   = $row[0]['ID_people'];
        $_SESSION['sess_login'] = $row[0]['Login'];
        $_SESSION['sess_pass'] = $row[0]['Password'];
        $_SESSION['sess_user'] = $row[0]['First_name'];

        header('location:youraccount3.php');

      // **************************  GESTION DES ERREURS : *************************** //

      } else {
        $msg = "Invalid username and password!";
        header('location:loginform.php'); 
      }
    } catch (PDOException $e) {
      $msg = "Error : ".$e->getMessage();
      header('location:loginform.php');
    }
  } else {
    $msg = "Both fields are required!";
    header('location:loginform.php');
  }
}
?>

