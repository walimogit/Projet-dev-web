<form>
    <!-- <div class="row">
        <div class="col">
            <label>Your search : </label>
            <pre><?php print_r($result) ?></pre>
            <? print_r($result[0]) ?><br>

            <label>All search : </label><br>
            <pre><?php print_r($allresult) ?></pre>

        </div>
    </div> -->
    <div class="album py-5 bg-light">
        <div class="container">
            <h4>Your search : </h4>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <?php for ($i = 0; $i < count($result); $i++) : ?>
                    <div class="col">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <h4><? print_r($result[0])?></h4>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <form method="POST">
                                            <button type="submit" name="btn" class="btn btn-sm btn-outline-secondary">
                                                <?php
                                                if (IsOnWhishList($_SESSION['sess_user_id'], $allresult[$i]['ID_internship_offers'])) {
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
                                            <input type="hidden" name="idintership" value="<? echo $allresult[$i]['ID_internship_offers'] ?>">
                                        </form>
                                    </div>
                                    <small class="text-muted"><? echo $allresult[$i]['Date_offre'] ?></small>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endfor; ?>
            </div>
        </div>
    </div>
    <div class="album py-5 bg-light">
        <div class="container">
            <h4>All search :</h4>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <?php for ($i = 0; $i < count($allresult); $i++) : ?>
                    <div class="col">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <h4><? echo $allresult[$i]['Competense'];
                                    echo $allresult[$i]['Name_enterprise'] ?></h4>
                                <p><? echo $allresult[$i]['Duree_de_stage'] ?></p>
                                <p><? echo $allresult[$i]['Base_remuneration'] ?></p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <form method="POST">
                                            <button type="submit" name="btn" class="btn btn-sm btn-outline-secondary">
                                                <?php
                                                if (IsOnWhishList($_SESSION['sess_user_id'], $allresult[$i]['ID_internship_offers'])) {
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
                                            <input type="hidden" name="idintership" value="<? echo $allresult[$i]['ID_internship_offers'] ?>">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endfor; ?>
            </div>
        </div>
    </div>
</form>