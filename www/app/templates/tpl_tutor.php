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
                        <div class="btn btn-carac">Tutor</div>
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
                        <a href="../new_account.php" class="btn btn-modif">Create student account</a>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <a href="../modify_account.php" class="btn btn-modif">Modify student account</a>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <a href="../delete_account.php" class="btn btn-modif">Delete student account</a>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <a href="../new_enterprise.php" class="btn btn-modif">Create enterprise</a>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <a href="../modify_enterprise.php" class="btn btn-modif">Modify enterprise</a>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <a href="../delete_enterprise.php" class="btn btn-modif">Delete enterprise</a>
                    </div>
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
                        <?php for ($i = 0; $i < count($StatsPeople); $i++) : ?>
                            <tr>
                                <td><? echo $StatsPeople[$i]['First_name'] ?></td>
                                <td><? echo $StatsPeople[$i]['Last_name'] ?></td>
                                <td><? echo $StatsPeople[$i]['ID_campus'] ?></td>
                                <td><? echo $StatsPeople[$i]['Duree_de_stage'] ?></td>
                                <td><? echo $StatsPeople[$i]['Base_remuneration'] ?></td>
                            </tr>
                        <?php endfor; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>