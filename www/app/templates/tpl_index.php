<section class="row">
    <div class="col">
        <h1>Accueil !</h1>
    </div>


    <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

    <?php if (isStudent()) : ?>

        <div class="card" style="width: 18rem;">
            <img src="./img/logo.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">HUB Stage,</h5>
                <p class="card-text">the best way to find and get your internship.</p>
            </div>
        </div>

        <a href="../annonces.php">Annonces</a>


    <?php endif; ?>

    <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

    <?php if (isDelegate()) : ?>

        délégué

    <?php endif; ?>

    <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

    <?php if (isTutor()) : ?>

        tuteur

    <?php endif; ?>

    <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

    <?php if (isOther()) : ?>

        other

    <?php endif; ?>

    <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

    <?php if (isAdmin()) : ?>

        admin

    <?php endif; ?>

    <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

    <?php if (isEnterprise()) : ?>

        enterprise

    <?php endif; ?>

    <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

</section>