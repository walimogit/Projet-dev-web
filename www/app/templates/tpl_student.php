<pre><?php

        var_dump($StatsStudent);

        ?></pre>
<main class="container-fluid">
    <div class="row">
        <div class="col-3"><br></br>
            <div class="row">
                <div class="col-4">
                    <div class="row row-gest">
                        <div class="btn btn-gest">Type</div>
                    </div>
                </div>
                <div class="col">
                    <div class="row row-gest">
                        <div class="btn btn-carac">Student</div>
                    </div>
                </div>
            </div><br></br>
            <div class="row row-gest">
                <div class="btn btn-carac">Name</div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac">First name</div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac">Campus</div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac">Promo</div>
            </div><br></br>
            <div class="row row-gest">
                <div class="col col-gest">
                    <div class="row">
                        <div class="btn btn-modif">Modify</div>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <div class="btn btn-modif">Validate</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col"><br></br>
            <div class="row">
                <div class="col col-gest">
                    <div class="row">
                        <div class="btn btn-modif">My internship : enterprises and offers</div>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <a href="../wishlist.php" class="btn btn-modif">My whishlist</a>
                    </div>
                </div><br></br>

                <div class="table-responsive">
                    <table class="table table-responsive">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">Competense</th>
                                <th scope="col">Advancement</th>
                                <th scope="col">Internship duration</th>
                                <th scope="col">Salary basis</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php for ($i = 0; $i < count($StatsStudent); $i++) : ?>
                                <tr>
                                    <td><? echo $StatsStudent[$i]['Competense'] ?></td>
                                    <td><? echo $StatsStudent[$i]['Advancement'] ?></td>
                                    <td><? echo $StatsStudent[$i]['Duree_de_stage'] ?></td>
                                    <td><? echo $StatsStudent[$i]['Base_remuneration'] ?></td>
                                </tr>
                            <?php endfor; ?>
                        </tbody>
                    </table>
                </div>

                <div class="row row-gest justify-content-md-center">
                    Big tableau sa mère
                </div>
            </div>
        </div>
    </div>
</main>
</div>