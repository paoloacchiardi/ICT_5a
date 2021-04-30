<?php
    try{
        $con = new PDO("mysql:host=localhost;dbname=file","root");
        $con -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $command = $con -> prepare("SELECT DISTINCT urlName, urlProtocol, count(DISTINCT idInputUrl) AS 'Ricorrenze' FROM scrapingurls GROUP BY urlName ORDER BY Ricorrenze DESC");
        $command -> execute();
        $listaRows = $command -> fetchall(PDO::FETCH_ASSOC);
        echo "<form action='login.html' method='get'><button type='submit' class='btn btn-outline-dark'>Login page</button></form>";
        echo "<form action='login.php' method='get'><button type='submit' class='btn btn-outline-dark'>Control page</button></form>";
        echo "<br><br><h1> LINKS TABLE </h1>";
        echo "<br><br><table border='1px'><tr><th>Link</th><th>Protocollo</th><th>Ricorrenze</th><th>Vai al sito</th></tr>";
        foreach($listaRows as $row){
            echo "<tr><td>".$row["urlName"]."</td><td>".$row["urlProtocol"]."</td><td>".$row["Ricorrenze"].
            "</td><td><form enctype='multipart/form-data' action = '".$row["urlName"]."' method = 'GET'>
            <input type = 'submit' value = 'Go to site'></form></td></tr>";
        }
        echo "</table>";
        }catch(PDOException $e){
        die("Errore: " . $e -> getMessage());
    }
?>