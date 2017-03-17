
function verificaSorteio(result) {

    $.ajax({
        url: 'trata.php',
        type: 'POST',
        cache: false,
        data : {data : result['drawns'][0]['date'], numeros : result['drawns'][0]['numbers'], estrelas : result['drawns'][0]['stars'], accao : 'verificaNovoSorteio'},
        // dataType: 'json',
        success: function (result) {
            // $.notify(result['mensagem'],result['resultado']);
            console.log(result);
        }
    });
}

$(document).ready(function() {

    $.ajax({
        url: 'https://nunofcguerreiro.com/api-euromillions-json',
        type: 'POST',
        cache: false,
        dataType: 'json',
        success: function (result) {
            $("#ultimoData").text(result['drawns'][0]['date']);
            $("#ultimoSorteio .numeros").text(result['drawns'][0]['numbers']);
            $("#ultimoSorteio .estrelas").text(result['drawns'][0]['stars']);
            verificaSorteio(result);
        }
    });




    $('#calendar').fullCalendar({

    })

});