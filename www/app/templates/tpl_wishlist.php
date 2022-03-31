<main class="container-fluid">
<div class="album py-5 bg-light">
        <div class="container">
            <h4>My Whishlist :</h4>
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                <?php for ($i = 0; $i < count($allresult); $i++) : ?>
                    <div class="col">
                        <div class="card shadow-sm">
                                     <form method="POST">
                                            <?php
                                            if ($allresult[$i]['ID_internship_offers']) {
                                                
                                                echo '<div class="card-body">';
                                                echo '<h4>';
                                                echo (GetStatsOffer($allresult[$i]['ID_internship_offers'])[0]['Competense']);
                                                echo '</h4>';
                                                echo '<p>';
                                                echo 'Number of interns already accept : ';
                                                echo $allresult[$i]['Number_interns_accepted'];
                                                echo '</p>';
                                                echo '<div class="d-flex justify-content-between align-items-center">';
                                                echo '<div class="btn-group">';
                                                echo '<button type="submit" name="btn_remove" class="btn btn-sm btn-outline-secondary">';
                                                echo  'Remove From Wishlist';
                                                echo ' ';
                                                echo '<i class="fas fa-trash-alt"></i>';
                                                echo ' ';
                                                echo '</button>';
                                                echo ' ';
                                                echo '<button type="submit" name="btn_candidate" class="btn btn-sm btn-outline-secondary">';
                                                echo  'Candidate ';
                                                echo ' ';
                                                echo '<i class="fas fa-user-plus"></i>';
                                                echo ' ';
                                                echo '</button>';
                                            } 
                                            ?>
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
</main>
</div>