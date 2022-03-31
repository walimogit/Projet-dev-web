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
                <div class="btn btn-carac"><? echo $StatsOnePeople[0]['First_name'] ?></div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac"><? echo $StatsOnePeople[0]['Last_name'] ?></div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac"><? echo $StatsOnePeople[0]['Campus'] ?></div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac"><? echo $StatsOnePeople[0]['Class'] ?></div>
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
                            <th scope="col">ID People</th>
                            <th scope="col">First name</th>
                            <th scope="col">First last</th>
                            <th scope="col">ID Role</th>
                            <th scope="col">Role</th>
                            <th scope="col">Login</th>
                            <th scope="col"><a href="../new_account.php" class="btn btn-modif">Create</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php for ($i = 0; $i < count($StatsPeople); $i++) : ?>
                            <tr>
                                <form action="../modify_account.php" method="POST">
                                    <td><input type="text" name="ID_People" value="<? echo $StatsPeople[$i]['ID_people'] ?>" class="inputid" /></td>
                                    <td><input type="text" name="First_name" value="<? echo $StatsPeople[$i]['First_name'] ?>" /></td>
                                    <td><input type="text" name="Last_name" value="<? echo $StatsPeople[$i]['Last_name'] ?>" /></td>
                                    <td><input type="text" name="ID_role" value="<? echo $StatsPeople[$i]['ID_role'] ?>" class="inputid" /></td>
                                    <td><input type="text" name="Role" value="<? echo $StatsPeople[$i]['role'] ?>" /></td>
                                    <td><input type="text" name="Login" value="<? echo $StatsPeople[$i]['Login'] ?>" /></td>
                                    <td><button type="submit" class="btn btn-modif">Modify</button></td>
                                </form>
                            </tr>
                        <?php endfor; ?>
                    </tbody>
                </table>
            </div>
            <div class="table-responsive">
                <table class="table table-responsive">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">ID Entreprise</th>
                            <th scope="col">Entreprise</th>
                            <th scope="col">Number interns accepted</th>
                            <th scope="col">ID City</th>
                            <th scope="col">ID Sector</th>
                            <th scope="col">ID Manager</th>
                            <th scope="col"><a href="../new_account.php" class="btn btn-modif">Create</a></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php for ($i = 0; $i < count($AllStatsEntreprise); $i++) : ?>
                            <tr>
                                <form action="../modify_enterprise.php" method="POST">
                                    <td><input type="text" name="ID_Enterprise" value="<? echo $AllStatsEntreprise[$i]['ID_enterprise'] ?>" class="inputid" /></td>
                                    <td><input type="text" name="Name_enterprise" value="<? echo $AllStatsEntreprise[$i]['Name_enterprise'] ?>" /></td>
                                    <td><input type="text" name="Number_interns_accepted" value="<? echo $AllStatsEntreprise[$i]['Number_interns_accepted'] ?>" class="inputid" /></td>
                                    <td><input type="text" name="ID_City" value="<? echo $AllStatsEntreprise[$i]['ID_City'] ?>" class="inputid" /></td>
                                    <td><input type="text" name="ID_sector" value="<? echo $AllStatsEntreprise[$i]['ID_sector'] ?>" class="inputid" /></td>
                                    <td><input type="text" name="ID_Manager" value="<? echo $AllStatsEntreprise[$i]['ID_Manager'] ?>" class="inputid" /></td>
                                    <td><button type="submit" class="btn btn-modif">Modify</button></td>
                                </form>
                            </tr>
                        <?php endfor; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>
</div>