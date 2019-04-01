echo -n "Enter coefficients of first vector: "
read -a a1
echo -n "Enter coefficients of second vector: "
read -a a2
res=0
j=0
for i in ${a1[@]}
do
	res=`expr $res + $i \* ${a2[j]}`
	j=`expr $j + 1`
done
echo "Scalar product of two vectors are $res"



