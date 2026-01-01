#!/bin/bash

tmp="./tmp"
dest="../export"
source="./source"
sourceImages="$source/images"
doc="catlair-archcode"
pngWidth=2048

rm -rf $tmp && \
mkdir $tmp && \


# Найти все файлы и передать в xargs для обработки rsvg-convert
#find "$sourceImages" -name "*.svg" | xargs -I {} sh -c '
#    fileName=$(basename "{}" .svg)
#    rsvg-convert "{}" -w '"$pngWidth"' -o '"$tmp"'/$fileName.png
#' && \


cp source/$doc-ru.tex $tmp/ && \
cp source/$doc-en.tex $tmp/ && \

## Build tex
##pandoc flumen.md -o ./$dest/flumen.tex --strip-comments

pdflatex -interaction=errorstopmode -output-directory=$tmp/ $tmp/$doc-ru.tex && \
pdflatex -interaction=errorstopmode -output-directory=$tmp/ $tmp/$doc-ru.tex && \

pdflatex -interaction=batchmode -output-directory=$tmp/ $tmp/$doc-en.tex && \
pdflatex -interaction=batchmode -output-directory=$tmp/ $tmp/$doc-en.tex && \

pandoc $tmp/$doc-ru.tex -o $tmp/$doc-ru.md && \
pandoc $tmp/$doc-en.tex -o $tmp/$doc-en.md && \

rm -rf $dest && \
mkdir $dest && \

mv $tmp/*.pdf $dest/ && \
mv $tmp/*.md $dest/ && \
#mv $tmp/*.png $dest/ && \
mv $tmp/*.tex $dest/ && \

echo RESULT_COMPLETE || echo RESULT_ERROR
