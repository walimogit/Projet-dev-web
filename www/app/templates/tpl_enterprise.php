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
                        <div class="btn btn-carac">Enterprise</div>
                    </div>
                </div>
            </div><br></br>
            <div class="row row-gest">
                <div class="btn btn-carac">Name_enterprise</div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac">Sector</div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac">City</div>
            </div>
            <div class="row row-gest">   
                <div class="btn btn-carac">Number_interns_accepted</div>
            </div>
            <div class="row row-gest">
                <div class="btn btn-carac">Pilot_trust</div>
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
                        <div class="btn btn-modif">Internship offers</div>
                    </div>
            </div><br></br>

            <div class="row row-gest justify-content-md-center">
                Big tableau sa mère
            </div>
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
                        <?php for ($i = 0; $i < count($AllStatsEntreprise); $i++) : ?>
                            <tr>
                                <td><? echo $AllStatsEntreprise[$i]['Number_interns_accepted'] ?></td>
                                <td><? echo $AllStatsEntreprise[$i]['AVG(Evaluation_interns)'] ?></td>
                                <td><? echo $AllStatsEntreprise[$i]['AVG(Pilot_trust)'] ?></td>
                                
                            </tr>
                        <?php endfor; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>