<main class="main">
    <div class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Internship Offers</h1>
                <p class="lead text-muted">Find all the current internship announcements.</p>
            </div>
        </div>
    </div>
    <div class="album py-5 bg-light">
        <div class="container">

            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <?php for ($i = 0; $i < count($annonce); $i++) : ?>
                    <div class="col">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <h4><? echo $annonce[$i]['Competense'] ?></h4>
                                <p>Time of internship: <? echo $annonce[$i]['Duree_de_stage'] ?></p>
                                <p>Remuneration: <? echo $annonce[$i]['Base_remuneration'] ?></p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <form method="POST">
                                            <button type="submit" name="btn" class="btn btn-sm btn-outline-secondary">
                                                <?php
                                                if (IsOnWhishList($_SESSION['sess_user_id'], $annonce[$i]['ID_internship_offers'])) {
                                                    echo '<i class="fas fa-heart"></i>';
                                                    echo ' ';
                                                    echo 'On Whishlist';
                                                } else {
                                                    echo '<i class="far fa-heart"></i>';
                                                    echo ' ';
                                                    echo 'Add to Whishlist';
                                                }
                                                ?>
                                            </button>

                                            <input type="hidden" name="id" value="<? echo $_SESSION['sess_user_id'] ?>">
                                            <input type="hidden" name="idintership" value="<? echo $annonce[$i]['ID_internship_offers'] ?>">
                                        </form>
                                    </div>
                                    <small class="text-muted"><? echo $annonce[$i]['Date_offre'] ?></small>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endfor; ?>
            </div>
        </div>
    </div>
</main>