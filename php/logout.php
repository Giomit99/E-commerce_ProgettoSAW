<?php 
    session_start(); 

    $_SESSION= array();
    //cockie
    session_destroy(); 

    header("Location: index.php");
?>
