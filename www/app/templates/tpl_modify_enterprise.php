<section class="form-signin text-center">
  <img class="mb-4" src="./img/logo.png" alt="logo" width="200" height="57">
  <h1 class="h3 mb-3 fw-normal">Modify enterprise</h1>
  <form action="modify_enterprise.php" method="POST">
    <div class="mb-3">
      <label for="floatingInput">ID Enterprise</label>
      <input class="form-control type=" text" name="id_enterprise" id="id_enterprise" value="<?php echo $_POST['ID_Enterprise']?>" autocomplete="off" readonly/>
    </div>
    <div class="mb-3">
      <label for="floatingInput">Name</label>
      <input class="form-control" type=" text" name="name" id="name" value="<?php echo $_POST['Name_enterprise']?>" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">Number accepted</label>
      <input class="form-control" type=" text" name="Number_accepted" id="Number_accepted" value="<?php echo $_POST['Number_interns_accepted']?>" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">Manager</label>
      <input class="form-control" type=" text" name="id_people" id="id_people" value="<?php echo $_POST['ID_Manager']?>" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">City</label>
      <input class="form-control" type=" text" name="city" id="city" value="<?php echo $_POST['ID_City']?>" autocomplete="off" />
    </div>
    <div class="mb-3">
      <label for="floatingInput">Sector</label>
      <input class="form-control" type=" text" name="sector" id="sector" value="<?php echo $_POST['ID_sector']?>" autocomplete="off" />

    </div>
    <?php if (!empty($msg)) { ?>
      <p class="alert alert-danger alert-dismissible fade show"><?php echo $msg; ?></p>
    <?php } ?>
    <button type="submit" name="BtnModEnterprise" id="BtnModEnterprise" class="btn btn-primary">Modify enterprise</button>
    <button type="submit" name="BtnDelEnterprise" id="BtnDelEnterprise" class="btn btn-primary">Delete enterprise</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2018–2022</p>
  </form>
</section>
</div>
<!--<script src="script.js"></script>-->