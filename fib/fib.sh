
fibbinocci () {

	echo "Enter number: "
	read n
	a=0
	b=1
	counter=0
	while [ $counter -le $n ]
	do
	  #echo "$a"
	  a=$b
	  b=$c
	  c=$((a+b))
	  ((counter++))
	done
	fib="$c"
	echo The fib of $n is $fib

}

fibbinocci
