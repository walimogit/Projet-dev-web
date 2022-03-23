<?php
session_start();

if(!empty($_SESSION['sess_user_id'])){
    if($_SESSION['sess_role_id'] = 12){
        // Studen_delegate
        echo "Studen_delegate";



    }elseif($_SESSION['sess_role_id'] = 23){
        // Tutor_delegate
        echo "Tutor_delegate";



    }elseif($_SESSION['sess_role_id'] = 24){
        // Other_delegate
        echo "Other_delegate";



    }elseif($_SESSION['sess_role_id'] = 15){
        // Student_Admin
        echo "Student_Admin";



    }elseif($_SESSION['sess_role_id'] = 35){
        // Tutor_administrateur
        echo "Tutor_administrateur";


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