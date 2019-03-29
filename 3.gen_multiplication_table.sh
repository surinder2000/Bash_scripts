echo -n "Enter a number:"
read n
echo -n "Enter limit of multiplication table:"
read l
res=1
for((i=1;$i<=l;i++))
do
	res=`expr $n \* $i`
	echo "$n * $i = $res"
done

