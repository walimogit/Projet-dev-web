<main>
    <section>
        <div class="row pt-5">
            <div class="col">
                <h1 class="lead">Upload your files <i class="fas fa-upload"></i></h1>
                <form class="pb-5" action="upload.php" method="post" enctype="multipart/form-data">
                    <label for="file">Send your CV</label>
                    <div class="input-group mb-3">
                        <input type="file" class="form-control" name="file" id="file" />
                        <button type="submit" name="submit" value="Submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
                <form class="pb-5" action="upload.php" method="post" enctype="multipart/form-data">
                    <label for="file">Send your CV</label>
                    <div class="input-group mb-3">
                        <input type="file" class="form-control" name="file" id="file" />
                        <button type="submit" name="submit" value="Submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
            <div class="col">
                <h1 class="lead">and Download them <i class="fas fa-download"></i></h1>
                <form action="upload.php" method="post" enctype="multipart/form-data">
                    <label for="file">Filename:</label>
                    <input type="file" name="file" id="file" />
                    <input type="submit" name="submit" value="Submit" />
                </form>
            </div>

        </div>
    </section>
</main>
</div>