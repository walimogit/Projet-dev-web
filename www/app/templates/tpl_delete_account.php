<!doctype html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
    <link rel="stylesheet" href="./vendors/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="./vendors/fontawesome/css/all.min.css">
    <link rel="icon" href="./img/logo3.ico">
    <title>Delate Account</title>
    <link href="css/login.css" rel="stylesheet">
</head>

<main class="form-signin">
    <img class="mb-4" src="./img/logo.png" alt="logo" width="200" height="57">
    <h1 class="h3 mb-3 fw-normal">Delate account</h1>
    <form action="delete_account.php" method="POST">
        <div class="mb-3">
            <label for="floatingInput">ID People</label>
            <input class="form-control type=" text" name="id_people" id="id_people" value="" autocomplete="off" />
        </div>
        <button type="submit" name="BtnDelAccount" id="BtnDelAccount" class="btn btn-primary">Delete</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2018–2022</p>
    </form>
</main>