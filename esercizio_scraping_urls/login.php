<?php

    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $username = $_POST["username"];
        $psw = $_POST["pw"];
        try{
            $con = new PDO("mysql:host=localhost;dbname=file","root");
            $con -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $command = $con -> query("SELECT id FROM utenti WHERE nickname = '" . $username . "' AND password = '" . $psw . "'");
            $id = $command -> fetch(PDO::FETCH_ASSOC);
            if($id == ""){
                echo "user not found";
                echo "<form action='login.html' method='post'><button type='submit' class='btn btn-outline-dark'>Login page</button></form>";
            }else{
                echo "<form action='numberRows.php' method='post'><button type='submit' class='btn btn-outline-dark'>Rows number</button></form>";
                echo "<form action='deleteUrls.php' method='post'><button type='submit' class='btn btn-outline-dark'>Delete urls</button></form>";
                echo "<form action='insertFile.html' method='post'><button type='submit' class='btn btn-outline-dark'>Insert file</button></form>";
                echo "<form action='seeUrls.php' method='post'><button type='submit' class='btn btn-outline-dark'>See database</button></form>";
            }
        }catch(PDOException $e){
            die("Errore: " . $e -> getMessage());
        }
    }else{
        echo "<form action='numberRows.php' method='post'><button type='submit' class='btn btn-outline-dark'>Rows number</button></form>";
        echo "<form action='deleteUrls.php' method='post'><button type='submit' class='btn btn-outline-dark'>Delete urls</button></form>";
        echo "<form action='insertFile.html' method='post'><button type='submit' class='btn btn-outline-dark'>Insert file</button></form>";
        echo "<form action='seeUrls.php' method='post'><button type='submit' class='btn btn-outline-dark'>See database</button></form>";
    }
?>