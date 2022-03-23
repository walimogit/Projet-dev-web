<main class="main">
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <fieldset>
                    <h5>Nouvelles annonces</h5>
                </fieldset>
            </div>
            <?php foreach($annonces as $annonce): ?>
            <div class="carousel-item annonce">
                <fieldset>
                    <h5 class="col">
                        Annonce <?= $annonce ?>
                    </h5>
                    <div class="col">
                        Competense <?= $annonce ?>
                    </div>
                    <div class="col">
                        Duree_stage <?= $annonce ?>
                    </div>
                    <div class="col">
                        Base_remuneration <?= $annonce ?>
                    </div>
                    <div class="col">
                        Date_offre <?= $annonce ?>
                    </div>
                    <div class="col">
                        Nb_places_offertes <?= $annonce ?>
                    </div>
                </fieldset>
            </div>
            <?php endforeach; ?>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</main>


<!--<?php //foreach($annonces as $annonce): ?>

<div class="row">
    <div class="col-auto">
        <img src="https://picsum.photos/200" />
    </div>
    <div class="col">
        <div class="row">
            <div class="col">
                Annonce <?= $annonce ?>
            </div>
            <div class="col text-end">
                Date de stage
            </div>
        </div>
    </div>
</div>-->


<!--liste d'annonce-->

<!--formulaire ajout d'annonce-->

<form>
    <div class="row">
        <div class="col">
            <label>Nom</label>
            <input type="text" class="form-control" name="nom" />
        </div>
    </div>
</form>