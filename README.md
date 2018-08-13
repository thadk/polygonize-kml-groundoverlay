# polygonize-kml-groundoverlay
Makefile workflow: takes in a folder of KML files with flat GroundOverlay images, extracts clean vector polygons from them

## Prerequisites
* Docker
* Mapshaper (`npm install -g mapshaper`)

## Instructions
Use `make` to generate the summary geojson file from all kml files in the `data\kml\` folder. Add `mapshaper` rules to merge in other data.

## Credits
* Makes use of geodata/grass and kartoza/qgis-desktop Docker images for GRASS and GDAL libraries.

GRASS is needed to clean the polygons so they can be union'd or intersected.