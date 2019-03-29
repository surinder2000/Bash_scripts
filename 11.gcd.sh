gcd(){
	m=$1
	n=$2
	if [ $m -lt $n ]
	then
	   min=$m
	   max=$n
   else
	   min=$n
	   max=$m
   fi
   if [ `expr $max % $min` -eq 0 ]
   then
	   local res=$min
	   echo "$res"
   else
	   rem=`expr $max % $min`
	   gcd $min $rem
   fi
   }
   echo -n "Enter two no.s:"
   read a
   read b
   result=$(gcd $a $b)
   echo "Gcd of $a and $b is $result"
