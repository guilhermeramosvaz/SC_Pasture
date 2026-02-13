<h2 align="center"> Descrição do uso dos scripts</h2>

[//]: #(Introducao)
<h3 align="Left">Introdução</h3>
<div align="justify"> 
    Para que fosse possível realizar de forma eficiente  muitos códigos foram desenvolvidos para cada etapa do projeto.
</div>
<br>

[//]:#(imagem_scripts)
<div align="center">
    <img src="../../imgs/scripts_tipos.png" width="70%" alt="Foto_pastagem_Vieira_Mesquita(11/2025)">
    <p><i>Figura 1: Tipos de scripts.</i></p>
</div>
<br>

[//]: #(Sumario)
<details>
  <summary><b>Clique para ver o Sumário</b></summary>
  <ol>
      <li><a href="#gerarpontos">Geração de Amostras</a></li>
      <li><a href="#class">Classificação</a></li>
      <li><a href="#filtro">Filtro de Moda</a></li>
      <li><a href="#rec">Recorte da classificação</a></li>
      <li><a href="#save">Salvar Alterações</a></li>
      <li><a href="#listagem">Listagem de dados</a></li>
      <li><a href="#align">Alinhamento de Dados</a></li>
      <li><a href="#visu">Visualização de Dados</a></li>
  </ol>
</details>
<hr>

[//]: #(GERAR_PONTOS)
<h3 align="left" id="gerarpontos">Geração de Amostras</h3>
<div align="justify"> 
    Através da relação entre os dados do mapeamento do Mapbiomas e Global Pasture Watch (GPW). Executado na IDE R Stúdio em ambiente de linguagem R.<br>
    <a href="./amostras_treinamento_sc_remap.R"><kbd> Código para gerar pontos </kbd></a>
</div>
<br>
<hr>

[//]: #(Classificação)
<h3 align="left" id="class">Classificação</h3>
<div align="justify"> 
    Classificação utilizando o algoritmo random forest com 500 árvores realizando a classificação por cartas do IBGE e unindo os dados após termino de classificações. Foi executado em ambiente de Google Earth Engine (GEE). <br>
    <a href="./Classificacao.js"><kbd> Código de classificação </kbd></a>
</div>
<br>
<hr>

[//]: #(FILTRO_DE_MODA)
<h3 align="left" id="filtro">Filtro de Moda</h3>
<div align="justify"> 
    Aplicação do filtro de moda, o script abaixo contem também filtro de mediana caso desejado. Foi executado em ambiente de Google Earth Engine (GEE). <br>
    <a href="./Classificacao.js"><kbd> Código de aplicação do filtro de moda </kbd></a>
</div>
<br>
<hr>

[//]: #(FILTRO_DE_MODA)
<h3 align="left" id="rec">Recorte da classificação</h3>
<div align="justify"> 
    Após classificação realizada, é necessário que os dados sejam distribuidos para a etapa de refinamento e posteriormente de auditoria. Os dados são recortados e reprojetados para uma projeção que permita utilzar o tamanho do pixel em metros sem necessidade de conversão e separados em pastas para cada interprete. <br>
    <a href="./recorte_automatizado_EPAGRI.sh"><kbd> Código de recorte </kbd></a>
</div>
<br>
<hr>

