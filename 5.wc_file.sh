echo -n "Enter filename:"
read file
echo -n "No. of lines in a file are:"
wc -l $file
echo -n "No. of words in a file are:"
wc -w $file
