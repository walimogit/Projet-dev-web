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
        <script  type="text/javascript" src="../js/typeahead.bundle.js"></script>
        <link rel="stylesheet" href="../css/navbar-top-fixed.css">
        <title>STAGE HUB</title>
        <script>
            $(document).ready(function(){
            
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
            },
            {
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
                    <img src="./img/logo.png" alt="logo" class="navbar-brand" width="150">
                    <form class="d-flex" action="/search.php">
                        <input class="typeahead form-control me-2" type="text" placeholder="Search" aria-label="Search" name="search" spellcheck="false" autocomplete="off">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav me-auto mb-2 mb-md-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#"><i class="fas fa-home"></i></a>
                            </li>
                            <li class="nav-item">
                                <?php  if(isStudent()): ?>
                                <a class="nav-link active" href="#student">Student</a>
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
            <div><?php echo $result_stage; ?></div>
        </header>


<div class="container-fluid">
