#! /bin/bash
rm -rf webapp

# Crea la estructura de carpetas para webapp
mkdir -p webapp/css
mkdir -p webapp/js
mkdir -p webapp/docs/text
mkdir -p webapp/docs/python
mkdir -p webapp/img

for file in index.html style.css app.js main.py
do
    touch ./webapp/"${file}"
done

curl -o ./webapp/meme.jpg "https://pm1.aminoapps.com/7021/417429318f6b29b6bc737fb95ba1ddafc9ba2decr1-720-642v2_hq.jpg"

read -p "Introduce la cantidad de archivos a crear:" numfiles
for x in $( seq 1 $numfiles )
do
    echo "Archivo ${x}" > "./webapp/file${x}.txt"
done

mv ./webapp/style.css ./webapp/css/

for x in $( seq 1 $numfiles )
do
    mv "./webapp/file${x}.txt" ./webapp/docs/text/
done

mv ./webapp/main.py ./webapp/docs/python/

mv ./webapp/app.js ./webapp/js/

mv ./webapp/meme.jpg ./webapp/img/

chmod +x create.sh