<div class="row">
    <div class="col">
        <h1>Accueil !</h1>
    </div>
</div>
<?php  if(isStudent()): ?>

<a href="../annonces.php">Annonces</a>
étudiant

<?php endif; ?>

<?php  if(isDelegate()): ?>

délégué

<?php endif; ?>

<?php  if(isTutor()): ?>

tuteur

<?php endif; ?>

<?php  if(isOther()): ?>

other

<?php endif; ?>

<?php  if(isAdmin()): ?>

admin

<?php endif; ?>

<?php  if(isEnterprise()): ?>

enterprise

<?php endif; ?>