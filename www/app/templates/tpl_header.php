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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="../js/typeahead.bundle.js"></script>
    <link rel="stylesheet" href="../css/navbar-top-fixed.css">
    <title>STAGE HUB</title>
    <script>
        $(document).ready(function() {

            var cars = <?php echo json_encode($result_stage); ?>;

            var cars = new Bloodhound({
                datumTokenizer: Bloodhound.tokenizers.whitespace,
                queryTokenizer: Bloodhound.tokenizers.whitespace,
                local: cars
            });

            $('.typeahead').typeahead({
                hint: true,
                highlight: true,
                minLength: 1
            }, {
                name: 'cars',
                source: cars
            });
        });
    </script>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div class="container-fluid">
                <a href="../index.php"><img src="./img/logo.png" alt="logo" class="navbar-brand" width="150"></a>
                <form class="d-flex" action="/search.php">
                    <input class="typeahead form-control me-2" type="text" placeholder="<?php 
                    if (isset($_GET['search'])){
                        echo $_GET['search'];
                    }else
                        echo 'Search';
                    ?>" aria-label="Search" name="search" spellcheck="false" autocomplete="off">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">
                        <li class="nav-item" style="margin: auto;">
                            <a class="nav-link active" aria-current="page" href="./index.php"><i class="fas fa-home"></i></a>
                        </li>
                        <li class="nav-item nav-role">
                            <?php if (isStudent()) : ?>
                                <a class="nav-link active" href="../student.php" style="margin: auto;">Student</a>
                            <?php endif; ?>
                            <?php if (isDelegate()) : ?>
                                <a class="nav-link active" href="../delegate.php" style="margin: auto;">Delegate</a>
                            <?php endif; ?>
                            <?php if (isDelegateStudent()) : ?>
                                <a class="nav-link active" href="../delegate.php" style="margin: auto;">Delegate Student</a>
                            <?php endif; ?>
                            <?php if (isDelegateTutor()) : ?>
                                <a class="nav-link active" href="../delegate.php" style="margin: auto;">Delegate Tutor</a>
                            <?php endif; ?>
                            <?php if (isDelegateOther()) : ?>
                                <a class="nav-link active" href="../delegate.php" style="margin: auto;">Delegate Other</a>
                            <?php endif; ?>
                            <?php if (isDelegateAdmin()) : ?>
                                <a class="nav-link active" href="../delegate.php" style="margin: auto;">Delegate Admin</a>
                            <?php endif; ?>
                            <?php if (isDelegateEnterprise()) : ?>
                                <a class="nav-link active" href="../delegate.php" style="margin: auto;">Delegate Enterprise</a>
                            <?php endif; ?>
                            <?php if (isTutor()) : ?>
                                <a class="nav-link active" href="../tutor.php" style="margin: auto;">Tutor</a>
                            <?php endif; ?>
                            <?php if (isOther()) : ?>
                                <a class="nav-link active" href="../other.php"style="margin: auto;">Other</a>
                            <?php endif; ?>
                            <?php if (isEnterprise()) : ?>
                                <a class="nav-link active" href="../enterprise.php" style="margin: auto;">Entreprise</a>
                            <?php endif; ?>
                            <?php if (isAdmin()) : ?>
                                <a class="nav-link active" href="../admin.php" style="margin: auto;">Admin</a>
                            <?php endif; ?>
                        </li>
                        <li class="nav-item dropdown" style="margin: auto;">
                            <a class="nav-link active dropdown-toggle deroulant" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user"> </i></a>
                            <ul class="dropdown-menu dropdown-menu-dark dropdown-menu-end" aria-labelledby="navbarDarkDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Your Account</a></li>
                                <li><a class="dropdown-item" href="../logout.php">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>


    <div class="container-fluid">