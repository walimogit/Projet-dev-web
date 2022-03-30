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

function isDelegateStudent()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 21)
            return true;
    }
    return false;
}

function isDelegateTutor()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 23)
            return true;
    }
    return false;
}

function isDelegateOther()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 24)
            return true;
    }
    return false;
}

function isDelegateAdmin()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 25)
            return true;
    }
    return false;
}

function isDelegateEnterprise()
{
    if (!isLoggedIn())
        return false;
    foreach ($_SESSION['sess_roles'] as $value) {
        if ($value['ID_role'] === 26)
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

function changeRoleDelegate($ID_role, $ID_people)
{
    require("bdd.php");
    try {
        
        $query = 'UPDATE `Own` SET `ID_role` = :idrole WHERE `Own`.`ID_role` = :id_role AND `Own`.`ID_people` = :id_people';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('idrole', $ID_role, PDO::PARAM_STR);
        $stmt->bindValue('id_people', $ID_people, PDO::PARAM_STR);
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
            array_push($tab, $value);
        }
    }

    if (isAdmin() or isTutor() or isStudent() or isDelegate()) {
        $query = 'SELECT * From Internship_offers where Boolsuppr=1';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        foreach ($rows as $value) {
            array_push($tab, $value);
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

function Search2()
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

function CreateEnterprise($name, $Number_accepted, $id_people, $city, $sector)
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

        $ID = $pdo->lastInsertId(); 
       
        if (!empty($rows)) {
            try {
                $query1 = 'INSERT INTO `Being_located` (`ID_City`, `ID_enterprise`) VALUES (:city, :ID)';
                $stmt = $bdd->prepare($query1);
                $stmt->bindParam('city', $city, PDO::PARAM_STR);
                $stmt->bindValue('ID', $ID, PDO::PARAM_STR);
                $stmt->execute();
                $rows1 = $stmt->fetchAll();
                if (!empty($rows1)) {
                    
                    try {
                        $query = 'INSERT INTO `Being_in` (`ID_sector`, `ID_enterprise`) VALUES (:sector, :id)';
                        $stmt = $bdd->prepare($query);
                        $stmt->bindParam('sector', $sector, PDO::PARAM_STR);
                        $stmt->bindValue('id', $ID, PDO::PARAM_STR);
                        $stmt->execute();
                        $rows2 = $stmt->fetchAll();

                        if (!empty($rows2)) {
                            return true;
                        } else {
                            $msg = "ERREUR";
                        }
                    } catch (PDOException $e) {
                        $msg = "Error : " . $e->getMessage();
                    }
                    
                } else {
                    $msg = "ERREUR";
                }
            } catch (PDOException $e) {
                $msg = "Error : " . $e->getMessage();
            }
        } else {
            $msg = "ERREUR";
        }
    } catch (PDOException $e) {
        $msg = "Error : " . $e->getMessage();
    }
    return $msg;
}

function UpdateEnterprise($name, $Number_accepted, $id_people, $ID_enterprise, $city, $sector)
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
            try {
                $query = 'UPDATE `Being_located` SET `ID_City` = :city WHERE `Being_located`.`ID_enterprise` = :ID_enterprise';
                $stmt = $bdd->prepare($query);
                $stmt->bindParam('city', $city, PDO::PARAM_STR);
                $stmt->bindValue('ID_enterprise', $ID_enterprise, PDO::PARAM_STR);
                $stmt->execute();
                $rows1 = $stmt->fetchAll();
                if (!empty($rows1)) {
                    try {
                        $query = 'UPDATE `Being_in` SET `ID_sector` = :sector WHERE `Being_in`.`ID_enterprise` = :ID_enterprise';
                        $stmt = $bdd->prepare($query);
                        $stmt->bindParam('sector', $sector, PDO::PARAM_STR);
                        $stmt->bindValue('ID_enterprise', $ID_enterprise, PDO::PARAM_STR);
                        $stmt->execute();
                        $rows2 = $stmt->fetchAll();
                        if (!empty($rows2)) {
                            
                            return true;
                        } else {
                            $msg = "ERREUR";
                        }
                    } catch (PDOException $e) {
                        $msg = "Error : " . $e->getMessage();
                    } 
                } else {
                    $msg = "ERREUR";
                }
            } catch (PDOException $e) {
                $msg = "Error : " . $e->getMessage();
            }
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
{ //https://openclassrooms.com/forum/sujet/insert-into-sur-plusieurs-tables
    require("bdd.php");
    try {
        $query1 = 'INSERT INTO Internship_offers ID_internship_offers, Competense, Duree_de_stage, Base_remuneration, Date_offre, Nb_places_offertes, Boolsuppr VALUES (NULL, :competense, :time, :remunerate, :timestamp, :place, 1)';
        $stmt = $bdd->prepare($query1);
        $stmt->bindParam('competense', $competense, PDO::PARAM_STR);
        $stmt->bindValue('time', $time, PDO::PARAM_STR);
        $stmt->bindValue('remunerate', $remunerate, PDO::PARAM_STR);
        $stmt->bindValue('timestamp', $timestamp, PDO::PARAM_STR);
        $stmt->bindValue('place', $place, PDO::PARAM_STR);
        $stmt->execute();

        $LastID = $pdo->lastInsertId();     // A TESTER !!!!!!!!!!!!!!!!!!!!!!!

        $query = 'INSERT INTO `Being_proposed` (`ID_people`, `ID_internship_offers`) VALUES (:people, :id)';
        $stmt->bindParam('people', $people, PDO::PARAM_STR);
        $stmt->bindValue('id', $LastID, PDO::PARAM_STR);
        $stmt = $bdd->prepare($query);
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
        $query = 'SELECT * FROM Internship_offers where ID_internship_offers=:ID_offer'; //Penser à join l'id de l'entreprise à l'offre
        $stmt->bindParam('ID_offer', $ID_offer, PDO::PARAM_STR);
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if (!empty($rows)) {
            foreach ($rows as $value) {
                array_push($stats, $value['Duree_de_stage'], $value['Base_remuneration'], $value['Date_offre'], $value['Nb_places_offertes']);
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

function GetAllStatsOffer()
{
    require("bdd.php");
    try {
        $query = 'SELECT * FROM Internship_offers JOIN Propose WHERE Boolsuppr =  1 AND Propose.ID_internship_offers = Internship_offers.ID_internship_offers';
        $stmt = $bdd->prepare($query);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if (!empty($rows)) {
            return $rows;
        } else {
            $msg = "ERREUR";
        }
    } catch (PDOException $e) {
        $msg = "Error : " . $e->getMessage();
    }
    return $msg;
}

function CreatePeople($First_name, $Last_name, $Login, $Password, $role)
{
    require("bdd.php");
    try {
        $query1 = 'INSERT INTO `People` (`ID_people`, `First_name`, `Last_name`, `Login`, `Password`, `Booldel`) VALUES (NULL, :First_name, :Last_name, :Login, :Password, 1)';
        $stmt = $bdd->prepare($query1);
        $stmt->bindParam('First_name', $First_name, PDO::PARAM_STR);
        $stmt->bindValue('Last_name', $Last_name, PDO::PARAM_STR);
        $stmt->bindValue('Login', $Login, PDO::PARAM_STR);
        $stmt->bindValue('Password', $Password, PDO::PARAM_STR);
        $stmt->execute();

        $LastID = $pdo->lastInsertId();     // A TESTER !!!!!!!!!!!!!!!!!!!!!!!

        $query2 = 'INSERT INTO `Own` (`ID_role`, `ID_people`) VALUES ($role, $LastID)';
        $stmt = $bdd->prepare($query2);
        $stmt->bindParam('role', $role, PDO::PARAM_STR);
        $stmt->bindValue('LastID', $LastID, PDO::PARAM_STR);
        $stmt->execute();

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

function UpdatePeople($First_name, $Last_name, $Login, $Password, $role, $id_people)
{
    require("bdd.php");
    try {
        $query = 'UPDATE People SET First_name = :First_name, `Last_name` = :Last_name, `Login` = :Login, `Password` = :Password WHERE own.ID_people = :id_people AND People.ID_people = :id_people AND Own.ID_role = :role';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('First_name', $First_name, PDO::PARAM_STR);
        $stmt->bindValue('Last_name', $Last_name, PDO::PARAM_STR);
        $stmt->bindValue('Login', $Login, PDO::PARAM_STR);
        $stmt->bindValue('Password', $Password, PDO::PARAM_STR);
        $stmt->bindValue('role', $role, PDO::PARAM_STR);
        $stmt->bindValue('id_people', $id_people, PDO::PARAM_STR);
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

function DeletePeople($id_people)
{
    require("bdd.php");
    try {
        $query = 'UPDATE People SET Booldel = 0 WHERE ID_people = :id_people';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('id_people', $id_people, PDO::PARAM_STR);
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

function GetStatAdvancement($id_people){
    require("bdd.php");
    try {
        $query = 'SELECT * FROM Being_proposed WHERE ID_people = :id_people;';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('id_people', $id_people, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $stmt->fetchAll();
        if (!empty($rows)) {
            foreach ($rows as $value) {
                array_push($stats, $value['ID_internship_offers'], $value['Advancement']);
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

function GetOffer($id_people, $id_offer){
    require("bdd.php");
    try {
        $query = 'INSERT INTO `Being_proposed` (`ID_people`, `ID_internship_offers`, `Advancement`) VALUES (:id_people, :id_offer, 1)';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('id_people', $id_people, PDO::PARAM_STR);
        $stmt->bindValue('id_offer', $id_offer, PDO::PARAM_STR);
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

function UpdateOfferAdvancement($id_people, $id_offer, $advancement){
    require("bdd.php");
    try {
        $query = 'UPDATE `Being_proposed` SET `Advancement` = :advancement WHERE `Being_proposed`.`ID_people` = :id_people AND `Being_proposed`.`ID_internship_offers` = :id_offer';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('advancement', $advancement, PDO::PARAM_STR);
        $stmt->bindValue('id_people', $id_people, PDO::PARAM_STR);
        $stmt->bindValue('id_offer', $id_offer, PDO::PARAM_STR);
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

function AddToWishlist($id_people, $id_offer){
    require("bdd.php");
    try {
        $query = 'INSERT INTO `Being_proposed` (`ID_people`, `ID_internship_offers`, `Advancement`) VALUES (:id_people, :id_offer, 0)';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('id_people', $id_people, PDO::PARAM_STR);
        $stmt->bindValue('id_offer', $id_offer, PDO::PARAM_STR);
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

function GetWishlist($id_people){
    require("bdd.php");
    try {
        $query = 'SELECT * FROM Being_proposed WHERE ID_people = :id_people AND Advancement = 0;';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('id_people', $id_people, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $stmt->fetchAll();
        if (!empty($rows)) {
            foreach ($rows as $value) {
                array_push($stats, $value['ID_internship_offers'], $value['Advancement']);
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

function RemoveWishlist($id_people, $id_offer){
    require("bdd.php");
    try {
        $query = 'DELETE FROM Being_proposed WHERE `Being_proposed`.`ID_people` = :id_people AND `Being_proposed`.`ID_internship_offers` = :id_offer';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('id_people', $id_people, PDO::PARAM_STR);
        $stmt->bindValue('id_offer', $id_offer, PDO::PARAM_STR);
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

function GetStatsStudent($id_people){
    require("bdd.php");
    try {
        $query = 'SELECT * FROM people, Being_proposed JOIN Internship_offers WHERE Being_proposed.ID_people = 142 AND people.ID_people = 142 AND Being_proposed.ID_internship_offers=internship_offers.ID_internship_offers AND Boolsuppr = 1';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('id_people', $id_people, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $stmt->fetchAll();
        if (!empty($rows)) {
            return $rows;
        } else {
            $msg = "ERREUR";
        }
    } catch (PDOException $e) {
        $msg = "Error : " . $e->getMessage();
    }
    return $msg;
}


function AddAFile(){

    $ID_people =  $_SESSION['sess_user_id'];
    $Directory = "./tools/doc_people/$ID_people/";
    $DirectoryFile = "$Directory" . $_FILES["file"]["name"];

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
                echo PathToBDD($DirectoryFile,  $ID_people);
            }     
        }
    }
}

function PathToBDD($DirectoryFile,  $ID_people){
    require("bdd.php");
    try {
        $query = 'INSERT INTO `File` (`ID_Path`, `Path`) VALUES (NULL, :directory)'; 
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('directory', $DirectoryFile, PDO::PARAM_STR);
        $stmt->execute();

        $LastID = $bdd->lastInsertId();

        if ($query) {
            try {
                $query1 = 'INSERT INTO `Upload` (`ID_Path`, `ID_people`) VALUES (:id_path, :id_people)'; 
                $stmt = $bdd->prepare($query1);
                $stmt->bindParam('id_people', $ID_people, PDO::PARAM_STR);
                $stmt->bindParam('id_path', $LastID, PDO::PARAM_STR);
                $stmt->execute();

                if ($query1) {
                    $msg = $DirectoryFile;
                } else {
                    $msg = "ERREUR 2";
                }
            } catch (PDOException $e) {
                $msg = "Error : " . $e->getMessage();
            }
        } else {
            $msg = "ERREUR 1";
        }
    } catch (PDOException $e) {
        $msg = "Error : " . $e->getMessage();
    }

    return $msg;
}

function GetFilePeople($id_people){
    require("bdd.php");
    try {
        $query = 'SELECT * FROM upload JOIN file WHERE upload.ID_people = :id_people and file.ID_Path=upload.ID_Path';
        $stmt = $bdd->prepare($query);
        $stmt->bindParam('id_people', $id_people, PDO::PARAM_STR);
        $stmt->execute();
        $rows = $stmt->fetchAll();
        if (!empty($rows)) {

            return $rows;
        } else {
            $msg = "ERREUR";
        }
    } catch (PDOException $e) {
        $msg = "Error : " . $e->getMessage();
    }
    return $msg;
}

function DownloadFile($path, $name){ //attention le nom doit contenir l'extension, exemple :
    // $path = './tools/doc_people/test.docx';
    // DownloadFile($path, 'test.docx');
    if (file_exists($path)) {
        header("Content-disposition: attachment; filename=$name"); 
        header("Content-Type: application/force-download");
        header("Content-Length: ".filesize($path));
        header("Pragma: no-cache");
        header("Cache-Control: must-revalidate, post-check=0, pre-check=0, public");
        header("Expires: 0");
    }
}

?>