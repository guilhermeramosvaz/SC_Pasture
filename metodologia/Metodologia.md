<h2 align="center"> Processos metodologicos</h2>

[//]: #(Mapbiomas_carta_IBGE)
<h3 align="Left">Definição de metodologia</h3>
<div align="justify"> 
    A metodologia de classificação utilizando o algoritmo Random Forest descrita no <a href=""> Documento Base Teórico de Algoritmos (ATBD) </a>, realizada pelo Mapbiomas (figura 1) foi base para projeto. Usar cartas do Instituto Brasileiro de Geografia e Estatística (IBGE) para delimitar regiões de classificação. Para cada carta, é utilizado as amostras da carta central e um buffer de 100 km da vizinhança para o treinamento do classificador. São 12 modelos no total.
</div>

[//]:#(imagem_metodologia)
<br>
<div align="center">
    <img src="../imgs/Metodologia_Pastagens_SC.png" width="85%" alt="Processo de Operacionalização">
    <p><i>Figura 1: Procedimento metodologico do Mapbiomas para área de estudo.</i></p>
</div>
<br>

[//]: #(Desenho_amostral)
<h3 align="Left"> Desenho amostral</h3>
<div align="justify"> 
    Foi realizado o Sorteio aleatório estratificado proporcionalmente pelos estratos secundários e uniforme para as 3 classes resultantes das máscaras de referência (Mapbiomas uso e cobertura e Global Pasture Watch) ambas contendo as classes de pastagem natural, cultivada e outros. especificamente a máscara do mapbiomas resumiu todas as classes que não fossem vegetação campestre, pastagem e mosaico de usos foram classificadas com "outros" para evitar confusão com todas as outras classes que não são o foco da pesquisa.
</div>

<br>

[//]:#(tabela)
<div align="center">

| Classes Mapbiomas 2022 | Classes GPW 2022 | Classes resultantes |
| :--- | :--- | :--- |
| Outros | Outros | **Outros** |
| Mosaicos de uso | Outros | **Outros** |
| Campestre | Outros | **Pastagem natural** |
| Campestre | Pastagem cultivada | **Pastagem natural** |
| Campestre | Pastagem natural | **Pastagem natural** |
| Pastagem | Pastagem natural | **Pastagem natural** |
| Outros | Pastagem natural | **Pastagem natural** |
| Mosaicos de uso | Pastagem natural | **Pastagem natural** |
| Mosaicos de uso | Pastagem cultivada | **Pastagem cultivada** |
| Outros | Pastagem cultivada | **Pastagem cultivada** |
| Pastagem | Outros | **Pastagem cultivada** |
| Pastagem | Pastagem cultivada | **Pastagem cultivada** |
<p><i>tabela 1: Resultado da extratificação.</i></p>
</div>

[//]:#(imagem_tvi)
<br>
<div align="center">
    <img src="../imgs/tvi.png" width="85%" alt="Processo de Operacionalização">
    <p><i>Figura 2: Interface de login do programa TVI.</i></p>
</div>
<br>

[//]: #(TVI)
<h3 align="Left"> Inspeção visual de pontos</h3>
<div align="justify"> 
    Utilizando as 12440 amostras de treinamento geradas para o estado de Santa Catarina, sendo elas 4146 amostras para cada classe, foi feita a inspeção dessas por meio da ferramenta <a href="https://tvi.lapig.iesa.ufg.br/#/login"> Temporal Visual Inspection (TVI) </a> (figura 2) com 8 interpretes realizando a tarefa, sendo 3 para cada ponto. Para guiar os interpretes e manter um padrão, os treinamentos foram feitos com base na <a href="https://docs.google.com/presentation/d/14btajwTHDlzbbUBkzLCp_Xkhf3z1T0N4tCqUNYvzHHo/edit?usp=sharing"> chave de interpretação</a> costruída para o projeto.
</div>

[//]: #(Classificacao)
<h3 align="Left"> Inspeção visual de pontos</h3>
<div align="justify"> 
    Utilizando as 12440 amostras de treinamento geradas para o estado de Santa Catarina, sendo elas 4146 amostras para cada classe, foi feita a inspeção dessas por meio da ferramenta <a href="https://tvi.lapig.iesa.ufg.br/#/login"> Temporal Visual Inspection (TVI) </a> (figura 2) com 8 interpretes realizando a tarefa, sendo 3 para cada ponto. Para guiar os interpretes e manter um padrão, os treinamentos foram feitos com base na <a href="https://docs.google.com/presentation/d/14btajwTHDlzbbUBkzLCp_Xkhf3z1T0N4tCqUNYvzHHo/edit?usp=sharing"> chave de interpretação</a> costruída para o projeto.
</div>