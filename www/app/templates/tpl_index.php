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
                    <button type="button" class="btn btn-carac">Learn more</button>
                    <div class="btn-group ms-5" role="group" aria-label="Basic example">
                        <a href="mailto:maxence.leroux@viacesi.fr" type="button" class="btn btn-modif">Mr. LEROUX</a>
                        <a href="mailto:jules.roge@viacesi.fr" type="button" class="btn btn-modif">Mr. ROGE</a>
                        <a href="mailto:timothee.renaud1@viacesi.fr" type="button" class="btn btn-modif">Mr. RENAUD</a>
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

            </main>
        </div>
    </div>

</section>
</div>