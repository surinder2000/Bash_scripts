echo "Enter order of matrix"
read m
read n
echo -n "Enter elements of matrix: "
read -a mat
echo "Entered matrix"
for((i=0;$i<m;i++))
do 
	for((j=0;$j<n;j++))
	do
		adr=`expr $n \* $i + $j`
		echo -n "${mat[adr]} "
	done
		echo -e "\n"
	done

echo "Matrix after reverse the rows and colums of given matrix"
for((i=$m-1;$i>=0;i--))
do 
	for((j=$n-1;$j>=0;j--))
	do
		adr=`expr $n \* $i + $j`
		echo -n "${mat[adr]} "
	done
		echo -e "\n"
	done



