fibonacci(){
	n=$1
	if [ $n -eq 1 -o $n -eq 2 ]
	then
		local m=`expr $n - 1`
		echo $m
	else
		x=`expr $n - 1`
		y=`expr $n - 2`
		local res=`expr $(fibonacci $x) + $(fibonacci $y)`
		echo $res
	fi
}
echo -n "Enter the positive limit of series: "
read a
echo "Fibonacci series below"
for((i=1;i<=a;i++))
do
	result=$(fibonacci $i)
	echo -ne "$result\t"
done
echo -e "\n"
