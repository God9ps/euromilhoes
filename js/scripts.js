
function verificaSorteio(result) {

    $.ajax({
        url: 'trata.php',
        type: 'POST',
        cache: false,
        data : {data : result['drawns'][0]['date'], numeros : result['drawns'][0]['numbers'], estrelas : result['drawns'][0]['stars'], accao : 'verificaNovoSorteio'},
        dataType: 'json',
        success: function (result) {
            $.notify(result['mensagem'],result['resultado']);
            // console.log(result);
        }
    });
}

$(document).ready(function() {

    $.ajax({
        url: 'trata.php',
        async:false,
        type: "POST",
        // dataType: "json",
        data: {accao : 'getResults'},
        success: function (result) {
            result = JSON.parse(result);
            $("#ultimoData .data").text(result['drawns'][0]['date']);
            $("#ultimoSorteio .numeros").text(result['drawns'][0]['numbers']);
            $("#ultimoSorteio .estrelas").text(result['drawns'][0]['stars']);
            verificaSorteio(result);
        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr);
        }
    });


    $.ajax({
        url: 'trata.php',
        async:false,
        type: "POST",
        dataType: "json",
        data: {accao : 'teste'},
        success: function (result) {

            var numeros ="";
            var n = 0;
            $.each(result['numeros'], function(key, value) {
                numeros += value + " ";
                n++
            });


            var estrelas ="";
            var e = 0;
            $.each(result['estrelas'], function(key, value) {
                estrelas += value + " ";
                e++
            });

            if ((n <= 1 && e <= 1)){
                $("#acertos .estrelas").remove();
                $("#acertos .numeros").text('Merda para a nossa cara!');
            }else{
                $("#acertos .numeros").text(numeros);
                $("#acertos .estrelas").text(estrelas);
            }


        },
        error: function (xhr, ajaxOptions, thrownError) {
            console.log(xhr);
        }
    });

    $('#calendar').fullCalendar({
    })

});