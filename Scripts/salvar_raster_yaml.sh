#Salvar o arquivo
gdal_translate class_pastagem_guilherme_1.tif \
    class_pastagem_guilherme_mod_1.tif \
    -co COMPRESS=LZW


#arrumar o erro das versoes juntando as versoes
gdalbuildvrt -srcnodata 0 \
    class_pastagem_guilherme_mod.vrt \
    class_pastagem_guilherme_mod_parcial.tif incremento.tif &&\

gdal_translate class_pastagem_guilherme_mod.vrt \
    class_pastagem_guilherme_mod.tif \
    -co COMPRESS=LZW

#pegar incrementos de rasters separados
gdal_calc.py -A class_pastagem_guilherme_mod_1.tif \
    --outfile="incremento.tif" \
    --calc="(A == 0)*0 + ( A == 2)*2 + (A == 1)*1" \
    --co="COMPRESS=LZW" \
    --co="BIGTIFF=YES" \
    --co="TILED=YES"

#logica de soma direta
gdal_calc.py -A class_pastagem_guilherme_mod_parcial.tif \
    -B incremento.tif \
    --outfile=raster_resultado.tif \
    --calc="((A*10) + B)*1" \
    --co="COMPRESS=LZW" \
    --co="BIGTIFF=YES" \
    --co="TILED=YES" && \
    
#logica de substituicao de valores 
gdal_calc.py -A raster_resultado.tif \
    --outfile="class_pastagem_guilherme_mod.tif" \
    --calc="(A == 0)*0 + (A == 1)*1 + ( A == 10)*1 + ( A == 11)*1 + ( A == 12)*1 + ( A == 21)*1 + (A == 4)*2 + (A == 20)*2 + ( A == 22)*2" \
    --co="COMPRESS=LZW" \
    --co="BIGTIFF=YES" \
    --co="TILED=YES"
