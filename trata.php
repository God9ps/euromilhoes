<?php

//echo json_encode($_POST);

if (isset ( $_POST ['accao'] )) {
    $accao = $_POST ['accao'];

    include_once 'bd/BdMySQL.class.php';
    include_once 'bd/Chaves.class.php';

    $chaves = new Chaves();

    switch ($accao) {
        case 'teste':
            echo $chaves->verificaPremio();
            break;

        case 'getResults':

            $url = 'https://nunofcguerreiro.com/api-euromillions-json';

            echo file_get_contents($url);

            break;

        case 'verificaNovoSorteio':

            $dados['data'] = $_POST['data'];

            echo $chaves->verificarNovoSorteio($dados['data'],$_POST['numeros'], $_POST['estrelas']);
            $chaves->endCon();
//            echo $chaves->verificaPremio($dados['data'],$_POST['numeros'], $_POST['estrelas']);

//            echo $chaves->verificarNovoSorteio($_POST['data']);

            /*$dados['numeros'] = $_POST['numeros'];
            $dados['estrelas'] = $_POST['estrelas'];*/

            break;
        default:
            echo "Acção inválida";
            break;
    }
}

?>

