echo -n "Copy files from (enter absolute path):"
read from
echo -n "Enter filenames:"
read -a files
echo -n "Copy to (enter absolute path):"
read to
for i in ${files[*]}
do
cp $from/$i $to
done
