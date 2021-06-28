# Another script by Sami-Ullah Khan
# 28/06/2021


names=($(grep '^\*\*\* applied' $1 | cut -d ' ' -f3))
times=($(grep '^\*\*\* applied' $1 | cut -d ':' -f2 | cut -d 's' -f1))
echo "Name, Time(seconds)" > output.csv
for i in "${!names[@]}"; do
    echo "${names[i]}, ${times[i]}" >> output.csv
done

if [ $# -eq 2 ]; then
    IFS=$'\n'
    subNames=($(sed -n "/\*\*\* applying $2/,/\*\*\* applied $2/p" $1 | cut -d ">" -f2 | cut -d "." -f1))
    unset subNames[{0,-1}]

    subTimes=($(sed -n "/\*\*\* applying $2/,/\*\*\* applied $2/p" $1 | cut -d ">" -f2 | cut -d ":" -f2 | cut -d "s" -f1 | cut -d " " -f2))
    unset subTimes[0]

    echo "Name, Time(seconds)" > outputSub.csv
    for i in "${!subNames[@]}"; do
        echo "${subNames[i]}, ${subTimes[i]}" >> outputSub.csv
    done
fi