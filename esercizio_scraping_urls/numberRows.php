<?php
    try{
        $con = new PDO("mysql:host=localhost;dbname=file","root");
        $con -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $command = $con -> query("SELECT count(*) AS 'num' FROM inputurls");
        $inputUrlsNumber = $command -> fetch(PDO::FETCH_ASSOC)["num"];
        echo "Input urls -> " . $inputUrlsNumber . "<br>";
        $command = $con -> query("SELECT count(*) AS 'num' FROM scrapingurls");
        $scrapingUrlsNumber = $command -> fetch(PDO::FETCH_ASSOC)["num"];
        echo "Scraping urls -> " . $scrapingUrlsNumber;
        echo "<form action='login.html' method='get'><button type='submit' class='btn btn-outline-dark'>Login page</button></form>";
        echo "<form action='login.php' method='get'><button type='submit' class='btn btn-outline-dark'>Control page</button></form>";
    }catch(PDOException $e){
        die("Errore: " . $e -> getMessage());
    }
?>