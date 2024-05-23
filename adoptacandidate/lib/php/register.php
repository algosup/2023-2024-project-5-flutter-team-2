<?php
   include "connection.php";
   header('Content-Type: application/json');

   $FirstName = $_POST['FirstName'] ?? '';
   $LastName = $_POST['LastName'] ?? '';
   $Phone = $_POST['Phone'] ?? '';
   $Email = $_POST['Email'] ?? '';
   $City = $_POST['City'] ??'';
   $Password = $_POST['Password'] ?? '';

   echo json_encode([
        "result"=>[
            $FirstName,
            $LastName,
            $Phone,
            $Email,
            $City,
            $Password
        ]
   ])

?>