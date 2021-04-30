<?php
    try{
        $con = new PDO("mysql:host=localhost;dbname=file","root");
        $con -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $command = $con -> query("DELETE FROM scrapingurls");
        $command -> execute();
        $command = $con -> query("DELETE FROM inputurls");
        $command -> execute();
        echo "Urls deleted.";
        echo "<form action='login.html' method='get'><button type='submit' class='btn btn-outline-dark'>Login page</button></form>";
        echo "<form action='login.php' method='get'><button type='submit' class='btn btn-outline-dark'>Control page</button></form>";
    }catch(PDOException $e){
        die("Errore: " . $e -> getMessage());
    }
?>