# polygonize-kml-groundoverlay
Makefile workflow: takes in a folder of KML files with flat GroundOverlay images, extracts clean vector polygons from them

Useful for output from radio reach tools like RadioMobile, Nautel, SPLAT or CloudRF which generate this kind of KML.

Input (screenshot of layer from Google Earth)
![image](https://user-images.githubusercontent.com/283343/44951839-123b8800-ae78-11e8-8352-3e7ff5b83695.png)

output (GeoJSON polgons)

![image](https://user-images.githubusercontent.com/283343/44951843-21bad100-ae78-11e8-9d85-428c4cba7513.png)


## Prerequisites
* Docker
* Mapshaper (`npm install -g mapshaper`)

## Instructions
Use `make` to generate the summary geojson file from all kml files in the `data\kml\` folder. Add `mapshaper` rules to merge in other data.

## Credits
* Makes use of `geodata/grass` and `kartoza/qgis-desktop` Docker images for GRASS and GDAL libraries.
* Also makes use of WorldFileTool.jar, <a href="https://gis.stackexchange.com/a/93174/4911">more
  details</a>.
* Thanks to [Farm Radio International](http://farmradio.org/) support to explore the toolchain.


GRASS is needed to clean the polygons so they can be union'd or intersected.
