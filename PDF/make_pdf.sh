echo "Generating lowres pages:"
for f in ../originais/*.jpg
do
    echo "Converting $f ..."
    convert $f -rotate 90 -resize 1000 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/*.lowres.jpg Procedimentos_Microprogramados_num_Minicomputador__EGrassiani_1975.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
