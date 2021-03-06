<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
  <link rel="stylesheet" href="./vendors/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="./vendors/fontawesome/css/all.min.css">
  <link rel="icon" href="./img/logo3.ico">
  <title>Login</title>
  <link href="css/login.css" rel="stylesheet">
</head>

<body class="text-center">
  <main class="form-signin">
    <form action="login.php" method="POST">

      <img class="mb-4" src="./img/logo.png" alt="logo" width="200" height="57">
      <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
      <?php if (!empty($msg)) { ?>
        <p class="alert alert-danger alert-dismissible fade show"><?php echo $msg; ?></p>
      <?php } ?>

      <div class="form-floating">
        <input class="form-control type=" text" name="login" id="login" value="" autocomplete="off" />
        <label for="floatingInput">Login</label>
      </div>

      <div class="form-floating">
        <input type="password" class="form-control type=" password" name="password" id="password" value="" autocomplete="off" />
        <label for="floatingPassword">Password</label>
      </div>

      <div class="checkbox mb-3">
        <!--<label>
            <input type="checkbox" value="remember-me"> Remember me 
          </label>-->
      </div>
      <button name="submitBtnLogin" class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2018–2022</p>
    </form>
  </main>
  <!--<script src="script.js"></script>-->
</body>

</html>