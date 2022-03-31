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
                <div class="col">
                    <div class="card shadow-sm">
                        <form method="POST">
                            <?php
                            if ($result == 'Nothing found') {
                                echo '<div class="card-body">';
                                echo '<h4>';
                                echo $result;
                                echo '</h4>';
                                echo '<div class="d-flex justify-content-between align-items-center">';
                                echo '<div class="btn-group">';
                            } elseif ($result_competense) {
                                echo '<div class="card-body">';
                                echo '<h4>';
                                echo $result_competense[0]['Competense'];
                                echo '</h4>';
                                echo '<p>';
                                echo 'Remuneration : ';
                                echo $result_competense[0]['Base_remuneration'];
                                echo '</p>';
                                echo '<p>';
                                echo 'Start of internship : ';
                                echo $result_competense[0]['Date_offre'];
                                echo '</p>';
                                echo '<small class="text-muted">';
                                echo 'Time of internship : ';
                                echo $result_competense[0]['Duree_de_stage'];
                                echo '</small>';
                                echo '<div class="d-flex justify-content-between align-items-center">';
                                echo '<div class="btn-group">';

                                if (IsOnWhishList($_SESSION['sess_user_id'], $result_competense[0]['ID_internship_offers'])) {
                                    echo '<button type="submit" name="btn_DELET" class="btn btn-sm btn-outline-secondary">';
                                    echo '<i class="fas fa-heart"></i>';
                                    echo ' ';
                                    echo 'On Whishlist';
                                } else {
                                    echo '<button type="submit" name="btn_comp" class="btn btn-sm btn-outline-secondary">';
                                    echo '<i class="far fa-heart"></i>';
                                    echo ' ';
                                    echo 'Add to Whishlist';
                                }
                                echo '</button>';
                            } elseif ($result_enterprise) {
                                echo '<div class="card-body">';
                                echo '<h4>';
                                echo $result_enterprise[0]['Name_enterprise'];
                                echo '</h4>';
                                echo '<p>';
                                echo 'Number of interns already accept : ';
                                echo $result_enterprise[0]['Number_interns_accepted'];
                                echo '</p>';
                                echo '<div class="d-flex justify-content-between align-items-center">';
                                echo '<div class="btn-group">';
                                echo '<a href="https://www.';
                                echo $result_enterprise[0]['Name_enterprise'];
                                echo '.fr" target="_blank" class="btn">';
                                echo '<button type="submit" name="btn_RIEN" class="btn btn-sm btn-outline-secondary">';
                                echo  'See more about this enterprise';
                                echo ' ';
                                echo '<i class="fas fa-heart"></i>';
                                echo '</a>';
                                echo ' ';
                                echo '</button>';
                            } elseif ($result_people) {
                                echo '<div class="card-body">';
                                echo '<h4>';
                                echo $result_people[0]['First_name'] . ' ' . $result_people[0]['Last_name'];
                                echo '</h4>';
                                echo '<div class="d-flex justify-content-between align-items-center">';
                                echo '<div class="btn-group">';
                                echo '<button type="submit" name="btn" class="btn btn-sm btn-outline-secondary">';
                                echo "JSP";
                                echo '</button>';
                            }else {
                                echo '<div class="card-body">';
                                echo '<h4>';
                                echo 'Nothing found';
                                echo '</h4>';
                                echo '<div class="d-flex justify-content-between align-items-center">';
                                echo '<div class="btn-group">';
                            }
                            ?>
                            <input type="hidden" name="id" value="<? $_SESSION['sess_user_id'] ?>">
                            <input type="hidden" name="idintership" value="<? echo $result_competense[0]['ID_internship_offers']?>">
                        </form>
                    </div>
                    <small class="text-muted">
                        <? echo $allresult[$i]['Date_offre'] ?>
                    </small>
                </div>
            </div>
        </div>
    </div>
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
                                     <form method="POST">
                                            <?php
                                            // echo $allresult[$i]['Name_enterprise'];
                                            if ($allresult[$i]['Name_enterprise']) {
                                                
                                                echo '<div class="card-body">';
                                                echo '<h4>';
                                                echo $allresult[$i]['Name_enterprise'];
                                                echo '</h4>';
                                                echo '<p>';
                                                echo 'Number of interns already accept : ';
                                                echo $allresult[$i]['Number_interns_accepted'];
                                                echo '</p>';
                                                echo '<div class="d-flex justify-content-between align-items-center">';
                                                echo '<div class="btn-group">';
                                                echo '<a href="https://www.';
                                                echo $allresult[$i]['Name_enterprise'];
                                                echo '.fr" target="_blank" class="btn">';
                                                echo '<button type="submit" name="btn_RIEN" class="btn btn-sm btn-outline-secondary">';
                                                echo  'See more about this enterprise';
                                                echo ' ';
                                                echo '<i class="fas fa-heart"></i>';
                                                echo '</a>';
                                                echo ' ';
                                                echo '</button>';
                                            } elseif ($allresult[$i]['Competense']) {
                                                echo '<div class="card-body">';
                                                echo '<h4>';
                                                echo $allresult[$i]['Competense'];
                                                echo '</h4>';
                                                echo '<p>';
                                                echo 'Remuneration : ';
                                                echo $allresult[$i]['Base_remuneration'];
                                                echo '</p>';
                                                echo '<p>';
                                                echo 'Start of internship : ';
                                                echo $allresult[$i]['Date_offre'];
                                                echo '</p>';
                                                echo '<small class="text-muted">';
                                                echo 'Time of internship : ';
                                                echo $allresult[$i]['Duree_de_stage'];
                                                echo '</small>';
                                                echo '<div class="d-flex justify-content-between align-items-center">';
                                                echo '<div class="btn-group">';
                                                if (IsOnWhishList($_SESSION['sess_user_id'], $allresult[$i]['ID_internship_offers'])) {
                                                    echo '<button type="submit" name="btn_DELET" class="btn btn-sm btn-outline-secondary">';
                                                    echo '<i class="fas fa-heart"></i>';
                                                    echo ' ';
                                                    echo 'On Whishlist';
                                                } else {
                                                    echo '<button type="submit" name="btn_comp" class="btn btn-sm btn-outline-secondary">';
                                                    echo '<i class="far fa-heart"></i>';
                                                    echo ' ';
                                                    echo 'Add to Whishlist';
                                                }
                                                echo '</button>';
                                            } elseif ($allresult[$i]['First_name']) {
                                                echo '<div class="card-body">';
                                                echo '<h4>';
                                                echo $allresult[$i]['First_name'] . ' ' . $allresult[$i]['Last_name'];
                                                echo '</h4>';
                                                echo '<div class="d-flex justify-content-between align-items-center">';
                                                echo '<div class="btn-group">';
                                                echo '<button type="submit" name="btn" class="btn btn-sm btn-outline-secondary">';
                                                echo "JSP";
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
</form>