<section class="row">

    <div class="div4251 text-center">

        <div class="cover-container d-flex h-100 p-3 mx-auto flex-column">


            <main role="main" class="inner cover pt-5">
                <div class="div692">
                    <h1 class="cover-heading">Stage HUB</h1>

                    <p class="lead">The best way to find and get your internship.</p>
                </div>
                <div class="div6942">
                    <img src="./img/logo.png" class="card-img pb-5" alt="...">
                    <a href="./files/project.pdf" target="-blank" type="button" class="btn btn-primary">Learn more</a>
                    <div class="btn-group ms-5" role="group" aria-label="Basic example">
                        <a href="mailto:maxence.leroux@viacesi.fr" type="button" class="btn btn-primary">Mr. LEROUX</a>
                        <a href="mailto:jules.roge@viacesi.fr" type="button" class="btn btn-primary">Mr. ROGE</a>
                        <a href="mailto:timothee.renaud1@viacesi.fr" type="button" class="btn btn-primary">Mr. RENAUD</a>
                    </div>
                </div>


                <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

                <?php 
                if (!isEnterprise()){
                    echo '<a href="../annonces.php" class="lead text-decoration-none prin-color">Annonces</a>';
                }else 
                    echo '<a href="../enterprise.php" class="lead text-decoration-none prin-color">Annonces</a>';
                ?>


                <!-- ///////////////////////////////////////////////////////////////////////////////////////// -->

                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script>
                    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
                </script>
                <script src="../../assets/js/vendor/popper.min.js"></script>
                <script src="../../dist/js/bootstrap.min.js"></script>
            </main>
        </div>
    </div>

</section>
</div>