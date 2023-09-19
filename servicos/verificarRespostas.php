<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$enunciados = $_GET['idPergunta'];
$respostas = $_GET['respostaCerta'];


count($respostas);



$contagem = 0;
$nota = 0;


/*
As perguntas com o status 1 são corretas e
 * e as com o status 0 são as erradas
 * 
 *  */




while ($contagem < count($respostas)) {
//    echo "valor:" . $enunciados[$contagem] . "<br />";
//    echo "valor:" . $respostas[$contagem] . "<br />";
//    echo '<br /><br /><br />';

    $query = "SELECT * from perguntas p 
WHERE
p.idPergunta =$enunciados[$contagem] 
AND
p.statusPergunta=$respostas[$contagem]";




    $result = mysqli_query($link, $query);
    $ocorrencias = mysqli_num_rows($result);

    if ($ocorrencias == 1) {
        $nota++;
    }





    $contagem++;
}



echo 'Você acertou ' . $nota . " questões.";
echo '<br />';
echo 'Sua nota na prova teórica é : ' . $nota.".";