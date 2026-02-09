<h2 align="center"> Mapeamento da Pastagem no estado de Santa Catarina</h2>

[//]:#(imagem)
<br>
<div align="center">
    <img src="imgs/campo_DSC_0630_25_11_2025_15_23.jpg" width="80%" alt="Processo de Operacionalização">
    <p><i>Figura 2: Processo metodologico bruto.</i></p>
</div>



[//]: #(Introducao)
<h2 align="Left">Introdução</h2>
<div align="justify"> 
    Trabalho de mapeamento de pastagens do estado de Santa Catarina para o ano de 2024 realizado pela parceria entre Lapig e Remapgeo. Utilizando imagens do satélite Sentinel 2A/B com 10 metros de resolução espacial, dados de referência do Mapbiomas e Global Pasture Watch, foi possível gerar uma classificação supervisionada realizada com o Algorítmo Random Forest para todo o estado,descrita em <a href="pasta_de_metodologia.sh">metodologia</a>.
</div>


[//]:#(imagem)
<br>
<div align="center">
    <img src="imgs/Metodologia_Pastagens_SC.png" width="90%" alt="Processo de Operacionalização">
    <p><i>Figura 2: Processo metodologico.</i></p>
</div>

<br>

[//]:#(tabela)
<br>
<div align="justify">
    Quando os dados precisam de correção de valor sem dados e de reclassificação:
    <ul>
        <li><b>1- </b> De valores o script de <a href="Data_processing/gdal_reclass_nodata.sh">reclassificação de nodata</a>.</li>
        <li><b>2-</b> Para simplificar a classificação feita pelo mapbiomas (coleção 9) usar o código de <a href="Data_processing/reclassificar_mapbiomas.sh">reclassificação dados mapbiomas</a> .</li>
        <li><b>3-</b> Para dados de biomassa foi utilizado o script de <a href="Data_processing\reclassification_values_biomass_vigor.sh">reclassificação de ranges de biomassa</a></li>
        </li>
    </ul>    
</div>

<br>

<div align="center">

[//]:#(table)

| Variável | Tipo de Dado | NoData | Arquivo (Link do Drive) |
| :---: | :---: | :---: | :---: |
| Áreas de Preservação Permanente(APP) | Byte | 0 | [APPs_AmaCerrPan.tif](https://drive.google.com/file/d/1S6Yvwy3vLhejGpNtzql6kiu2rKjmJlwF/view?usp=drive_link) |
| Vigor 2018 | int8 | 0 | [pastagem_EVI_normalizado_30_2018_entrada_final.tif](https://drive.google.com/file/d/114AsSj_YKjlN2saVRcOkj80YCGt4MfXf/view?usp=drive_link) |
| Vigor 2023 | int8 | 0 | [pastagem_EVI_normalizado_30_2023_entrada_final.tif](https://drive.google.com/file/d/1bnSU_VGtmJRuY-OkeoUd6nNZoow5Z6Y3/view?usp=drive_link) |
</div>

<br>

<div align="center">
Controle de dados de saída e gabarito de parametros (No Data/ Formato de dados).
</div>