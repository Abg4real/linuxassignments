# Checks for duplicate files
echo "Move the script to the respective directory"
echo "Enter name of file 1"
read file1
echo "Enter name of file 2"
read file2
result=$(diff "$file1" "$file2")
length=${#result}
echo "$result"
echo "$length"
if [ $length -eq 0 ];
then
	echo "Files are not duplicate"
elif [ $length -gt 0 ];
then
	echo "Files are equal"
	echo "Which file would you like to delete? 1 for file 1 and 2 for file 2"
	read option
	if [ $option -eq 1 ];
	then
		rm "$file1"
	elif [ $option -eq 2 ];
	then
		rm "$file2"
	fi
fi
exit 0