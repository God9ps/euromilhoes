<?php
include_once 'bd/BdMySQL.class.php';
include_once 'bd/Chaves.class.php';

$chaves = new Chaves();
?>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-4">
            <div class="painel">
                <div class="painel-header">
                    O que temos
                </div>
                <div class="painel-body">
                    <?php
                    $sql = "SELECT * FROM chaves WHERE activa=1";
                    $resultado = $chaves->bd->executarSQL($sql);

                    while ($row = $resultado->fetch(PDO::FETCH_ASSOC)) {
                        echo "<h2><b class='numeros'>{$row['n1']} {$row['n2']} {$row['n3']} {$row['n4']} {$row['n5']}</b><b class='estrelas'>{$row['s1']} {$row['s2']} </b></h2><br>";
                    }
                    ?>
                </div>
            </div>
        </div>


        <div class="col-md-4">

            <div class="painel">
                <div class="painel-header">
                    O que devíamos ter
                </div>
                <div class="painel-body">

                    <h2 id="ultimoSorteio"><b class='numeros'></b><b class='estrelas'></b></h2>
                    <h2 id="ultimoData"><b class='data'></b></h2>
                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="painel">
                <div class="painel-header">
                    O que acertámos
                </div>
                <div class="painel-body">
                    <h2 id="acertos">
                        <b class='numeros'></b>
                        <b class='estrelas'></b></h2>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
$chaves->endCon();
?>