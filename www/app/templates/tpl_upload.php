<main>
    <section>
        <div class="row pt-3">
            <div class="col">
                <h1 class="lead">Upload your files <i class="fas fa-upload"></i></h1>
                <form action="upload.php" method="post" enctype="multipart/form-data">
                    <label for="file">File's name:</label>
                    <input type="file" class="form-control" name="file" id="file" multiple>
                    <br />
                    <input type="submit" name="submit" value="Submit" />
                </form>
            </div>
            <div class="col">
                <h1 class="lead">and Download them <i class="fas fa-download"></i></h1>
                <form action="upload.php" method="post" enctype="multipart/form-data">
                    <label for="file">Filename:</label>
                    <input type="file" name="file" id="file" />
                    <br />
                    <input type="submit" name="submit" value="Submit" />
                </form>
            </div>
        </div>
    </section>
</main>
</div>