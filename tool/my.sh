cp ../tool/$1.html .
rm -f *.md
num_entry=$(grep entry $1.html|wc -l)
for file in $(seq -w 0 $num_entry)
do
    sed -n "1,/entry/p" $1.html >${1}_$file.md
    sed -i "1,/entry/d" $1.html 
done
sed -i "/entry/d" *.md
rm -f $1.html
