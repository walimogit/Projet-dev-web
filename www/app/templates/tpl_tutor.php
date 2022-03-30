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
                        <button class="btn btn-modif" data-bs-toggle="modal" data-bs-target="#exampleModal">Create student account</button>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <div class="btn btn-modif">Offer management</div>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <div class="btn btn-modif">Create enterprise</div>
                    </div>
                </div>
                <div class="col col-gest">
                    <div class="row">
                        <div class="btn btn-modif">Modify/delete enterprise</div>
                    </div>
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
                        <?php for ($i = 0; $i < count($StatsPeople); $i++) : ?>
                            <tr>
                                <td><? echo $StatsPeople[$i]['First_name'] ?></td>
                                <td><? echo $StatsPeople[$i]['Last_name'] ?></td>
                                <td><? echo $StatsPeople[$i]['Duree_de_stage'] ?></td>
                                <td><? echo $StatsPeople[$i]['Base_remuneration'] ?></td>
                            </tr>
                        <?php endfor; ?>
                    </tbody>
                </table>
            </div>
            <!-- Modal
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="tutor.php" method="POST">
                                <div class="mb-3">
                                    <label for="floatingInput">First name</label>
                                    <input class="form-control type=" text" name="first_name" id="first_name" value="" autocomplete="off" />
                                </div>
                                <div class="mb-3">
                                    <label for="floatingInput">Last name</label>
                                    <input class="form-control type=" text" name="last_name" id="last_name" value="" autocomplete="off" />
                                </div>
                                <div class="mb-3">
                                    <label for="floatingInput">Role</label>
                                    <input class="form-control type=" text" name="role" id="role" value="" autocomplete="off" />
                                </div>
                                <div class="mb-3">
                                    <label for="floatingInput">Login</label>
                                    <input class="form-control type=" text" name="login" id="login" value="" autocomplete="off" />
                                </div>
                                <div class="mb-3">
                                    <label for="floatingPassword">Password</label>
                                    <input type="password" class="form-control" name="password" id="password" value="" autocomplete="off" />

                                </div>
                                <?php if (!empty($msg)) { ?>
                                    <p class="alert alert-danger alert-dismissible fade show"><?php echo $msg; ?></p>
                                <?php } ?>
                                <button type="button" class="btn btn-secondary" name="BtnNewAccount" data-bs-dismiss="modal">Close</button>
                                <button type="submit" name="BtnNewAccount" id="BtnNewAccount" class="btn btn-primary">Create Account</button>
                                <button name="BtnNewAccount" class="btn btn-primary" type="submit">Create Account</button>
                            </form>
                        </div>
                        <div class="modal-footer">

                        </div>

                    </div>
                </div>
            </div> -->
        </div>
    </div>
</main>