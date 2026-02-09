#!/bin/bash

##################################################################################################################################
#Listar todos os tifs de uma pasta com subpastas
find AUDITORIAS-SC -name "*_salvo.tif" > lista_tifs_auditados.txt

######################################################################################################################################
#Gerar .vrt CASO NAO TENHA PROBLEMA NA EXTENSAO
# Exemplo de como converter um ponto ou par de coordenadas
echo "-53.8372027870000025 -29.3551468540000009 -48.3278351499999985 -25.9558319879999999" | gdaltransform -s_srs EPSG:4326 -t_srs EPSG:3857
##convertido para 3857 = -5993129.99998305 -3420926.39517507 -48.32783515 -53.8974797427167047,-29.4032067221581208 : -48.2833685430833413,-25.6433979320042766
gdalbuildvrt -tr 10 10 -te -5993129.99998305 -3420926.39517507 -48.32783515 -srcnodata 0 -input_file_list lista_tifs_auditados.txt class_SC_auditado_sem_falha.vrt

gdalbuildvrt -srcnodata 0 -input_file_list lista_tifs_auditados.txt class_SC_auditado_sem_falha.vrt 

gdal_translate -ot Int16 class_SC_auditado_sem_falha.vrt classificacao_pastagem_SC_auditado.tif -co COMPRESS=LZW

######################################################################################################################################
##converter para EPSG:4326=-53.8372027870000025 -29.3551468540000009 -48.3278351499999985 -25.9558319879999999 e usar a configuração "-t_srs EPSG:4326 \"
##converter para EPSG:3857=-5993129.9999830489978194 -3420924.8036702643148601 -5379828.6269787102937698 -2993611.5736665474250913
#CASO TENHA PROBLEMA DE EXTENSAO
##caso queira puxar os arquivos direto da lista usar "$(cat lista_tifs_auditados.txt)" nos arquivos de entrada

gdalwarp \
  -te_srs EPSG:3857 \
  -te -5993129.9999830489978194 -3420924.8036702643148601 -5379828.6269787102937698 -2993611.5736665474250913 \
  -tr 10.0 10.0 \
  -tap \
  -srcnodata 0 \
  -dstnodata 0 \
   class_SC_auditado_sem_falha.vrt\
   class_SC_auditado_beta3.tif \
  -co COMPRESS=LZW \
  -co TILED=YES \
  -co BIGTIFF=YES
#####################################################################################################################################
gdaladdo class_SC_auditado_beta3.tif 2 4 8 16

####################################################################################################################################
#Resolvendo problemas
gdalbuildvrt -tr 10.0 10.0 -srcnodata 0 classificacao_pastagem_SC_refinado_v4.vrt Classificacao_Pasture_Moda_3857_corrigido.tif SC_Refinado_Alinhado_comprimido.tif

gdal_translate classificacao_pastagem_SC_refinado_v4.vrt \
    classificacao_pastagem_SC_refinado_v4.tif \
    -co COMPRESS=LZW

#vetorizado no qgis
gdal_calc.py -A RECALCULAR_4326.tif \
    --outfile="classificacao_pastagem_SC_refinado_4326.tif" \
    --calc="(A == -1)*0 + (A == 0)*0 + (A == 1)*1 + ( A == 2)*2 + ( A == 3)*1 + ( A == 4)*1 + ( A == 5)*1 + (A == 24)*1 + (A == 25)*1" \
    --NoDataValue=0 \
    --co="COMPRESS=LZW" \
    --co="BIGTIFF=YES" \
    --co="TILED=YES"


gdalwarp \
    -cutline UF_Santa_Catarina_2024/SC_reproj.shp \
    -crop_to_cutline \
    -tr 10 10 \
    -tap \
    -dstnodata 0 \
    -co COMPRESS=LZW \
    classificacao_pastagem_SC_refinado_v4_corrigido.tif \
    Cclassificacao_pastagem_SC_refinado_v4_corrigido_recortado.tif



gdal_calc.py -A "Classificação_Pasture_Moda_3857.tif" \
    --outfile="Classificacao_Pasture_Moda_3857_corrigido.tif" \
    --calc="(A == -1)*0 + (A == 0)*0 + (A == 1)*1 + ( A == 2)*2" \
    --NoDataValue=0 \
    --co="COMPRESS=LZW" \
    --co="BIGTIFF=YES" \
    --co="TILED=YES"