
function teste() {
    alert('teste!');
}

function validaSelecaoProva() {

    var selecionaCurso, selecionaPeriodo;

    selecionaCurso = document.frmPerguntas.idCurso.value;
    selecionaPeriodo = document.frmPerguntas.periodoPergunta.value;


    if (selecionaCurso == "") {
        alert("Selecione uma avaliação!");
        document.frmPerguntas.idCurso.focus();
    } else if (selecionaPeriodo == "") {
        alert("Selecione o periodo de avaliação!");
        document.frmPerguntas.periodoPergunta.focus();
    } else {
        document.frmPerguntas.submit();
    }




}
function contagem() {

    var valor1, valor2, valor3, valor4, valor5, valor6, valor7, valor8;
    var valor9, valor10;
    valor1 = document.frmApresentaPerguntas.elements['respostaCerta[0]'];
    valor2 = document.frmApresentaPerguntas.elements['respostaCerta[1]'];
    valor3 = document.frmApresentaPerguntas.elements['respostaCerta[2]'];
    valor4 = document.frmApresentaPerguntas.elements['respostaCerta[3]'];
    valor5 = document.frmApresentaPerguntas.elements['respostaCerta[4]'];
    valor6 = document.frmApresentaPerguntas.elements['respostaCerta[5]'];
    valor7 = document.frmApresentaPerguntas.elements['respostaCerta[6]'];
    valor8 = document.frmApresentaPerguntas.elements['respostaCerta[7]'];
    valor9 = document.frmApresentaPerguntas.elements['respostaCerta[8]'];
    valor10 = document.frmApresentaPerguntas.elements['respostaCerta[9]'];


    if (valor1[0].checked == false && valor1[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 1!');
        document.getElementById(1).focus();
    } else if (valor2[0].checked == false && valor2[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 2!');
    } else if (valor3[0].checked == false && valor3[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 3!');
    } else if (valor4[0].checked == false && valor4[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 4!');
    } else if (valor5[0].checked == false && valor5[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 5!');
    } else if (valor6[0].checked == false && valor6[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 6!');
    } else if (valor7[0].checked == false && valor7[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 7!');
    } else if (valor8[0].checked == false && valor8[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 8!');
    } else if (valor9[0].checked == false && valor9[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 9!');
    } else if (valor10[0].checked == false && valor10[1].checked == false) {
        alert('Selecione uma resposta para a assertiva 10!');
    } else {
        var envia = confirm("Tem certeza? Posso enviar suas respostas?");
        if (envia == true) {
            document.frmApresentaPerguntas.submit();
        }
    }


}


