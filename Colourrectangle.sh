# Read file
while IFS= read -r LINE; do
	# Get only line with Red colour
	val="$(echo $LINE | grep Red)"
	
	# ensures line is not empty
	if [ "$val" != "" ];
	then
		# get number and store
		area="$(echo $val | grep -Eo '[0-9]+' | tail -1)"
		# checks if area is greater than 100
		if [ $area -ge 100 ];
		then
			echo $val
		fi	
	fi
done < rectangle.txt
