<?php 
    session_start();
    include("db.php");
    
    $firstname= isset($_POST['firstname']) ? test_Input($_POST['firstname']) : "";
    $lastname= isset($_POST['lastname']) ? test_Input($_POST['lastname']) : "";
    $mail= isset($_POST['email']) ? test_Input($_POST['email']) : "";
    $dataDiNascita= isset($_POST['DataDiNascita']) ? test_Input($_POST['DataDiNascita']): NULL;
    $telefono= isset($_POST['Telefono']) ? test_Input($_POST['Telefono']): "";
    $sesso= isset($_POST['Sesso']) ? test_Input($_POST['Sesso']): "";
    $Stato= isset($_POST['Stato']) ? test_Input($_POST['Stato']): "";
    $Provincia= isset($_POST['Provincia']) ? test_Input($_POST['Provincia']): "";
    $Citta= isset($_POST['Citta']) ? test_Input($_POST['Citta']): "";
    $Indirizzo= isset($_POST['Indirizzo']) ? test_Input($_POST['Indirizzo']): "";
    $Cap= isset($_POST['Cap']) ? test_Input($_POST['Cap']): "";
    $NewsLetter= isset($_POST['Newsletter']) ? test_Input($_POST['Newsletter']): "";
    
    $stmt= mysqli_prepare($con, "UPDATE users SET firstname=?, lastname=?, sesso=?, DataDiNascita=?, Telefono=?, Stato=?, Provincia=?, Citta=?, Indirizzo=?, Cap=?, Newsletter=? WHERE email=?");
    mysqli_stmt_bind_param($stmt, 'ssssissssiis', $firstname, $lastname, $sesso, $dataDiNascita, $telefono, $Stato, $Provincia, $Citta, $Indirizzo, $Cap, $NewsLetter, $mail);
    mysqli_stmt_execute($stmt);

    if(mysqli_stmt_affected_rows($stmt) != 1){
        echo json_encode(array('message' => '--ACCOUNT-- Error! L\'update non e\' andato a buon termine'));
        mysqli_close($con);
        exit();
    }

    mysqli_stmt_close($stmt);
    mysqli_close($con);
    echo json_encode(array('message' => 'updated'));

    function test_Input($var){
        $var= trim($var);
        $var= htmlspecialchars($var);
        $var= stripslashes($var);
        return $var;
    }
?>