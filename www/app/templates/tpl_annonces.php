<?php foreach($annonces as $annonce): ?>

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
</div>

<?php endforeach; ?>

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