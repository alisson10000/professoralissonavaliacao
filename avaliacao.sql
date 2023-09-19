-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Set-2023 às 20:41
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `avaliacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idCurso` int(11) NOT NULL,
  `nomeCurso` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `anoCurso` date NOT NULL,
  `descricaoCurso` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idCurso`, `nomeCurso`, `anoCurso`, `descricaoCurso`) VALUES
(1, 'ProgramaÃ§Ã£o web', '2021-02-01', 'Programação para sistemas webs'),
(2, 'InformÃ¡tica essencial', '2021-02-01', 'Curso de introdução a informática abordando sistema operacional, word, powerpoint e excel'),
(3, 'App Inventor', '2021-02-01', 'MIT App Inventor, também conhecido como App Inventor for Android, é uma aplicação código aberto originalmente criada pela Google, e atualmente mantida pelo Massachusetts Institute of Technology '),
(4, 'Excel avanÃ§ado', '2021-02-01', 'Curso de especialização em planilhas eletrônicas'),
(5, 'Scratch', '2021-08-10', 'O Scratch é uma linguagem de programação criada pelo grupo Lifelong Kindergarten da universidade americana MIT. Tem como objetivo ensinar a lógica da programação para crianças e adolescentes. '),
(6, 'InformÃ¡tica Bits', '2022-09-01', 'Curso básico para adolescentes de 12 a 14 anos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `idPergunta` int(11) NOT NULL,
  `idCursoFK` int(11) NOT NULL,
  `enunciadoPergunta` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `statusPergunta` tinyint(1) NOT NULL,
  `periodoPergunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`idPergunta`, `idCursoFK`, `enunciadoPergunta`, `statusPergunta`, `periodoPergunta`) VALUES
(28, 1, 'html é uma linguagem de marcação de texto.', 1, 0),
(29, 1, 'O Cascading Style Sheets (CSS) é uma \"folha de estilo\" composta por “camadas” e utilizada para definir a apresentação (aparência) em páginas da internet que adotam para o seu desenvolvimento linguagens de marcação (como XML, HTML e XHTML). O CSS define como serão exibidos os elementos contidos no código de uma página da internet e sua maior vantagem é efetuar a separação entre o formato e o conteúdo de um documento. ', 1, 0),
(30, 1, 'Não é possível criar um seletor em css.', 0, 0),
(34, 1, 'O DOM (Document Object Model) não é uma interface que representa como os documentos HTML e XML são lidos pelo seu browser. Após o browser ler seu documento HTML, ele cria um objeto que faz uma representação estruturada do seu documento e define meios de como essa estrutura pode ser acessada. Nós podemos acessar e manipular o DOM com JavaScript, não é a forma mais fácil e usada.', 0, 0),
(35, 1, 'Os operadores lógicos entram quando precisamos realizar operações sobre um ou dois valores booleano do tipo string.', 0, 0),
(36, 1, 'os símbolos a seguir não são de operadores de comparação: > < >= <= <>.', 0, 0),
(37, 1, ' o JavaScript é uma das três principais tecnologias da World Wide Web. JavaScript permite páginas da Web interativas e, portanto, é uma parte essencial dos aplicativos da web. A grande maioria dos sites usa, e todos os principais navegadores têm um mecanismo JavaScript dedicado para executá-lo', 1, 0),
(38, 1, 'O SEO (Search Engine Optimization), também conhecido como otimização de sites, é rapidamente definido como uma forma de aumentar os acessos do seu site através de um conjunto de técnicas e estratégias que permitem que um site melhore seu posicionamento nos resultados orgânicos dos mecanismos de busca, como Google e ', 1, 0),
(39, 1, 'Em HTML elemento pai é aquele que contém outros elementos HTML', 1, 0),
(40, 1, 'A title  é uma tag marcação do código HTML (<title> e </title>) que representa o título de uma página.', 1, 0),
(41, 4, 'Pode-se afirmar que a fórmula MOD() do EXCEL para descobrir se um número é par ou ímpar tem sua sintaxe correta em MOD(A2;2=0) e a sintaxe errada é MOD(A2;2)=0.', 0, 0),
(42, 4, 'A fórmula SEERRO do EXCEL é utilizada para tratamento de erros\r\n,ou seja, caso o EXCEL apresente algum dado inconsistente ela pode\r\ninformar ao usuário alguma resposta de retorno e a mesma\r\n não pode ser utilizada em conjunto com outras funções.', 0, 0),
(43, 4, 'A fórmula ÍNDICE é utilizada para retornar um valor de célula específica\r\nde uma matriz relacionada e a mesma pode buscar valores em uma ou mais matrizes,\r\nna fórmula a seguir: =ÍNDICE((B6:E9;I6:L9;B16:E19;I16:L19);1;2;4), podemos afirmar\r\nque na busca realizada foram selecionadas quatro áreas diferentes para retornar\r\numa valor de consulta.', 1, 0),
(44, 4, 'Ao trabalharmos com o Excel o mesmo oferece um recurso muito interessante que\r\né a possibilidade de selecionar uma fórmula e arrastá-la para atingir diversas\r\nlinhas ou colunas. Entretanto em algumas situações é necessário que um valor\r\nna fórmula seja fixado. Então, podemos dizer que, para essa ação é necessário utilizar o \r\nsímbolo $ para que isso possa acontecer.', 1, 0),
(45, 4, 'você pode reparar que a fórmula PROC traz o sentido de procurar. Então quando você \r\ntiver uma tabela na vertical e quiser procurar uma informação você vai usar o PROCH.', 0, 0),
(46, 4, 'A função procurar apresenta a posição do carcter de uma determindada célula.\r\nEm algumas situações há a necessidade de obter parte de um texto. Sendo assim\r\npodemos afirmar que esta pode ser utilizada em conjunto com a função EXT.TEXTO\r\npara executar tal ação.', 1, 0),
(47, 4, 'Quando queremos remover parte fracinária do número podemos utilizar a função truncar.\r\nA função INT arredonda números para baixo até o inteiro mais próximo com base no \r\nvalor da parte fracionária do número. INT e TRUNCAR são diferente apenas ao usar números\r\nnegativos.', 1, 0),
(48, 4, 'As passagens de parâmetros utilizadas na função BDSOMA são respectivamente:\r\nbanco de dados;campo e critérios.', 1, 0),
(49, 4, 'Em alguns casos existem células da nossa planílha que não queremos que as mesmas\r\nsejam editadas, por isso a ação de proteger células não é importante.', 0, 0),
(50, 4, 'Quando utilizamos em nossa planilha um valor de moeda flutuante\r\no recurso de importar dados da internet nos ajuda a manter as informações \r\natualizadas.', 1, 0),
(51, 2, 'Sistema operativo (português europeu) ou operacional (português brasileiro) \r\n(em inglês: Operating System - OS) é um programa cuja a função é gerenciar os recursos do hardware \r\n(definir qual programa receber atenção do processador, gerenciar memória, criar um sistema de arquivos, etc.),\r\nfornecendo uma interface entre o computador e o usuário.', 1, 0),
(52, 2, 'No CMD(prompt de comando)  a sintaxe (o comando) cd.. ao executar muda para um diretório\r\nmais distante da raiz.', 0, 0),
(53, 2, 'O comando  shutdown -s -t XXXX desliga o computador em um tempo informado pelo usuário.', 1, 0),
(54, 2, 'O Windows 10 (ou simplesmente Windows) é uma família de sistemas operacionais desenvolvidos,\r\n comercializados e vendidos pela empresa UBUNTU.É constituída por várias famílias de sistemas\r\n operacionais, cada qual atendendo a um determinado setor da indústria da computação,\r\n sendo que o sistema geralmente é associado com a arquitetura IBM PC compatível.', 0, 0),
(55, 2, 'Arquivos .BAT são arquivos de lote que armazenam diversas\r\n instruções para serem executadas pelo Windows. É possível \r\ncriar e executar desde rotinas simples\r\n até rotinas complexas, tal como realizar recuperação\r\n de banco de dados, automatizar backups, \r\nmapear unidades de rede e muito mais.', 1, 0),
(56, 2, 'O Microsoft Word é um processador de texto produzido pela Microsoft \r\nOffice criado por Richard Brodie para computadores IBM PC \r\ncom o sistema operacional DOS em 1983.', 1, 0),
(57, 2, 'No programa word ao executarmos o comando SHIFT+END o mesmo irá selecionar todo o texto.', 0, 0),
(58, 2, 'A tecla de atalho F7 no word é utilizada para realizar a tarefa de correção ortográfica.', 1, 0),
(59, 2, 'A tecla de atalho CTRL+B é utilizada para salvar um arquivo.', 1, 0),
(60, 2, 'A tecla de atalho CTRL+J é utilizada para centralizar um texto.', 0, 0),
(61, 3, 'MIT App Inventor, também conhecido como App Inventor for Android,\r\n é uma aplicação código aberto originalmente criada pela Google, e \r\natualmente mantida pelo Massachusetts Institute of Technology (MIT).', 1, 0),
(62, 3, 'Para desenvolver projetos no App Inventor não há necessidade de ter\r\nconexao com a internet.', 0, 0),
(63, 3, 'O emulador é uma aplicação para simular os projetos que são desenvolvidos\r\nna plataforma do App.', 1, 0),
(64, 3, 'Ao criarmos um aplicativo é importante inicializarmos as variáveis para\r\nas mesmas não possuirem lixo de memória.', 1, 0),
(65, 3, 'Um algoritmo é uma sequência finita de ações executáveis que visam obter\r\n uma solução para um determinado tipo de problema.', 1, 0),
(66, 3, 'Os sinais a seguir são considerados operadores lógicos + - * / ^.', 0, 0),
(67, 3, 'Na estrutura condicional SE o primeiro bloco de instruçao executa \r\nmesmo se a assertiva for falsa.', 0, 0),
(68, 3, 'Interface de Programação de Aplicações (português europeu) ou Interface de Programação de Aplicação (português brasileiro)), cuja sigla API provém do Inglês Application Programming Interface, é um conjunto de rotinas e padrões estabelecidos por um software para a utilização das suas funcionalidades por aplicativos que não pretendem envolver-se em detalhes da implementação do software, mas apenas usar seus serviços.', 1, 0),
(69, 3, 'No ambiente de desenvolvimento do App Inventor nos COMPONENTES são criados \r\nos valores de interface com usuário e nas PROPRIEDADES os valores das variáveis.', 0, 0),
(70, 3, 'A instrução fill parent é utilizada para dar largura ou altura automática,\r\nou seja, de acordo com o tamanho de tela do aparelho.', 1, 0),
(71, 4, 'Em cenários é utilizado o teste de hipóteses para gerar tablelas onde possam ser avaliados previsões em valores de investimento.\r\n', 1, 1),
(72, 4, 'Em metas ao realizar o teste de hipóteses NÂO há necessidade de definir uma célula para que a meta seja atingida.\r\n', 0, 1),
(74, 4, 'Ao realizar consolidção de dados só é possivel ser feito obtendo os dados de uma só plhanilha.\r\nA função subtotal é utlizada para obter apenas a somas  de valores de uma subregião de  matriz de valores, sendo assim\r\nnão é possivel utilizar as funções junto a elas:(média, Cont.Num, Cont.Valores, Maximo, Minimo...etc)', 0, 1),
(75, 4, 'Na tabela dinâmica não há necessidade de atualizar as informações quando as mesmas são alteradas\r\n', 0, 1),
(76, 4, 'Em tabela dinâmica pode ser utilizada o método de segmentação de dados.', 1, 1),
(77, 4, 'Uma macro no Excel, ou também em outro programa do pacote Office, é uma gravação feita\r\n pelo usuário de maneira que ele possa reutilizar\r\n o processo para automatizar tarefas.', 1, 1),
(78, 4, 'O Visual Basic for Applications (VBA) é uma implementação do Visual \r\nBasic da Microsoft incorporada em todos os programas do Microsoft Office\r\n - dentro desse pacote estão os famosos\r\n aplicativos Office (Word, Excel, Power Point, Access, etc).', 1, 1),
(79, 4, 'Ao escrever um programa em VBA não existe a necessidade de declarar as variáveis.', 0, 1),
(80, 4, 'Os operadores aritméticos não podem ser utilizados para cálculos matemáticos.', 0, 1),
(81, 4, 'A estrutura condicional SE (if) é utlizada quando existe a necessidade de realizar um ou mais testes lógicos.\r\n', 1, 1),
(82, 2, '\r\n1-Microsoft PowerPoint é um programa utilizado para criação/edição e exibição de\r\n apresentações gráficas, originalmente escrito para o sistema operacional Windows\r\n e portado para a plataforma Mac OS X. A versão para Windows também funciona no Linux\r\n através da camada de compatibilidade Wine. Há ainda uma versão mobile para smartphones\r\n que rodam o sistema Windows Phone.', 1, 1),
(83, 2, 'Nas apresentações de slides não é possivel colocar vídeos.', 0, 1),
(84, 2, 'Um slide mestre é o slide principal em uma hierarquia de slides que armazena todas as informações\r\n sobre o tema e os layouts de slide de uma apresentação, inclusive o plano de fundo, a cor, as fontes, \r\nos efeitos, os tamanhos de espaços reservados e o posicionamento.', 1, 1),
(85, 2, 'PPT é a extenção de um arquivo em PowerPoint.', 1, 1),
(86, 2, 'O Microsoft Excel é um editor de planilhas (Folhas de Cálculo) produzido pela Microsoft para\r\n computadores que utilizam o sistema operacional Microsoft Windows, além de computadores\r\n Macintosh da Apple Inc. e dispositivos móveis como o Windows Phone, Android ou o iOS.\r\n Seus recursos incluem uma interface intuitiva e capacitadas ferramentas de cálculo e \r\nde construção de tabelas que, juntamente com marketing agressivo, tornaram o Excel um\r\n dos mais populares aplicativos de computador até hoje. É, com grande vantagem, o aplicativo\r\n de planilha electrónica dominante, disponível para essas plataformas e o tem sido desde a versão\r\n 5 em 1993 e sua inclusão como parte do Microsoft Office.', 1, 1),
(87, 2, 'Na função a seguir =soma(A1:A10) serão apenas somados os valores das células A1 e A10.', 0, 1),
(88, 2, 'A fórmula ÍNDICE é utilizada para retornar um valor de célula específica de uma matriz relacionada\r\n e a mesma pode buscar valores em uma ou mais matrizes, na fórmula a seguir: =ÍNDICE((B6:E9;I6:L9;B16:E19;I16:L19);1;2;4),\r\n podemos afirmar que na busca realizada foram selecionadas quatro áreas diferentes para retornar uma valor de consulta.\r\n', 1, 1),
(89, 2, 'A fórmula SEERRO do EXCEL é utilizada para tratamento de erros ,ou seja, caso o EXCEL apresente algum dado\r\n inconsistente ela pode informar ao usuário alguma resposta de retorno e a mesma não pode ser utilizada em \r\nconjunto com outras funções.', 0, 1),
(90, 2, 'Ao trabalharmos com o Excel o mesmo oferece um recurso muito interessante que \r\né a possibilidade de selecionar uma fórmula e arrastá-la para atingir diversas linhas \r\nou colunas. Entretanto em algumas situações é necessário que um valor na fórmula seja fixado.\r\n Então, podemos dizer que, para essa ação é necessário utilizar o símbolo $ para que isso possa acontecer.', 1, 1),
(91, 2, 'A função corresp retorna o valor respectivo da linha que está sendo procurado.', 1, 1),
(92, 3, 'Os componentes web e notifier são considerados não visiveis pois os mesmos não influenciam \r\nna interce do aplicativo.', 1, 1),
(93, 3, 'O componente TimePicker é utilizado para informar a data em uma aplicação.', 0, 1),
(94, 3, ' O componente DatePicker é utilizado para informar a hora em uma aplicação.\r\n', 0, 1),
(95, 3, 'Na paleta Storage os componentes lá são utilizado para salvar as informações no banco de dados.', 1, 1),
(96, 3, 'Na chamada do componente notifier é utilizado para enviar mensagens aos usuários.', 1, 1),
(97, 3, 'Um aplicativo não pode trabalhar em conjunto com outra linguagem de programação.', 0, 1),
(98, 3, 'Um aplicativo feito no app inventor consegue compartilhar as informações no banco de dados\r\nem um programa servidor.', 1, 1),
(99, 3, 'Uma variável do tipo array pode armazenar mais de um elemento.', 1, 1),
(100, 3, 'É possivel realizar a cópia de codigos no App Inventor com a tecla de atalho ctrl-v.', 1, 1),
(101, 3, 'O método set é utilizado para colocar valor em uma variável e  o método get é para \r\npegar o valor que está em uma variável.', 1, 1),
(102, 1, 'O arquivo de conexao.php é utlizado para a aplicação interagir com o banco de dados.\r\n', 1, 1),
(103, 1, 'A função mysqli_query è utlizada para realizações de consutlas no banco de dados.', 1, 1),
(104, 1, 'A função mysqli_num_rows é utilizada para realizar a contagem de ocorrencias no banco de dados.', 1, 1),
(105, 1, 'O metodo POST possui menos segurança que o método get.', 0, 1),
(106, 1, 'A session é um recurso do php utilizado para passar informações entre páginas de um projeto.', 1, 1),
(107, 1, 'A consulta: select * from nomeDaTabela, retorna apenas uma ocorrencia do banco de dados.', 0, 1),
(108, 1, 'O acrônimo MER pode ser entendido como modelo de entidade e relacionamento.', 1, 1),
(109, 1, 'O phpmyadmin é uma interface para facilitar a comunicação com o banco de dados.', 1, 1),
(110, 1, 'A consulta update é utlizada para deletar registros no banco de dados.', 0, 1),
(111, 1, 'Nos projetos desenvolvidos a pasta de serviços é utlizada para os códigos de interface \r\ncom o usuário.', 0, 1),
(112, 5, 'O Scratch é uma linguagem de programação criada pelo grupo Lifelong\r\nKindergarten da universidade americana MIT.\r\nTem como objetivo ensinar a lógica da programação para \r\ncrianças e adolescentes. ', 1, 0),
(113, 5, 'No código fonte a seção MOVIMENTO é responsável pela troca de fantasia do ator.', 0, 0),
(114, 5, 'Para trocar a fantasia de um ator utiliza-se a seção do código APARÊNCIA.', 1, 0),
(115, 5, 'Os scripts de estrutura de decisão são econtrados na seção CONTROLE.', 1, 0),
(116, 5, 'Na aba \"Fantasias\" não é possível editar a aparência de um ator.', 0, 0),
(117, 5, 'A estrutura \"SEMPRE\" irá executar o script contido nela apenas uma vez.', 0, 0),
(118, 5, 'O operador de comparação \">\" significa \"menor do que\". E o operador de comparação\r\n\"<\" significa \"maior.', 0, 0),
(119, 5, 'O script: \"quando bandeira verde for clicado\" é utilizado no início dos jogos e encontra-se na\r\nseção \"EVENTOS\".', 1, 0),
(120, 5, 'A estrutura \"REPITA\" executa um script em um looping infinito.', 0, 0),
(121, 5, 'No Scratch quando criada uma variável não é possível alterar o seu valor.', 0, 0),
(122, 6, 'O sistema operacional é um programa que gerencia\r\no sistema computacional físico\r\n(hardware), gerencia outros pro-\r\ngramas e faz a interface com\r\no usuário, hardware e software.', 1, 0),
(123, 6, 'Ferramenta case são programas\nque são utilizados dando especificidade\nas áreas de engenharia de \nsoftware.', 1, 0),
(124, 6, 'A tecla de atalho ctrl + E é utilizada para desligar o computador.', 0, 0),
(125, 6, 'A tecla de atalho ctrl + F minimiza janelas.', 0, 0),
(126, 6, 'Dispositivos de entrada são dispositivos de hardware que\nestão ao redor do computador\nresponsáveis por enviar dados\npara o usuário>Ex.: Monitor\nimpressora, caixa de som, datashow.', 0, 0),
(127, 6, 'O Microsoft Word é um processador de texto produzido pela Microsoft Office. Foi criado por Richard Brodie para computadores IBM PC com o sistema operacional DOS em 1983. Mais tarde foram criadas versões para o Apple Macintosh (1984), SCO UNIX e Microsoft Windows (1989). Faz parte do conjunto de aplicativos Microsoft Office. \r\nO Microsoft Word pode ser usado para produzir trabalhos escolares e textos acadêmicos. Com recursos comparáveis a outros editores de texto modernos, suporta também a adição e edição básica de imagens e formatação de texto.', 1, 0),
(128, 6, 'A fim de não perder horas de trabalho o hábito de utiliza a tecla de atalho ctrl + B é muito útil para desde o início salvar o arquivo que será produzido.', 1, 0),
(129, 6, 'Podemos afirmar que as seguintes teclas de atalho no word realizam as seguintes ações: ctrl + E  centraliza o texto, ctrl + J justifica o texto, ctrl + G alinha o texto a direita, ctrl + Q alinha o texto a esquerda, ctrl + N coloca o texto em negrito, ctrl + S coloca o texto sublinhado e ctrl + I coloca o texto em itálico. ', 1, 0),
(130, 6, 'No programa word em hipótese nenhuma é possível colocar transparência nas imagens e que também é impossível modificá-las.', 0, 0),
(131, 6, 'Todas as formatções realizadas no word não há necessidade das palavras estarem selecionadas e a tecla de atalho F8 realiza a correção ortográfica', 0, 0),
(132, 6, 'O PowerPoint permite criar apresentações de slides inclisive colocar vídeos.', 1, 1),
(133, 6, 'É impossível adicionar imagens e vídeos às slides do PowerPoint.', 0, 1),
(134, 6, 'O PowerPoint possui recursos para criar transições entre os slides.', 1, 1),
(135, 6, 'O PowerPoint não permite adicionar efeitos de animação aos objetos das slides.', 0, 1),
(136, 6, 'O PowerPoint oferece opções para personalizar o layout e o design das slides.', 1, 1),
(137, 6, 'O Excel é um software de planilha eletrônica desenvolvido pela Microsoft.', 1, 1),
(138, 6, 'É impossível usar o Excel para fazer cálculos e realizar operações matemáticas.', 0, 1),
(140, 6, 'O Excel não  permite criar gráficos e visualizações de dados.', 0, 1),
(141, 6, 'Para tomada de decisões é possivel utilizar a função SE para realizar essa ação.', 1, 1),
(142, 6, 'A função OU do excel basta que apenas umas da sentenças seja verdade para que a saída seja verdadeira.', 1, 1),
(143, 5, 'No scratch s? ? possivel criar um ator.', 0, 1),
(144, 5, 'No scratch n?o ? possivel dar movimento para os atores.', 0, 1),
(145, 5, 'Nos sensores ? possivel atrelar algum evento a uma tecla quando acionada.', 1, 1),
(146, 5, 'Na plataforma Scratch existe uma se??o para poder trabalho com o som nos jogos.', 1, 1),
(147, 5, ' Scratch possui uma fun??o de detec??o de colis?es que facilita a interatividade em jogos.', 1, 1),
(148, 5, ' ? poss?vel programar a intera??o com teclado e mouse no Scratch.', 1, 1),
(149, 5, ' Scratch n?o permite a integra??o de multim?dia, como imagens e sons, nos projetos.', 0, 1),
(150, 5, 'O Scratch não é especialmente projetado para ensinar programação a crianças e jovens.', 0, 1),
(151, 5, 'Scratch é usado em contextos educacionais para ensinar conceitos de ciências da computação.', 1, 1),
(152, 5, 'O Scratch permite a exportação de projetos para serem executados offline.', 0, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCurso`);

--
-- Índices para tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`idPergunta`),
  ADD KEY `fk` (`idCursoFK`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `idPergunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`idCursoFK`) REFERENCES `cursos` (`idCurso`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
