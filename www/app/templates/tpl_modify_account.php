<section class="form-signin">
    <img class="mb-4" src="./img/logo.png" alt="logo" width="200" height="57">
    <h1 class="h3 mb-3 fw-normal">Modify account</h1>
    <form action="modify_account.php" method="POST">
        <div class="mb-3">
            <label for="floatingInput">ID People</label>
            <input class="form-control type=" text" name="id_people" id="id_people" value="" autocomplete="off" />
        </div>
        <div class="mb-3">
            <label for="floatingInput">First name</label>
            <input class="form-control type=" text" name="first_name" id="first_name" value="" autocomplete="off" />
        </div>
        <div class="mb-3">
            <label for="floatingInput">Last name</label>
            <input class="form-control type=" text" name="last_name" id="last_name" value="" autocomplete="off" />
        </div>
        <div class="mb-3">
            <label for="floatingInput">Role</label>
            <input class="form-control type=" text" name="role" id="role" value="" autocomplete="off" />
        </div>
        <div class="mb-3">
            <label for="floatingInput">Login</label>
            <input class="form-control type=" text" name="login" id="login" value="" autocomplete="off" />
        </div>
        <div class="mb-3">
            <label for="floatingPassword">Password</label>
            <input type="password" class="form-control" name="password" id="password" value="" autocomplete="off" />

        </div>
        <?php if (!empty($msg)) { ?>
            <p class="alert alert-danger alert-dismissible fade show"><?php echo $msg; ?></p>
        <?php } ?>
        <!-- <button type="button" class="btn btn-secondary" name="BtnModAccount" data-bs-dismiss="modal">Close</button> -->
        <button type="submit" name="BtnModAccount" id="BtnModAccount" class="btn btn-primary">Modify Account</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2018–2022</p>
    </form>
</section>
</div>
<!--<script src="script.js"></script>-->