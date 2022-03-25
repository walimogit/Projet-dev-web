<?php
function isLoggedIn(){
    return isset($_SESSION['sess_user_id']);
}

function isStudent() {
    if(!isLoggedIn())
        return false;
    foreach($_SESSION['sess_roles'] as $value){
        if($value['ID_role'] === 1)
            return true;
    }
    return false;
}

function isDelegate() {
    if(!isLoggedIn())
        return false;
    foreach($_SESSION['sess_roles'] as $value){
        if($value['ID_role'] === 2)
            return true;
    }
    return false;
}

function isTutor() {
    if(!isLoggedIn())
        return false;
    foreach($_SESSION['sess_roles'] as $value){
        if($value['ID_role'] === 3)
            return true;
    }
    return false;
}

function isOther() {
    if(!isLoggedIn())
        return false;
    foreach($_SESSION['sess_roles'] as $value){
        if($value['ID_role'] === 4)
            return true;
    }
    return false;
}

function isAdmin() {
    if(!isLoggedIn())
        return false;
    foreach($_SESSION['sess_roles'] as $value){
        if($value['ID_role'] === 5)
            return true;
    }
    return false;
}

function isEnterprise() {
    if(!isLoggedIn())
        return false;
    foreach($_SESSION['sess_roles'] as $value){
        if($value['ID_role'] === 6)
            return true;
    }
    return false;
}

function Search(){
    require("bdd.php");
    $tab = [];
    if (isAdmin() OR isTutor() OR isStudent() OR isDelegate()){
        $query = 'SELECT * From Enterprise where Booldel=1 ';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value){
        array_push($tab , $value['Name_enterprise']);           
        }
    }

    if (isAdmin() OR isTutor() OR isStudent() OR isDelegate()){
        $query = 'SELECT * From Internship_offers where Boolsuppr=1';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value){
        array_push($tab , $value['Competense']);           
        }
    }
    if (isAdmin() OR isDelegate()){
        $query = 'SELECT People.ID_people, First_name, Last_name FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 3;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value){
            array_push($tab , $value);
        }
    }
    if (isAdmin() OR isTutor() OR isDelegate()){
        $query = 'SELECT People.ID_people, First_name, Last_name FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 2;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value){
            array_push($tab , $value);
        }
    }
    if (isAdmin() OR isTutor() OR isDelegate()){
        $query = 'SELECT People.ID_people, First_name, Last_name FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 1;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value){
            array_push($tab , $value);
        }
    }
    return $tab;
}

function CreateEnterprise($name, $Number_accepted, $id_people){
    require("bdd.php");
    try{ 
        $query = 'INSERT INTO Enterprise, ID_enterprise, Name_enterprise, Number_interns_accepted, Booldel, ID_people VALUES (NULL, :name, :number1, 1, :numberid);'; // 1 = booldel
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('name', $name, PDO::PARAM_STR);
        $stmt->bindValue('number1', $Number_accepted, PDO::PARAM_STR);
        $stmt->bindValue('numberid', $id_people, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $stmt->fetchAll();
        if(!empty($rows)) {
            return true;
          } else {
            $msg = "ERREUR";
          }
        } catch (PDOException $e) {
          $msg = "Error : ".$e->getMessage(); 
        }
        return $msg;
    }



?>