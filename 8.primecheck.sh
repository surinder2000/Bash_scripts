prime(){
	n=$1
	flag=0
	if [ $n -eq 0 -o $n -eq 1 ]
	then 
		echo "Number is not prime"
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
		echo "Number is Not prime"
	else
		echo "Number is prime"
	fi
fi
}
echo -n "Enter a positive number: "
read a
prime $a

