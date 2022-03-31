<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
  <link rel="stylesheet" href="./vendors/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="./vendors/fontawesome/css/all.min.css">
  <link rel="icon" href="./img/logo3.ico">
  <title>Modify Enterprise</title>
  <link href="css/login.css" rel="stylesheet">
</head>

<main class="form-signin">
  <img class="mb-4" src="./img/logo.png" alt="logo" width="200" height="57">
  <h1 class="h3 mb-3 fw-normal">Modify enterprise</h1>
  <form action="modify_enterprise.php" method="POST">
    <div class="mb-3">
      <label for="floatingInput">ID People</label>
      <input class="form-control type=" text" name="id_people" id="id_people" value="" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">Name</label>
      <input class="form-control type=" text" name="name" id="name" value="" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">Number accepted</label>
      <input class="form-control type=" text" name="Number_accepted" id="Number_accepted" value="" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">Manager</label>
      <input class="form-control type=" text" name="id_people" id="id_people" value="" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">City</label>
      <input class="form-control type=" text" name="city" id="city" value="" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">Sector</label>
      <input class="form-control type=" text" name="sector" id="sector" value="" autocomplete="off" />

    </div>
    <?php if (!empty($msg)) { ?>
      <p class="alert alert-danger alert-dismissible fade show"><?php echo $msg; ?></p>
    <?php } ?>
    <!-- <button type="button" class="btn btn-secondary" name="BtnModEnterprise" data-bs-dismiss="modal">Close</button> -->
    <button type="submit" name="BtnModEnterprise" id="BtnModEnterprise" class="btn btn-primary">Modify Enterprise</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2018–2022</p>
  </form>
</main>
<!--<script src="script.js"></script>-->