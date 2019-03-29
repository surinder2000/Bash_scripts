prime(){
	n=$1
	flag=0
	if [ $n -eq 0 -o $n -eq 1 ]
	then 
		local p=0
		echo $p
	else
		for((i=2;$i<=n/2;i++))
		do
			c=`expr $n % $i`
			if [ $c -eq 0 ]
			then
				flag=1
				break
			fi
		done
	if [ $flag -eq 1 ]
	then
		local p=0
		echo $p
	else
		local p=1
		echo $p
	fi
fi
}
below_prime(){
	num=$1
	for((i=0;$i<=num;i++))
	do
		res=$(prime $i)
		if [ $res -eq 1 ]
		then
			echo -ne "$i\t"
		fi
	done
	echo -e "\n"
}

echo -n "Enter a number: "
read m
echo "Prime no.s below $m are"
below_prime $m
