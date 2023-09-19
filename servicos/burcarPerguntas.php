
<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */






$idCurso = filter_input(INPUT_GET,'idCurso',FILTER_DEFAULT);
$periodoPergunta = filter_input(INPUT_GET,'periodoPergunta',FILTER_DEFAULT);



$query = "select * from cursos c 
INNER JOIN perguntas p 
ON
c.idCurso=p.idCursoFK
where idCursoFK='$idCurso' and periodoPergunta='$periodoPergunta';";

$query = mysqli_query($link, $query);
?>

<form name="frmApresentaPerguntas" id="frmApresentaPerguntas" method="GET" action="./respostas.php">

    <?php
    $contador = 0;
    while ($row = mysqli_fetch_array($query)) {
        ?>

    <p>
            <?php
             $numPergunta = $contador + 1 ;
            
            echo $numPergunta." ) ".mb_convert_encoding($row['enunciadoPergunta'],'UTF-8');
            ?>

            <input type="hidden" name="idPergunta[<?php echo $contador ?>]" value="<?php echo $row['idPergunta'] ?>" >
        </p>
        <p id="<?php echo $contador; ?>" >
            certo<input type="radio" name="respostaCerta[<?php echo $contador; ?>]" id="respostaCerta<?php echo $contador; ?>" value="1">
            errado <input type="radio" name="respostaCerta[<?php echo $contador; ?>]" id="respostaCerta<?php echo $contador; ?>"  value="0">

        </p>
        <?php
        $contador++;
    }
    ?>
        <button type="button" onclick="contagem()">enviar</button>
</form>