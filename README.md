<h1 align="center"> Mapeamento da Pastagem no estado de Santa Catarina</h1>

[//]:#(imagem_pastagem)
<br>
<div align="center">
    <img src="imgs/campo_DSC_0630_25_11_2025_15_23.jpg" width="100%" alt="Foto_pastagem_Vieira_Mesquita(11/2025)">
    <p><i>Figura 1: Lapig(11/2025).</i></p>
</div>

[//]: #(Introducao)
<h2 align="Left">Introdução</h2>
<div align="justify"> 
    Trabalho de mapeamento das pastagens do estado de Santa Catarina para o ano de 2024 realizado pela parceria entre Lapig e Remapgeo. Utilizando imagens do satélite Sentinel 2A/B com 10 metros de resolução espacial, dados de referência do Mapbiomas e Global Pasture Watch, foi possível gerar uma classificação supervisionada para todo o estado, realizada com o Algorítmo Random Forest, descrita em <a href="./metodologia/">metodologia</a>.
</div>

[//]:#(lista_dados_localizacao)
<br>
<div align="justify">
    No presente repositório serão encontrados os seguintes dados:
    <ul>
        <li>Processos metodológicos realizados no decorrer do projeto:</li>
        <ol>
            <li><a href="metodologia\README.md"> Definição de metodologia </a> ;</li>
            <li><a href=""> Geração de amostras </a>;</li>
            <li><a href="metodologia/README.md#classificacao"> Classificação </a>;</li>
            <li><a href="./Resultados/Chave de Interpretação das Pastagens para o Estado de Santa Catarina.pdf"> Chave de interpretação </a>;</li>
            <li><a href="metodologia/README.md#refinamento_e_auditoria"> Refinamento e auditoria </a>;</li>
        </ol>
        <li><b></b> <a href="metodologia/Scripts/">Scripts</a> utilizados em shell script, javascript (utilizado dentro do ambiente Google Earth engine, GEE) e python;</li>
        <li><b></b><a href="Resultados/"> Resultados gerados </a> no processo;</li>
        </li>
    </ul>    
</div>

[//]: #(Base_de_dados)
<h2 align="Left">Bases de dados</h2>
<div align="justify"> 
    Foram utilizados como dados de referência os dados de pastagem <a href="https://brasil.mapbiomas.org/">Mapbiomas</a> e global pasture watch do <a href="https://landcarbonlab.org/about-global-pasture-watch/">Land & Carbon Lab</a> para gerar os pontos utilizados.
</div>

[//]: #(Requisitos)
<h2 align="Left">Requisitos</h2>
<div align="Left"> 
    <ul>
        <li>Python 3.12 ou superior</li>
        <li>Numpy 2.2.4 python package</li>
        <li>Gdal Binaries 3.10.3 </li>
    </ul>    
</div>
<br>

[//]: #(reconhecimento)
<h2 align="Left">Acknowledgements</h2>

| | |
|:---:|:---:|
|This research was supported by Epagri| <div align="center"> <img src="imgs\epagri.png" width="65%" alt="Processo de Operacionalização"> </div>|
|This research was supported by LAPIG/UFG|<div align="center"> <img src="imgs\LAPIG Logo.png" width="25%" alt="Processo de Operacionalização"> </div>|
|This research was supported by Remapgeo|<div align="center"> <img src="imgs\REMAPgeo.png" width="120%" alt="Processo de Operacionalização"> </div>|
