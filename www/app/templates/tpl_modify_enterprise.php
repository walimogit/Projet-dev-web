<section class="form-signin">
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
</section>
</div>
<!--<script src="script.js"></script>-->