
<!-- inicio da div conteudo -->
<div id="conteudo">
    <article>
        <p>
            Instruções para utilização do ambiente de avaliação
        </p> 


        <ol>
            <li>
                A avaliação é individual.
            </li>
            <li>
                Neste ambiente só será realizada a avaliação teórica.
            </li>
            <li>
                Esta avaliação terá um total de 10 pontos.
            </li>
            <li>
                Na lista abaixo informará qual a turma específica para a sua 
                avaliação.
            </li>
            <li>
                Lembrar de selecionar o período que estão divididos em avaliação
                1 e avaliação 2.
            </li>

        </ol>
    </article>

    <article>


        <p>
            Abaixo selecione a sua avaliação:
        </p>
        <?php
        $query = "select * from cursos";

        $query = mysqli_query($link, $query);
        ?>
        <form name="frmPerguntas" id="frmPerguntas" method="GET" action="avaliacao.php"> 
            <select required="" name="idCurso" id="idCurso">

                <option value=""  >--- selecione o curso ------</option>
                <?php
                while ($row = mysqli_fetch_array($query)) {
                    ?>
                <option value="<?php echo $row['idCurso']; ?>" ><?php echo $row['nomeCurso']; /* echo $row['idCurso']; */ ?></option>
                    <?php
                }
                ?>

            </select>  
            <select name="periodoPergunta" id="periodoPergunta">
                <option value="">selecione o período de avaliação</option>
                <option value="0">Avaliação 1</option>
                <option value="1">Avaliação 2</option>

            </select>
            <button id="selecionaProva" type="button" onclick="validaSelecaoProva()">buscar</button>

        </form>
    </article>




</div>