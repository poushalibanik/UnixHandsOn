{
echo "tiger bear elephant tiger bear bear"
} > animal.txt
sed -e 's/ /\n/g' animal.txt | grep -v '^$' | sort | uniq -c