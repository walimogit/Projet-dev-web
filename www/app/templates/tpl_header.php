<!DOCTYPE html>
<html lang="fr">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="theme-color">
        <meta name="description" content="hub stage">
        <meta name="author" content="Hub Stage Fundation">
        <link rel="stylesheet" href="./vendors/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="./vendors/fontawesome/css/all.min.css">
        <link rel="stylesheet" href="./vendors/jquery/jquery.js">
        <link rel="icon" href="./img/logo3.ico">
        <link rel="manifest" href="manifest.json">
        <link rel="apple-touch-icon" sizes="192x192" href="./img/hub_stage_x192.png">
        <link rel="stylesheet" href="../css/navbar-top-fixed.css">
        <title>STAGE HUB</title>
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <div class="container-fluid">
                    <img src="./img/logo.png" alt="logo" class="navbar-brand" width="150">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                    </button>
                    <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">
                        <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#"><i class="fas fa-home"></i></a>
                        </li>
                        <li class="nav-item">
                            <?php  if(isStudent()): ?>
                            <a href="#student">Student</a>
                            <?php endif; ?>
                            <?php  if(isDelegate()): ?>
                                <a class="nav-link active" href="#Delegate">Delegate</a>
                            <?php endif; ?>
                            <?php  if(isTutor()): ?>
                                <a class="nav-link active" href="#tutor">Tutor</a>
                            <?php endif; ?>
                            <?php  if(isOther()): ?>
                                <a class="nav-link active" href="#other">Other</a>
                            <?php endif; ?>
                            <?php  if(isEnterprise()): ?>
                                <a class="nav-link active" href="#entreprise">Entreprise</a>
                            <?php endif; ?>
                            <?php  if(isAdmin()): ?>
                                <a class="nav-link active" href="#admin">Admin</a>
                            <?php endif; ?>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link active" href="./login.php"><i class="fa fa-user"></i></a>
                        </li>
                    </ul>
                    </div>
                </div>
            </nav>
        </header>
        

<div class="container-fluid">
