<?php
session_start();
include ("bdd.php");

$msg = ""; 
if(isset($_POST['submitBtnLogin'])) {
  $username = trim($_POST['login']);
  $password = trim($_POST['password']);
  if($username != "" && $password != "") {
    try {
      $query = 'SELECT People.uwu, First_name, Last_name, Login, Password, ID_role FROM `People` JOIN `Own` WHERE login=:user_name AND password=:pass_word AND People.ID_people = Own.ID_people';
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

      // **************************  GESTION DES ERREURS : *************************** //

      } else {
        $msg = "Invalid username and password!";
        header('location:loginform.php?error=Invalid username and password!'); 
      }
    } catch (PDOException $e) {
      $msg = "Error : ".$e->getMessage();
      header('location:loginform.php?$msg');
    }
  } else {
    $msg = "Both fields are required!";
    header('location:loginform.php?error=Both fields are required!');
  }
}

// il n'y a pas de style.css dans le code qui suit :
// c'est juste pour debug, à terme chaque type de role aura ca propre page. 
?>

<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
    <link rel="stylesheet" href="./vendors/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./vendors/fontawesome/css/all.min.css">
    <link rel="icon" href="./img/logo3.ico">
  </head>
  <body>
    <?php
      echo "<h1> hi ! ", $_SESSION['sess_user'];
      echo "<br>Your role is ";
      echo $_SESSION["sess_role_id"];
      echo "<br>";
      var_dump($_SESSION);
    ?>
    <h4><a href="logout.php">Logout</a></h4>
    <a class="homelogin" href="index.html"><i class="fas fa-home"></i></a>  
  </body>
</html>

