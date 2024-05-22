<?php
   $host = "localhost";
   $dbname = "id22203636_adopt1candidat";
   $user = "id22203636_adopt1candidat";
   $pass = "hbhzhi132bizdz\^S";
    
   
   Try{
      $db = new PDO("mysql:host = $host; dbname=$dbname", $user, $pass);
      echo "connected";
   } catch (\Throwable $th) {
      echo "Error: ".$th->getMessage();
   }
    // Connection db
    /*
    * Regarde sur la page si jamais tu as une erreur, si tu vois que la page est blanche, ou que tu as un message de success
    */

    // Récupération de ce que l'URL contient
    // Préparation de la base de donnée (et de la requête à écrire dedans)
    // Envoie
    // Renvoie de code de succès
?>