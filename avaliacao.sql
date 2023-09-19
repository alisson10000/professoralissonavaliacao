-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19/09/2023 às 16:23
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `idCurso` int(11) NOT NULL,
  `nomeCurso` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `anoCurso` date NOT NULL,
  `descricaoCurso` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
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
-- Estrutura para tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `idPergunta` int(11) NOT NULL,
  `idCursoFK` int(11) NOT NULL,
  `enunciadoPergunta` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `statusPergunta` tinyint(1) NOT NULL,
  `periodoPergunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `perguntas`
--

INSERT INTO `perguntas` (`idPergunta`, `idCursoFK`, `enunciadoPergunta`, `statusPergunta`, `periodoPergunta`) VALUES
(28, 1, 'html Ã© uma linguagem de marcaÃ§Ã£o de texto.', 1, 0),
(29, 1, 'O Cascading Style Sheets (CSS) Ã© uma \"folha de estilo\" composta por â€œcamadasâ€ e utilizada para definir a apresentaÃ§Ã£o (aparÃªncia) em pÃ¡ginas da internet que adotam para o seu desenvolvimento linguagens de marcaÃ§Ã£o (como XML, HTML e XHTML). O CSS define como serÃ£o exibidos os elementos contidos no cÃ³digo de uma pÃ¡gina da internet e sua maior vantagem Ã© efetuar a separaÃ§Ã£o entre o formato e o conteÃºdo de um documento. ', 1, 0),
(30, 1, 'NÃ£o Ã© possÃ­vel criar um seletor em css.', 0, 0),
(34, 1, 'O DOM (Document Object Model) nÃ£o Ã© uma interface que representa como os documentos HTML e XML sÃ£o lidos pelo seu browser. ApÃ³s o browser ler seu documento HTML, ele cria um objeto que faz uma representaÃ§Ã£o estruturada do seu documento e define meios de como essa estrutura pode ser acessada. NÃ³s podemos acessar e manipular o DOM com JavaScript, nÃ£o Ã© a forma mais fÃ¡cil e usada.', 0, 0),
(35, 1, 'Os operadores lÃ³gicos entram quando precisamos realizar operaÃ§Ãµes sobre um ou dois valores booleano do tipo string.', 0, 0),
(36, 1, 'os sÃ­mbolos a seguir nÃ£o sÃ£o de operadores de comparaÃ§Ã£o: > < >= <= <>.', 0, 0),
(37, 1, ' o JavaScript Ã© uma das trÃªs principais tecnologias da World Wide Web. JavaScript permite pÃ¡ginas da Web interativas e, portanto, Ã© uma parte essencial dos aplicativos da web. A grande maioria dos sites usa, e todos os principais navegadores tÃªm um mecanismo JavaScript dedicado para executÃ¡-lo', 1, 0),
(38, 1, 'O SEO (Search Engine Optimization), tambÃ©m conhecido como otimizaÃ§Ã£o de sites, Ã© rapidamente definido como uma forma de aumentar os acessos do seu site atravÃ©s de um conjunto de tÃ©cnicas e estratÃ©gias que permitem que um site melhore seu posicionamento nos resultados orgÃ¢nicos dos mecanismos de busca, como Google e ', 1, 0),
(39, 1, 'Em HTML elemento pai Ã© aquele que contÃ©m outros elementos HTML', 1, 0),
(40, 1, 'A title  Ã© uma tag marcaÃ§Ã£o do cÃ³digo HTML (<title> e </title>) que representa o tÃ­tulo de uma pÃ¡gina.', 1, 0),
(41, 4, 'Pode-se afirmar que a fÃ³rmula MOD() do EXCEL para descobrir se um nÃºmero Ã© par ou Ã­mpar tem sua sintaxe correta em MOD(A2;2=0) e a sintaxe errada Ã© MOD(A2;2)=0.', 0, 0),
(42, 4, 'A fÃ³rmula SEERRO do EXCEL Ã© utilizada para tratamento de erros\r\n,ou seja, caso o EXCEL apresente algum dado inconsistente ela pode\r\ninformar ao usuÃ¡rio alguma resposta de retorno e a mesma\r\n nÃ£o pode ser utilizada em conjunto com outras funÃ§Ãµes.', 0, 0),
(43, 4, 'A fÃ³rmula ÃNDICE Ã© utilizada para retornar um valor de cÃ©lula especÃ­fica\r\nde uma matriz relacionada e a mesma pode buscar valores em uma ou mais matrizes,\r\nna fÃ³rmula a seguir: =ÃNDICE((B6:E9;I6:L9;B16:E19;I16:L19);1;2;4), podemos afirmar\r\nque na busca realizada foram selecionadas quatro Ã¡reas diferentes para retornar\r\numa valor de consulta.', 1, 0),
(44, 4, 'Ao trabalharmos com o Excel o mesmo oferece um recurso muito interessante que\r\nÃ© a possibilidade de selecionar uma fÃ³rmula e arrastÃ¡-la para atingir diversas\r\nlinhas ou colunas. Entretanto em algumas situaÃ§Ãµes Ã© necessÃ¡rio que um valor\r\nna fÃ³rmula seja fixado. EntÃ£o, podemos dizer que, para essa aÃ§Ã£o Ã© necessÃ¡rio utilizar o \r\nsÃ­mbolo $ para que isso possa acontecer.', 1, 0),
(45, 4, 'vocÃª pode reparar que a fÃ³rmula PROC traz o sentido de procurar. EntÃ£o quando vocÃª \r\ntiver uma tabela na vertical e quiser procurar uma informaÃ§Ã£o vocÃª vai usar o PROCH.', 0, 0),
(46, 4, 'A funÃ§Ã£o procurar apresenta a posiÃ§Ã£o do carcter de uma determindada cÃ©lula.\r\nEm algumas situaÃ§Ãµes hÃ¡ a necessidade de obter parte de um texto. Sendo assim\r\npodemos afirmar que esta pode ser utilizada em conjunto com a funÃ§Ã£o EXT.TEXTO\r\npara executar tal aÃ§Ã£o.', 1, 0),
(47, 4, 'Quando queremos remover parte fracinÃ¡ria do nÃºmero podemos utilizar a funÃ§Ã£o truncar.\r\nA funÃ§Ã£o INT arredonda nÃºmeros para baixo atÃ© o inteiro mais prÃ³ximo com base no \r\nvalor da parte fracionÃ¡ria do nÃºmero. INT e TRUNCAR sÃ£o diferente apenas ao usar nÃºmeros\r\nnegativos.', 1, 0),
(48, 4, 'As passagens de parÃ¢metros utilizadas na funÃ§Ã£o BDSOMA sÃ£o respectivamente:\r\nbanco de dados;campo e critÃ©rios.', 1, 0),
(49, 4, 'Em alguns casos existem cÃ©lulas da nossa planÃ­lha que nÃ£o queremos que as mesmas\r\nsejam editadas, por isso a aÃ§Ã£o de proteger cÃ©lulas nÃ£o Ã© importante.', 0, 0),
(50, 4, 'Quando utilizamos em nossa planilha um valor de moeda flutuante\r\no recurso de importar dados da internet nos ajuda a manter as informaÃ§Ãµes \r\natualizadas.', 1, 0),
(51, 2, 'Sistema operativo (portuguÃªs europeu) ou operacional (portuguÃªs brasileiro) \r\n(em inglÃªs: Operating System - OS) Ã© um programa cuja a funÃ§Ã£o Ã© gerenciar os recursos do hardware \r\n(definir qual programa receber atenÃ§Ã£o do processador, gerenciar memÃ³ria, criar um sistema de arquivos, etc.),\r\nfornecendo uma interface entre o computador e o usuÃ¡rio.', 1, 0),
(52, 2, 'No CMD(prompt de comando)  a sintaxe (o comando) cd.. ao executar muda para um diretÃ³rio\r\nmais distante da raiz.', 0, 0),
(53, 2, 'O comando  shutdown -s -t XXXX desliga o computador em um tempo informado pelo usuÃ¡rio.', 1, 0),
(54, 2, 'O Windows 10 (ou simplesmente Windows) Ã© uma famÃ­lia de sistemas operacionais desenvolvidos,\r\n comercializados e vendidos pela empresa UBUNTU.Ã‰ constituÃ­da por vÃ¡rias famÃ­lias de sistemas\r\n operacionais, cada qual atendendo a um determinado setor da indÃºstria da computaÃ§Ã£o,\r\n sendo que o sistema geralmente Ã© associado com a arquitetura IBM PC compatÃ­vel.', 0, 0),
(55, 2, 'Arquivos .BAT sÃ£o arquivos de lote que armazenam diversas\r\n instruÃ§Ãµes para serem executadas pelo Windows. Ã‰ possÃ­vel \r\ncriar e executar desde rotinas simples\r\n atÃ© rotinas complexas, tal como realizar recuperaÃ§Ã£o\r\n de banco de dados, automatizar backups, \r\nmapear unidades de rede e muito mais.', 1, 0),
(56, 2, 'O Microsoft Word Ã© um processador de texto produzido pela Microsoft \r\nOffice criado por Richard Brodie para computadores IBM PC \r\ncom o sistema operacional DOS em 1983.', 1, 0),
(57, 2, 'No programa word ao executarmos o comando SHIFT+END o mesmo irÃ¡ selecionar todo o texto.', 0, 0),
(58, 2, 'A tecla de atalho F7 no word Ã© utilizada para realizar a tarefa de correÃ§Ã£o ortogrÃ¡fica.', 1, 0),
(59, 2, 'A tecla de atalho CTRL+B Ã© utilizada para salvar um arquivo.', 1, 0),
(60, 2, 'A tecla de atalho CTRL+J Ã© utilizada para centralizar um texto.', 0, 0),
(61, 3, 'MIT App Inventor, tambÃ©m conhecido como App Inventor for Android,\r\n Ã© uma aplicaÃ§Ã£o cÃ³digo aberto originalmente criada pela Google, e \r\natualmente mantida pelo Massachusetts Institute of Technology (MIT).', 1, 0),
(62, 3, 'Para desenvolver projetos no App Inventor nÃ£o hÃ¡ necessidade de ter\r\nconexao com a internet.', 0, 0),
(63, 3, 'O emulador Ã© uma aplicaÃ§Ã£o para simular os projetos que sÃ£o desenvolvidos\r\nna plataforma do App.', 1, 0),
(64, 3, 'Ao criarmos um aplicativo Ã© importante inicializarmos as variÃ¡veis para\r\nas mesmas nÃ£o possuirem lixo de memÃ³ria.', 1, 0),
(65, 3, 'Um algoritmo Ã© uma sequÃªncia finita de aÃ§Ãµes executÃ¡veis que visam obter\r\n uma soluÃ§Ã£o para um determinado tipo de problema.', 1, 0),
(66, 3, 'Os sinais a seguir sÃ£o considerados operadores lÃ³gicos + - * / ^.', 0, 0),
(67, 3, 'Na estrutura condicional SE o primeiro bloco de instruÃ§ao executa \r\nmesmo se a assertiva for falsa.', 0, 0),
(68, 3, 'Interface de ProgramaÃ§Ã£o de AplicaÃ§Ãµes (portuguÃªs europeu) ou Interface de ProgramaÃ§Ã£o de AplicaÃ§Ã£o (portuguÃªs brasileiro)), cuja sigla API provÃ©m do InglÃªs Application Programming Interface, Ã© um conjunto de rotinas e padrÃµes estabelecidos por um software para a utilizaÃ§Ã£o das suas funcionalidades por aplicativos que nÃ£o pretendem envolver-se em detalhes da implementaÃ§Ã£o do software, mas apenas usar seus serviÃ§os.', 1, 0),
(69, 3, 'No ambiente de desenvolvimento do App Inventor nos COMPONENTES sÃ£o criados \r\nos valores de interface com usuÃ¡rio e nas PROPRIEDADES os valores das variÃ¡veis.', 0, 0),
(70, 3, 'A instruÃ§Ã£o fill parent Ã© utilizada para dar largura ou altura automÃ¡tica,\r\nou seja, de acordo com o tamanho de tela do aparelho.', 1, 0),
(71, 4, 'Em cenÃ¡rios Ã© utilizado o teste de hipÃ³teses para gerar tablelas onde possam ser avaliados previsÃµes em valores de investimento.\r\n', 1, 1),
(72, 4, 'Em metas ao realizar o teste de hipÃ³teses NÃ‚O hÃ¡ necessidade de definir uma cÃ©lula para que a meta seja atingida.\r\n', 0, 1),
(74, 4, 'Ao realizar consolidÃ§Ã£o de dados sÃ³ Ã© possivel ser feito obtendo os dados de uma sÃ³ plhanilha.\r\nA funÃ§Ã£o subtotal Ã© utlizada para obter apenas a somas  de valores de uma subregiÃ£o de  matriz de valores, sendo assim\r\nnÃ£o Ã© possivel utilizar as funÃ§Ãµes junto a elas:(mÃ©dia, Cont.Num, Cont.Valores, Maximo, Minimo...etc)', 0, 1),
(75, 4, 'Na tabela dinÃ¢mica nÃ£o hÃ¡ necessidade de atualizar as informaÃ§Ãµes quando as mesmas sÃ£o alteradas\r\n', 0, 1),
(76, 4, 'Em tabela dinÃ¢mica pode ser utilizada o mÃ©todo de segmentaÃ§Ã£o de dados.', 1, 1),
(77, 4, 'Uma macro no Excel, ou tambÃ©m em outro programa do pacote Office, Ã© uma gravaÃ§Ã£o feita\r\n pelo usuÃ¡rio de maneira que ele possa reutilizar\r\n o processo para automatizar tarefas.', 1, 1),
(78, 4, 'O Visual Basic for Applications (VBA) Ã© uma implementaÃ§Ã£o do Visual \r\nBasic da Microsoft incorporada em todos os programas do Microsoft Office\r\n - dentro desse pacote estÃ£o os famosos\r\n aplicativos Office (Word, Excel, Power Point, Access, etc).', 1, 1),
(79, 4, 'Ao escrever um programa em VBA nÃ£o existe a necessidade de declarar as variÃ¡veis.', 0, 1),
(80, 4, 'Os operadores aritmÃ©ticos nÃ£o podem ser utilizados para cÃ¡lculos matemÃ¡ticos.', 0, 1),
(81, 4, 'A estrutura condicional SE (if) Ã© utlizada quando existe a necessidade de realizar um ou mais testes lÃ³gicos.\r\n', 1, 1),
(82, 2, '\r\n1-Microsoft PowerPoint Ã© um programa utilizado para criaÃ§Ã£o/ediÃ§Ã£o e exibiÃ§Ã£o de\r\n apresentaÃ§Ãµes grÃ¡ficas, originalmente escrito para o sistema operacional Windows\r\n e portado para a plataforma Mac OS X. A versÃ£o para Windows tambÃ©m funciona no Linux\r\n atravÃ©s da camada de compatibilidade Wine. HÃ¡ ainda uma versÃ£o mobile para smartphones\r\n que rodam o sistema Windows Phone.', 1, 1),
(83, 2, 'Nas apresentaÃ§Ãµes de slides nÃ£o Ã© possivel colocar vÃ­deos.', 0, 1),
(84, 2, 'Um slide mestre Ã© o slide principal em uma hierarquia de slides que armazena todas as informaÃ§Ãµes\r\n sobre o tema e os layouts de slide de uma apresentaÃ§Ã£o, inclusive o plano de fundo, a cor, as fontes, \r\nos efeitos, os tamanhos de espaÃ§os reservados e o posicionamento.', 1, 1),
(85, 2, 'PPT Ã© a extenÃ§Ã£o de um arquivo em PowerPoint.', 1, 1),
(86, 2, 'O Microsoft Excel Ã© um editor de planilhas (Folhas de CÃ¡lculo) produzido pela Microsoft para\r\n computadores que utilizam o sistema operacional Microsoft Windows, alÃ©m de computadores\r\n Macintosh da Apple Inc. e dispositivos mÃ³veis como o Windows Phone, Android ou o iOS.\r\n Seus recursos incluem uma interface intuitiva e capacitadas ferramentas de cÃ¡lculo e \r\nde construÃ§Ã£o de tabelas que, juntamente com marketing agressivo, tornaram o Excel um\r\n dos mais populares aplicativos de computador atÃ© hoje. Ã‰, com grande vantagem, o aplicativo\r\n de planilha electrÃ³nica dominante, disponÃ­vel para essas plataformas e o tem sido desde a versÃ£o\r\n 5 em 1993 e sua inclusÃ£o como parte do Microsoft Office.', 1, 1),
(87, 2, 'Na funÃ§Ã£o a seguir =soma(A1:A10) serÃ£o apenas somados os valores das cÃ©lulas A1 e A10.', 0, 1),
(88, 2, 'A fÃ³rmula ÃNDICE Ã© utilizada para retornar um valor de cÃ©lula especÃ­fica de uma matriz relacionada\r\n e a mesma pode buscar valores em uma ou mais matrizes, na fÃ³rmula a seguir: =ÃNDICE((B6:E9;I6:L9;B16:E19;I16:L19);1;2;4),\r\n podemos afirmar que na busca realizada foram selecionadas quatro Ã¡reas diferentes para retornar uma valor de consulta.\r\n', 1, 1),
(89, 2, 'A fÃ³rmula SEERRO do EXCEL Ã© utilizada para tratamento de erros ,ou seja, caso o EXCEL apresente algum dado\r\n inconsistente ela pode informar ao usuÃ¡rio alguma resposta de retorno e a mesma nÃ£o pode ser utilizada em \r\nconjunto com outras funÃ§Ãµes.', 0, 1),
(90, 2, 'Ao trabalharmos com o Excel o mesmo oferece um recurso muito interessante que \r\nÃ© a possibilidade de selecionar uma fÃ³rmula e arrastÃ¡-la para atingir diversas linhas \r\nou colunas. Entretanto em algumas situaÃ§Ãµes Ã© necessÃ¡rio que um valor na fÃ³rmula seja fixado.\r\n EntÃ£o, podemos dizer que, para essa aÃ§Ã£o Ã© necessÃ¡rio utilizar o sÃ­mbolo $ para que isso possa acontecer.', 1, 1),
(91, 2, 'A funÃ§Ã£o corresp retorna o valor respectivo da linha que estÃ¡ sendo procurado.', 1, 1),
(92, 3, 'Os componentes web e notifier sÃ£o considerados nÃ£o visiveis pois os mesmos nÃ£o influenciam \r\nna interce do aplicativo.', 1, 1),
(93, 3, 'O componente TimePicker Ã© utilizado para informar a data em uma aplicaÃ§Ã£o.', 0, 1),
(94, 3, ' O componente DatePicker Ã© utilizado para informar a hora em uma aplicaÃ§Ã£o.\r\n', 0, 1),
(95, 3, 'Na paleta Storage os componentes lÃ¡ sÃ£o utilizado para salvar as informaÃ§Ãµes no banco de dados.', 1, 1),
(96, 3, 'Na chamada do componente notifier Ã© utilizado para enviar mensagens aos usuÃ¡rios.', 1, 1),
(97, 3, 'Um aplicativo nÃ£o pode trabalhar em conjunto com outra linguagem de programaÃ§Ã£o.', 0, 1),
(98, 3, 'Um aplicativo feito no app inventor consegue compartilhar as informaÃ§Ãµes no banco de dados\r\nem um programa servidor.', 1, 1),
(99, 3, 'Uma variÃ¡vel do tipo array pode armazenar mais de um elemento.', 1, 1),
(100, 3, 'Ã‰ possivel realizar a cÃ³pia de codigos no App Inventor com a tecla de atalho ctrl-v.', 1, 1),
(101, 3, 'O mÃ©todo set Ã© utilizado para colocar valor em uma variÃ¡vel e  o mÃ©todo get Ã© para \r\npegar o valor que estÃ¡ em uma variÃ¡vel.', 1, 1),
(102, 1, 'O arquivo de conexao.php Ã© utlizado para a aplicaÃ§Ã£o interagir com o banco de dados.\r\n', 1, 1),
(103, 1, 'A funÃ§Ã£o mysqli_query Ã¨ utlizada para realizaÃ§Ãµes de consutlas no banco de dados.', 1, 1),
(104, 1, 'A funÃ§Ã£o mysqli_num_rows Ã© utilizada para realizar a contagem de ocorrencias no banco de dados.', 1, 1),
(105, 1, 'O metodo POST possui menos seguranÃ§a que o mÃ©todo get.', 0, 1),
(106, 1, 'A session Ã© um recurso do php utilizado para passar informaÃ§Ãµes entre pÃ¡ginas de um projeto.', 1, 1),
(107, 1, 'A consulta: select * from nomeDaTabela, retorna apenas uma ocorrencia do banco de dados.', 0, 1),
(108, 1, 'O acrÃ´nimo MER pode ser entendido como modelo de entidade e relacionamento.', 1, 1),
(109, 1, 'O phpmyadmin Ã© uma interface para facilitar a comunicaÃ§Ã£o com o banco de dados.', 1, 1),
(110, 1, 'A consulta update Ã© utlizada para deletar registros no banco de dados.', 0, 1),
(111, 1, 'Nos projetos desenvolvidos a pasta de serviÃ§os Ã© utlizada para os cÃ³digos de interface \r\ncom o usuÃ¡rio.', 0, 1),
(112, 5, 'O Scratch Ã© uma linguagem de programaÃ§Ã£o criada pelo grupo Lifelong\r\nKindergarten da universidade americana MIT.\r\nTem como objetivo ensinar a lÃ³gica da programaÃ§Ã£o para \r\ncrianÃ§as e adolescentes. ', 1, 0),
(113, 5, 'No cÃ³digo fonte a seÃ§Ã£o MOVIMENTO Ã© responsÃ¡vel pela troca de fantasia do ator.', 0, 0),
(114, 5, 'Para trocar a fantasia de um ator utiliza-se a seÃ§Ã£o do cÃ³digo APARÃŠNCIA.', 1, 0),
(115, 5, 'Os scripts de estrutura de decisÃ£o sÃ£o econtrados na seÃ§Ã£o CONTROLE.', 1, 0),
(116, 5, 'Na aba \"Fantasias\" nÃ£o Ã© possÃ­vel editar a aparÃªncia de um ator.', 0, 0),
(117, 5, 'A estrutura \"SEMPRE\" irÃ¡ executar o script contido nela apenas uma vez.', 0, 0),
(118, 5, 'O operador de comparaÃ§Ã£o \">\" significa \"menor do que\". E o operador de comparaÃ§Ã£o\r\n\"<\" significa \"maior.', 0, 0),
(119, 5, 'O script: \"quando bandeira verde for clicado\" Ã© utilizado no inÃ­cio dos jogos e encontra-se na\r\nseÃ§Ã£o \"EVENTOS\".', 1, 0),
(120, 5, 'A estrutura \"REPITA\" executa um script em um looping infinito.', 0, 0),
(121, 5, 'No Scratch quando criada uma variÃ¡vel nÃ£o Ã© possÃ­vel alterar o seu valor.', 0, 0),
(122, 6, 'O sistema operacional Ã© um programa que gerencia\r\no sistema computacional fÃ­sico\r\n(hardware), gerencia outros pro-\r\ngramas e faz a interface com\r\no usuÃ¡rio, hardware e software.', 1, 0),
(123, 6, 'Ferramenta case sÃ£o programas\nque sÃ£o utilizados dando especificidade\nas Ã¡reas de engenharia de \nsoftware.', 1, 0),
(124, 6, 'A tecla de atalho ctrl + E Ã© utilizada para desligar o computador.', 0, 0),
(125, 6, 'A tecla de atalho ctrl + F minimiza janelas.', 0, 0),
(126, 6, 'Dispositivos de entrada sÃ£o dispositivos de hardware que\nestÃ£o ao redor do computador\nresponsÃ¡veis por enviar dados\npara o usuÃ¡rio>Ex.: Monitor\nimpressora, caixa de som, datashow.', 0, 0),
(127, 6, 'O Microsoft Word Ã© um processador de texto produzido pela Microsoft Office. Foi criado por Richard Brodie para computadores IBM PC com o sistema operacional DOS em 1983. Mais tarde foram criadas versÃµes para o Apple Macintosh (1984), SCO UNIX e Microsoft Windows (1989). Faz parte do conjunto de aplicativos Microsoft Office. \r\nO Microsoft Word pode ser usado para produzir trabalhos escolares e textos acadÃªmicos. Com recursos comparÃ¡veis a outros editores de texto modernos, suporta tambÃ©m a adiÃ§Ã£o e ediÃ§Ã£o bÃ¡sica de imagens e formataÃ§Ã£o de texto.', 1, 0),
(128, 6, 'A fim de nÃ£o perder horas de trabalho o hÃ¡bito de utiliza a tecla de atalho ctrl + B Ã© muito Ãºtil para desde o inÃ­cio salvar o arquivo que serÃ¡ produzido.', 1, 0),
(129, 6, 'Podemos afirmar que as seguintes teclas de atalho no word realizam as seguintes aÃ§Ãµes: ctrl + E  centraliza o texto, ctrl + J justifica o texto, ctrl + G alinha o texto a direita, ctrl + Q alinha o texto a esquerda, ctrl + N coloca o texto em negrito, ctrl + S coloca o texto sublinhado e ctrl + I coloca o texto em itÃ¡lico. ', 1, 0),
(130, 6, 'No programa word em hipÃ³tese nenhuma Ã© possÃ­vel colocar transparÃªncia nas imagens e que tambÃ©m Ã© impossÃ­vel modificÃ¡-las.', 0, 0),
(131, 6, 'Todas as formatÃ§Ãµes realizadas no word nÃ£o hÃ¡ necessidade das palavras estarem selecionadas e a tecla de atalho F8 realiza a correÃ§Ã£o ortogrÃ¡fica', 0, 0),
(132, 6, 'O PowerPoint permite criar apresentaÃ§Ãµes de slides inclisive colocar vÃ­deos.', 1, 1),
(133, 6, 'Ã‰ impossÃ­vel adicionar imagens e vÃ­deos Ã s slides do PowerPoint.', 0, 1),
(134, 6, 'O PowerPoint possui recursos para criar transiÃ§Ãµes entre os slides.', 1, 1),
(135, 6, 'O PowerPoint nÃ£o permite adicionar efeitos de animaÃ§Ã£o aos objetos das slides.', 0, 1),
(136, 6, 'O PowerPoint oferece opÃ§Ãµes para personalizar o layout e o design das slides.', 1, 1),
(137, 6, 'O Excel Ã© um software de planilha eletrÃ´nica desenvolvido pela Microsoft.', 1, 1),
(138, 6, 'Ã‰ impossÃ­vel usar o Excel para fazer cÃ¡lculos e realizar operaÃ§Ãµes matemÃ¡ticas.', 0, 1),
(140, 6, 'O Excel nÃ£o  permite criar grÃ¡ficos e visualizaÃ§Ãµes de dados.', 0, 1),
(141, 6, 'Para tomada de decisÃµes Ã© possivel utilizar a funÃ§Ã£o SE para realizar essa aÃ§Ã£o.', 1, 1),
(142, 6, 'A funÃ§Ã£o OU do excel basta que apenas umas da sentenÃ§as seja verdade para que a saÃ­da seja verdadeira.', 1, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCurso`);

--
-- Índices de tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`idPergunta`),
  ADD KEY `fk` (`idCursoFK`);

--
-- AUTO_INCREMENT para tabelas despejadas
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
  MODIFY `idPergunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `perguntas`
--
ALTER TABLE `perguntas`
  ADD CONSTRAINT `perguntas_ibfk_1` FOREIGN KEY (`idCursoFK`) REFERENCES `cursos` (`idCurso`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
