add(){
	echo "Sum of $1 and $2 is `expr $1 + $2`"
}
subtract(){
	echo "Subtraction of $1 and $2 is `expr $1 - $2`"
}
multiply(){
	echo "Multiplication of $1 and $2 is `expr $1 \* $2`"
}
divide(){
	echo "Division of $1 and $2 is `expr $1 / $2`"
}

echo -n "Enter two no.s:"
read m
read n
echo -e "1.ADD \n2.SUBTRACTION \n3.Multiplication \n4.DIVISION"
echo -n "Which operation do you want to perform (1-4):"
read ch
case "$ch" in
	1) add $m $n
		;;
	2) subtract $m $n
		;;
	3) multiply $m $n
		;;
	4) divide $m $n
		;;
	*)
        	echo "Invalid Operation"
		
esac
