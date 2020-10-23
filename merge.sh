#!/bin/bash
files=(government media organisation person place policy slang)
echo "===============Hong Kong Politics Dictionary==============="
for ((i=0; i<${#files[@]}; i++)); do
        echo "[$((i + 1))] ${files[${i}]}"
done
echo "==> Files to merge: (\"0\" to merge all) (eg: \"1 5 7\")"
printf "==> "
read target
if [ "$target" = "0" ]
then
  delim=""
  joined=""
  for file in "${files[@]}"; do
    joined="$joined$delim$file.txt"
    delim=" "
  done
  cat $joined > merged.txt
  echo "All files succesfully merged as 'merged.txt'"
else
  IFS=" " read -r -a targets <<< "$target"
  delim=""
  for x in "${targets[@]}"; do
    if ((x < 1 || x > 10))
    then
      echo "Error: Invalid index"
      exit
    fi
    joined="$joined$delim${files[$((x - 1))]}.txt"
    delim=" "
  done
  cat $joined > merged.txt
  echo "Selected files succesfully merged as 'merged.txt'"
fi
