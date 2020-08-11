start=$(gdate +%s%N)
files=()

echo '--------------------------------------------------'

for file in *; do [[ ! -d $file && -f $file && "./$file" != $0 ]] || continue
    files+=("File removed: $file")
    rm "$file"
done

end=$((($(gdate +%s%N) - $start)/1000000))
printf '%s\n' "${files[@]}"

echo "Finished in: $end milliseconds"
echo '--------------------------------------------------'
