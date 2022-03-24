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



?>