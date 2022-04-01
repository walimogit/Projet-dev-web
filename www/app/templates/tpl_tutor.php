<main class="container-fluid">
    <div class="row pt-2 pb-2">
        <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark mx-2" style="width: 280px;">
            <a href="#" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none"><span class="fs-4">Tutor</span></a>
        </div>
        <div class="col">
            <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark">
                <div class="nav-link text-white"><? echo $StatsOnePeople[0]['First_name'] ?></div>
            </div>
        </div>
        <div class="col">
            <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark">
                <div class="nav-link text-white"><? echo $StatsOnePeople[0]['Last_name'] ?></div>
            </div>
        </div>
        <div class="col">
            <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark">
                <div class="nav-link text-white"><? echo $StatsOnePeople[0]['Campus'] ?></div>
            </div>
        </div>
        <div class="col">
            <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark">
                <div class="nav-link text-white"><? echo $StatsOnePeople[0]['Class'] ?></div>
            </div>
        </div>
    </div>
    <div>
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
                                <td><input type="text" name="ID_People" value="<? echo $StatsPeople[$i]['ID_people'] ?>" class="inputid" readonly /></td>
                                <td><input type="text" name="First_name" value="<? echo $StatsPeople[$i]['First_name'] ?>" readonly /></td>
                                <td><input type="text" name="Last_name" value="<? echo $StatsPeople[$i]['Last_name'] ?>" readonly /></td>
                                <td><input type="text" name="ID_role" value="<? echo $StatsPeople[$i]['ID_role'] ?>" class="inputid" readonly /></td>
                                <td><input type="text" name="Role" value="<? echo $StatsPeople[$i]['role'] ?>" readonly /></td>
                                <td><input type="text" name="Login" value="<? echo $StatsPeople[$i]['Login'] ?>" readonly /></td>
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
                        <th scope="col"><a href="../new_enterprise.php" class="btn btn-modif">Create</a></th>
                    </tr>
                </thead>
                <tbody>
                    <?php for ($i = 0; $i < count($AllStatsEntreprise); $i++) : ?>
                        <tr>
                            <form action="../modify_enterprise.php" method="POST">
                                <td><input type="text" name="ID_Enterprise" value="<? echo $AllStatsEntreprise[$i]['ID_enterprise'] ?>" class="inputid" readonly /></td>
                                <td><input type="text" name="Name_enterprise" value="<? echo $AllStatsEntreprise[$i]['Name_enterprise'] ?>" readonly /></td>
                                <td><input type="text" name="Number_interns_accepted" value="<? echo $AllStatsEntreprise[$i]['Number_interns_accepted'] ?>" class="inputid" readonly /></td>
                                <td><input type="text" name="ID_City" value="<? echo $AllStatsEntreprise[$i]['ID_City'] ?>" class="inputid" readonly /></td>
                                <td><input type="text" name="ID_sector" value="<? echo $AllStatsEntreprise[$i]['ID_sector'] ?>" class="inputid" readonly /></td>
                                <td><input type="text" name="ID_Manager" value="<? echo $AllStatsEntreprise[$i]['ID_Manager'] ?>" class="inputid" readonly /></td>
                                <td><button type="submit" class="btn btn-modif">Modify</button></td>
                            </form>
                        </tr>
                    <?php endfor; ?>
                </tbody>
            </table>
        </div>
    </div>
    </div>
    <script src="../RunServiceWorker.js"></script>
</main>
</div>