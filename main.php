<?php
include_once 'bd/BdMySQL.class.php';
include_once 'bd/Chaves.class.php';

$chaves = new Chaves();
?>

<div class="row">
    <div class="col-md-12">
        <h2>AS NOSSAS CHAVES</h2>
        <?php
        $sql = "SELECT * FROM chaves WHERE activa=1";
        $resultado = $chaves->bd->executarSQL($sql);

        while ($row = $resultado->fetch(PDO::FETCH_ASSOC)) {
                echo "<h2><b class='numeros'>{$row['n1']} {$row['n2']} {$row['n3']} {$row['n4']} {$row['n5']}</b><b class='estrelas'>{$row['s1']} {$row['s2']} </b></h2><br>";
            }
        ?>
        <br>
        <h2>ULTIMO SORTEIO</h2>
        <h5 id="ultimoData"></h5>
        <h2 id="ultimoSorteio"><b class='numeros'></b><b class='estrelas'></b></h2><br>
    </div>
</div>
