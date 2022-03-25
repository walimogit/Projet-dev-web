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

function loadSearch() {
    if(!isLoggedIn())
        return false;
    
    if(isStudent()){

    }
    if(isDelegate()){

    }
    if(isTutor()){

    }
    if(isTutor()){

    }
    if(isOther()){

    }
    if(isEnterprise()){

    }

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
        $query = 'SELECT * FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 3;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value){
        array_push($tab , $value['First_name'], $value['Last_name']);
        }
    }
    if (isAdmin() OR isTutor() OR isDelegate()){
        $query = 'SELECT * FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 2;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value){
        array_push($tab , $value['First_name'], $value['Last_name']);
        }
    }
    if (isAdmin() OR isTutor() OR isDelegate()){
        $query = 'SELECT * FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 1;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value){
        array_push($tab , $value['First_name'], $value['Last_name']);
        }
    }
    
    
    

    return $tab;
}




?>