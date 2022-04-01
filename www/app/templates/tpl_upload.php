<main>
    <section>
        <div class="row pt-5">
            <div class="col">
                <h1 class="lead">Upload your files <i class="fas fa-upload"></i></h1>

                <?php
                if (isset($_POST['submit'])) {

                echo    '<style type="text/css"> .cachage{ display:none; } </style>' ;

                echo    '<fieldset disabled>';
                echo        '<form class="pb-5" action="upload.php" method="post" enctype="multipart/form-data">';
                echo            '<label for="file">Send your CV</label>';
                echo            '<div class="input-group mb-3">';
                echo                '<input type="file" class="form-control" name="file" id="file"/>';
                echo                '<button type="submit" name="submit" value="Submit" class="btn btn-primary">Submit</button>';
                echo            '</div>';
                echo        '</form>';
                echo    '</fieldset>';
                echo    '<form class="pb-5" action="upload.php" method="post" enctype="multipart/form-data">';
                echo        '<label for="file">Send your Cover Letter</label>';
                echo        '<div class="input-group mb-3">';
                echo            '<input type="file" class="form-control" name="file" id="file"/>';
                echo            '<button type="submit" name="submit" value="Submit" class="btn btn-modif">Submit</button>';
                echo        '</div>';
                echo    '</form>';}
                ?>

                <form class="pb-5 cachage" action="upload.php" method="post" enctype="multipart/form-data">
                    <label for="file">Send your CV</label>
                    <div class="input-group mb-3">
                        <input type="file" class="form-control" name="file" id="file"/>
                        <button type="submit" name="submit" value="Submit" class="btn btn-modif">Submit</button>
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
            <form method="POST">
            <button type="submit" name="submitdownload" class="btn btn-result-b btn-sm btn-outline-secondary rounded">Download (beta)</button>
            </form>
            
            
        </div>
    </section>
</main>
</div>