echo "How many files are present in current directory ."
echo "Guess the number of files:"
read num
function guess {
	x=$(ls | wc -l)
	while [[ $x -ne $num ]]
	do
		if [[ $x -lt $num ]]
		then
			echo "Too High"
			echo "Guess again:"
			read num
		else
			echo "Too Low"
			echo "Guess again:"
			read num
		fi
	done
	if [[ $x -eq $num ]]
	then
		echo "Congratulations your guess is correct"
	fi
}

guess
