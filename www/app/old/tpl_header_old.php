<!DOCTYPE html>
<html lang="fr">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="theme-color">
        <meta name="description" content="hub stage">
        <meta name="author" content="Hub Stage Fundation">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="./vendors/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="./vendors/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="./vendors/jquery/jquery.js">
        <link rel="icon" href="./img/logo3.ico">
        <link rel="manifest" href="manifest.json">
        <link rel="apple-touch-icon" sizes="192x192" href="./img/hub_stage_x192.png">
        <title>STAGE HUB</title>
    </head>

    <body>
        <header>
            <div class="topnav">

                <img src="./img/logo.png" alt="logo">        

                <a href="./login.php"><i class="fa fa-user"> </i></a>
               
                <?php  if(isStudent()): ?>
                    <a href="#student">Student</a>
                <?php endif; ?>
                <?php  if(isDelegate()): ?>
                    <a href="#Delegate">Delegate</a>
                <?php endif; ?>
                <?php  if(isTutor()): ?>
                    <a href="#tutor">Tutor</a>
                <?php endif; ?>
                <?php  if(isOther()): ?>
                    <a href="#other">Other</a>
                <?php endif; ?>
                <?php  if(isEnterprise()): ?>
                    <a href="#entreprise">Entreprise</a>
                <?php endif; ?>
                <?php  if(isAdmin()): ?>
                    <a href="#admin">Admin</a>
                <?php endif; ?>

                <a href="#"><i class="fas fa-home"></i></a>
                
                <div class="search-container">
                    <form action="/search.php">
                        <input type="text" placeholder="Search.." name="search">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
            </div>
        </header>

<div class="container-fluid">
