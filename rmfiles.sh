start=$(gdate +%s%N)
removedFiles=()

# test directories and sym links
# echo '--------------------------------------------------'
# find . -maxdepth 1 -iname '*' | while read file; do
#     if [[ ! -d $file && -f $file && "$file" != $0 ]]; then
#         echo "File removed: $file"
#         rm "$file"
#     fi
# done
# echo 'Finished.'
# echo '--------------------------------------------------'

#test directories and sym links
echo '--------------------------------------------------'

for file in *; do [[ ! -d $file && -f $file && "./$file" != $0 ]] || continue
    #echo "File removed: $file"
    removedFiles+=("File removed: $file")
    rm "$file"
done

end=$((($(gdate +%s%N) - $start)/1000000))
printf '%s\n' "${removedFiles[@]}"

echo "Finished in: $end milliseconds"
echo '--------------------------------------------------'
