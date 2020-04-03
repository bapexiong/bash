# Read file
while IFS= read -r LINE; do
	# Line by line
	# 1. Append Name into first part
	# 2. Replace first comma as Height
	# 3. Replace second comma as Width
	echo $LINE | sed 's/^/Name: /' | sed 's/,/ Height: /' | sed 's/,/ Width: /' | sed 's/,\d+,/ Colour: /g' | sed 's/,\([0-9]\+\),/ Colour: /' 
done < rectangle.txt
