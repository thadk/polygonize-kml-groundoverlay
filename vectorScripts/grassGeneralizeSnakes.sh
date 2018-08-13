#!/bin/bash
export filepath=`ls ${TARGET_GRASS_SHP} | grep \.shp$ | sed 's/\.shp$//g'`
export file=`basename ${filepath}`
# echo ${TARGET_GRASS_SHP} $filepath $file
v.in.ogr   input=./${filepath}.shp  --overwrite output=$file -o
# -o flag above makes it ignore projection problems. make sure you have the right prj file.
v.generalize method=snakes threshold=1 input=$file output=${file}_general
v.out.ogr input=${file}_general  type=point,line,boundary,area output=${TARGET_GRASS_OUT}
g.remove -f type="vector,vector" name=$file,${file}_general
exit
