start=$(gdate +%s%N)

echo '--------------------------------------------------'

for file in *; do [[ ! -d $file && -f $file && "./$file" != $0 ]] || continue
    "File removed: $file"
    rm "$file"
done

end=$((($(gdate +%s%N) - $start)/1000000))

echo "Finished in: $end milliseconds"
echo '--------------------------------------------------'
