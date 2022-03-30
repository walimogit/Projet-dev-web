<?php
session_start();
require_once("tools/bdd.php");
require_once("tools/tools.php");

if(!isLoggedIn())
    header('Location: login.php');

$search = trim($_GET['search']);
$result_stage = Search2();
require_once('templates/tpl_header.php');

//  $result = Search();

foreach (Search() as $key) {
    if ($key['Name_enterprise'] === $search){
        $result[] = $key['ID_enterprise'] . ' ' . $key['Name_enterprise'] . ' ' . $key['Number_interns_accepted'];
    }elseif ($key['Competense'] === $search){
        $result[] = $key['Competense'] . ' ' . $key['Duree_de_stage'] .  ' ' . $key['Base_remuneration'] . ' ' . $key['Date_offre'] . ' ' . $key['Nb_places_offertes'];
    }elseif ($key[''] === $search){
        $result[] = '';
    }elseif ($key[''] === $search){
        $result[] = '';
    }    
}
if (empty($result)){
    $result = 'Nothing found';
}


require_once('templates/tpl_search.php');
require_once('templates/tpl_footer.php');


?>