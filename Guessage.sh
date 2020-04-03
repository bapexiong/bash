# Generate number
NUMBER=$((RANDOM % 100))

while :; 
do
	echo "Guess age between 0 to 100 :"
	# Get user input
	read age

	# Checks if user input value is same as randomed number
	if [ $age -eq $NUMBER ]; then
		echo "CORRECT"
		break
	fi


	# Number is lesser than
	if [ $age -le $NUMBER ]; then
		echo "Higher"
	fi

	# Number is greater than
	if [ $age -gt $NUMBER ]; then
		echo "Lower"
	fi

done

