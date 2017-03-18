<?php header('Access-Control-Allow-Origin: *'); ?>

<!DOCTYPE html>
<html lang="pt_PT">
<head>
    <meta charset="UTF-8">
    <title>Euromilhões</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="fullcalendar/fullcalendar.css">
    <link rel="stylesheet" href="fullcalendar/fullcalendar.print.css">
    <link rel="stylesheet" href="bootstrap/font-awesome.css">
    <link rel="stylesheet" href="bootstrap/font-awesome-animate.css">
    <link rel="stylesheet" href="bootstrap/css/styles.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/notify.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="fullcalendar/moment.js"></script>
    <script src="fullcalendar/fullcalendar.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/scripts.js"></script>
</head>
<body>
    <div class="container">
        <?php

            include_once "menu.php";

        ?>
        <?php
        include_once "menu.php";
        echo "<br>";
        if (empty ($_REQUEST ['pagina'])) {
            include_once "main.php";
        } else {
            include_once $_REQUEST ['pagina'] . ".php";
        }

?>

    </div>
</body>
</html>