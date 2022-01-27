for filename in *.png; do
    dir="${filename%%.*}"

    echo "ocr.${filename}"
    mkdir "./$dir"
    tesseract $filename "ocr.${filename}" -l fra
    mv $filename "./${dir}"
    mv "ocr.${filename}.txt" "./${dir}"
done