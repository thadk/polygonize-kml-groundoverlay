#!/bin/bash
export filepath=`ls ${TARGET_GRASS_SHP} | grep \.shp$ | sed 's/\.shp$//g'`
export file=`basename ${filepath}`
# echo ${TARGET_GRASS_SHP} $filepath $file
v.in.ogr   input=./${filepath}.shp -o  --overwrite output=$file
v.out.ogr input=${file}  type=point,line,boundary,area output=${TARGET_GRASS_OUT}
g.remove -f type="vector" name=$file
exit
