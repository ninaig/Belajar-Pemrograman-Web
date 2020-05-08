<?php

    $con=mysqli_connect('localhost','root','','crud_pdo');

    if(!$con)
    {
        die(' Please Check Your Connection'.mysqli_error($con));
    }
?>