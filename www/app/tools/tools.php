<?php
function isLoggedIn()
{
    return isset($_SESSION['sess_user_id']);
}

function isStudent()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 1)
            return true;
    }
    return false;
}

function isDelegate()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 2)
            return true;
    }
    return false;
}

function isTutor()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 3)
            return true;
    }
    return false;
}

function isOther()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 4)
            return true;
    }
    return false;
}

function isAdmin()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 5)
            return true;
    }
    return false;
}

function isEnterprise()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 6)
            return true;
    }
    return false;
}

function Search()
{
    require("bdd.php");
    $tab = [];
    if (isAdmin() or isTutor() or isStudent() or isDelegate()) {
        $query = 'SELECT * From Enterprise where Booldel=1 ';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value) {
            array_push($tab, $value['Name_enterprise']);
        }
    }

    if (isAdmin() or isTutor() or isStudent() or isDelegate()) {
        $query = 'SELECT * From Internship_offers where Boolsuppr=1';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value) {
            array_push($tab, $value['Competense']);
        }
    }
    if (isAdmin() or isDelegate()) {
        $query = 'SELECT People.ID_people, First_name, Last_name FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 3;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value) {
            array_push($tab, $value);
        }
    }
    if (isAdmin() or isTutor() or isDelegate()) {
        $query = 'SELECT People.ID_people, First_name, Last_name FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 2;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value) {
            array_push($tab, $value);
        }
    }
    if (isAdmin() or isTutor() or isDelegate()) {
        $query = 'SELECT People.ID_people, First_name, Last_name FROM People JOIN Own WHERE People.ID_people = Own.ID_people and ID_role = 1;';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value) {
            array_push($tab, $value);
        }
    }
    return $tab;
}

function CreateEnterprise($name, $Number_accepted, $id_people)
{
    require("bdd.php");
    try {
        $query = 'INSERT INTO Enterprise, ID_enterprise, Name_enterprise, Number_interns_accepted, Booldel, ID_people VALUES (NULL, :name, :number1, 1, :numberid);'; // 1 = booldel
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('name', $name, PDO::PARAM_STR);
        $stmt->bindValue('number1', $Number_accepted, PDO::PARAM_STR);
        $stmt->bindValue('numberid', $id_people, PDO::PARAM_STR);
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
}

function UpdateEnterprise($name, $Number_accepted, $id_people, $ID_enterprise)
{
    require("bdd.php");
    try {
        $query = 'UPDATE Entreprise SET Name_entreprise = :name, Number_interns_accepted = :number1, ID_people = :numberid, WHERE Enterprise.ID_enterprise = :numberidEntre';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('name', $name, PDO::PARAM_STR);
        $stmt->bindValue('number1', $Number_accepted, PDO::PARAM_STR);
        $stmt->bindValue('numberid', $id_people, PDO::PARAM_STR);
        $stmt->bindValue('numberidEntre', $ID_enterprise, PDO::PARAM_STR);
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
}

function DeleteEnterprise($ID_enterprise)
{
    require("bdd.php");
    try {
        $query = 'UPDATE Entreprise SET Booldel = "0" WHERE Enterprise.ID_enterprise = :numberidEntre';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('numberidEntre', $ID_enterprise, PDO::PARAM_STR);
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
}

function EvaluateEntreprise($ID_enterprise, $note, $id_people)
{
    require("bdd.php");
    if (isTutor()) {
        try {
            $query = 'INSERT INTO Pilot_trust ID_Pilot_trust, Pilot_trust, Booldel, ID_enterprise, ID_people VALUES (NULL, :note, 1, :identreprise, :idpeople);'; // 1 = booldel
            $stmt = $bdd->prepare($query);
            $stmt->bindParam('note', $note, PDO::PARAM_STR);
            $stmt->bindValue('identreprise', $ID_enterprise, PDO::PARAM_STR);
            $stmt->bindValue('idpeople', $id_people, PDO::PARAM_STR);
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
    } else {
        try {
            $query = 'INSERT INTO Evaluation_interns ID_evaluation_interns, Evaluation_interns, Booldel, ID_enterprise, ID_people VALUES (NULL, :note, 1, :identreprise, :idpeople);'; // 1 = booldel
            $stmt = $bdd->prepare($query);
            $stmt->bindParam('note', $note, PDO::PARAM_STR);
            $stmt->bindValue('identreprise', $ID_enterprise, PDO::PARAM_STR);
            $stmt->bindValue('idpeople', $id_people, PDO::PARAM_STR);
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
    }
}

function GetStatsEntreprise($ID_enterprise)
{ //renvoie directement la moyenne des notes par id d'entreprise
    require("bdd.php");
    $stats = [];
    try {
        $query = 'SELECT Enterprise.ID_enterprise, Number_interns_accepted, AVG(Evaluation_interns), AVG(Pilot_trust) FROM Enterprise, Evaluation_interns, Pilot_trust WHERE Enterprise.ID_enterprise =:enterprise ;'; // 
        $stmt->bindParam('enterprise', $ID_enterprise, PDO::PARAM_STR);
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if (!empty($rows)) {
            foreach ($rows as $value) {
                array_push($stats, $value['Number_interns_accepted'], $value['AVG(Evaluation_interns)'], $value['AVG(Pilot_trust)']);
            }
            return $stats;
        } else {
            $msg = "ERREUR";
        }
    } catch (PDOException $e) {
        $msg = "Error : " . $e->getMessage();
    }
    return $msg;
}

function CreateOffer($competense, $time, $remunerate, $timestamp, $place, $people)
{
    require("bdd.php");
    try {
        $query = 'INSERT INTO Internship_offers ID_internship_offers, Competense, Duree_de_stage, Base_remuneration, Date_offre, Nb_places_offertes, Boolsuppr VALUES (NULL, :competense, :time, :remunerate, :timestamp, :place, 1)';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('competense', $competense, PDO::PARAM_STR);
        $stmt->bindValue('time', $time, PDO::PARAM_STR);
        $stmt->bindValue('remunerate', $remunerate, PDO::PARAM_STR);
        $stmt->bindValue('timestamp', $timestamp, PDO::PARAM_STR);
        $stmt->bindValue('place', $place, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $stmt->fetchAll();
        if (!empty($rows)) {
            $query = 'SELECT MAX(ID_internship_offers) FROM Internship_offers';
            $stmt = $bdd->prepare($query);
            $stmt->execute();
            $rows = $stmt->fetchAll();
            if (!empty($rows)) {
                $value = $rows[0]['MAX(ID_internship_offers)'];
                $query = 'INSERT INTO `Being_proposed` (`ID_people`, `ID_internship_offers`) VALUES (:people, :id)';
                $stmt->bindParam('people', $people, PDO::PARAM_STR);
                $stmt->bindValue('id', $value, PDO::PARAM_STR);
                $stmt = $bdd->prepare($query);
                $stmt->execute();
                $rows = $stmt->fetchAll();
                if (!empty($rows)) {
                    return TRUE;
                } else
                    $msg = "ERREUR";
            } else {
                $msg = "ERREUR";
            }
        } else {
            $msg = "ERREUR";
        }
    } catch (PDOException $e) {
        $msg = "Error : " . $e->getMessage();
    }
    return $msg;
}

function UpdateOffer($offer, $competense, $time, $remunerate, $timestamp, $place)
{
    require("bdd.php");
    try {
        $query = 'UPDATE Internship_offers SET Competense =:competense, Duree_de_stage = :time, `Base_remuneration` = :remunerate, `Date_offre` = :timestamp, `Nb_places_offertes` = :place WHERE Internship_offers.ID_internship_offers = :offer';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('competense', $competense, PDO::PARAM_STR);
        $stmt->bindValue('time', $time, PDO::PARAM_STR);
        $stmt->bindValue('remunerate', $remunerate, PDO::PARAM_STR);
        $stmt->bindValue('timestamp', $timestamp, PDO::PARAM_STR);
        $stmt->bindValue('place', $place, PDO::PARAM_STR);
        $stmt->bindValue('offer', $offer, PDO::PARAM_STR);
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
}

function DeleteOffer($ID_offer)
{
    require("bdd.php");
    try {
        $query = 'UPDATE Internship_offers SET Boolsuppr = 1 WHERE Internship_offers.ID_internship_offers = :ID_offer';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('ID_offer', $ID_offer, PDO::PARAM_STR);
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
}

function GetStatsOffer($ID_offer)
{
    require("bdd.php");
    $stats = [];
    try {
        $query = 'ALLED'; 
        $stmt->bindParam('ID_offer', $ID_offer, PDO::PARAM_STR);
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if (!empty($rows)) {
            foreach ($rows as $value) {
                array_push($stats, $value[''], $value[''], $value['']);
            }
            return $stats;
        } else {
            $msg = "ERREUR";
        }
    } catch (PDOException $e) {
        $msg = "Error : " . $e->getMessage();
    }
    return $msg;
}



?>