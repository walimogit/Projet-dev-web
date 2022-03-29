<?php
session_start();
require("bdd.php");

$ID_people =  $_SESSION['sess_user_id'];
$Directory = "./doc_people/$ID_people/";


if ($_FILES["file"]["error"] > 0) {
    echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
} else {
    if (file_exists("$Directory" . $_FILES["file"]["name"])) {
        echo $_FILES["file"]["name"] . " already exists. ";
    } else {
        if (!is_dir("$Directory")){
            mkdir($Directory);
        }else{
            move_uploaded_file($_FILES["file"]["tmp_name"], $Directory . $_FILES["file"]["name"]);
            echo "Stored in: " . "$Directory" . $_FILES["file"]["name"];
        }     
    }
}

try {
    $query = 'INSERT INTO '; 
    $stmt = $bdd->prepare($query);
    $stmt->bindParam('id_people', $ID_people, PDO::PARAM_STR);
    $stmt->bindValue('directory', $Directory, PDO::PARAM_STR);
    $stmt->execute();
    $rows = $stmt->fetchAll();
    if (!empty($rows)) {
        return true;
    } else {
        $msg = "ERREUR";
    }
} catch (PDOException $e) {
    $msg = "Error : " . $e->getMessage();
}
return $msg;

