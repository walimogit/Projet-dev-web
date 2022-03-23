<?php
session_start();

if(!empty($_SESSION['sess_user_id'])){
    if($_SESSION['sess_role_id'] = 125){
        // Student_delegate_admin
        echo "Student_delegate_admin";


    }elseif($_SESSION['sess_role_id'] = 235){
        // Delegate_tutor_admin
        echo "Delegate_tutor_admin";


    }elseif($_SESSION['sess_role_id'] = 245){
        // Delegate_other_admin
        echo "Delegate_other_admin";


    }else{
        echo "Erreur de role, Bad session role id";
    }
}else{
    echo "Erreur de session, pas de session active";
}

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
      echo "<br> DEBUG ::: <br>";
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