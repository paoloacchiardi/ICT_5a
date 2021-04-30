<?php
    require_once'simple_html_dom.php';
    $ARRAY_PROTOCOLS = array("http","https","ftp","irl");
    //carico inputUrls sul db

    $file = $_FILES["txtFile"];
    echo "Name: " . $file["name"] . "<br>Size: " . $file["size"] . "<br>"; //txtFile["name"] -> form; txtFile["size"] -> size
    $urls = file($file["tmp_name"], FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    try{
        $con = new PDO("mysql:host=localhost;dbname=file","root");
        $con -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $command = $con -> prepare("INSERT INTO inputurls (urlName,urlProtocol) VALUES (:url,:protocol)");
        foreach($urls as $url){
            $protocollo = explode(":",$url)[0];
            $command -> bindParam(":url", $url, PDO::PARAM_STR);
            $command -> bindParam(":protocol", $protocollo, PDO::PARAM_STR);
            $command -> execute();
        }
    }catch(PDOException $e){
        die("Errore: " . $e -> getMessage());
    }
    
    //scraping urls & save urls in db
    
    try{
        $command = $con -> prepare("SELECT * FROM inputurls");
        $command -> execute(); //array di tuple (id, name, protocol)
        $listaRows = $command -> fetchall(PDO::FETCH_ASSOC);
        $command = $con -> prepare("INSERT INTO scrapingurls (urlName,urlProtocol,idInputUrl) VALUES (:nuovoUrl,:protocollo,:idUrlIniziale)");
        foreach($listaRows as $row){
            $idUrlCorrente = $row["idUrl"]; //id
            $urlCorrente = $row["urlName"]; //url name
            $htmlUrl = file_get_html($urlCorrente);
            $a_array = $htmlUrl -> find('a');
            foreach($a_array as $a){
                $newUrl = $a -> href;
                if(in_array(explode(":",$newUrl)[0],$ARRAY_PROTOCOLS)){
                $protocollo = explode(":",$newUrl)[0];
                $command -> bindParam(":nuovoUrl", $newUrl, PDO::PARAM_STR);
                $command -> bindParam(":protocollo", $protocollo, PDO::PARAM_STR);
                $command -> bindParam(":idUrlIniziale", $idUrlCorrente, PDO::PARAM_STR);
                $command -> execute();
                }
            }
        }
    }catch(PDOException $e){
        die("Errore: " . $e -> getMessage());
    }

    echo "Links inserted and scraping done";
    echo "<form action='login.html' method='get'><button type='submit' class='btn btn-outline-dark'>Login page</button></form>";
    echo "<form action='login.php' method='get'><button type='submit' class='btn btn-outline-dark'>Control page</button></form>";

    /*tabella: link -> protocollo -> num.siti -> bottone

    try{
        $command = $con -> prepare("SELECT DISTINCT urlName, urlProtocol, count(DISTINCT idInputUrl) AS 'Ricorrenze' FROM scrapingurls GROUP BY urlName ORDER BY Ricorrenze DESC");
        $command -> execute();
        $listaRows = $command -> fetchall(PDO::FETCH_ASSOC);
        echo "<br><br><table border='1px'><tr><th>Link</th><th>Protocollo</th><th>Ricorrenze</th><th>Vai al sito</th></tr>";
        foreach($listaRows as $row){
            echo "<tr><td>".$row["urlName"]."</td><td>".$row["urlProtocol"]."</td><td>".$row["Ricorrenze"].
            "</td><td><form enctype='multipart/form-data' action = '".$row["urlName"]."' method = 'GET'>
            <input type = 'submit' value = 'Go to site'></form></td></tr>";
        }
        echo "</table>";
    }catch(PDOException $e){
        die("Errore: " . $e -> getMessage());
    }*/

?>