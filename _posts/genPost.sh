# filename: genPost.sh
# development date: Apr-25, 2018 
# generating markdown file with current date in the _post directory

#!/bin/sh 
current_date="$(date +'%Y-%m-%d')"
filetype="md"

# check the title of this post   
if [ ! -z $1 ];then 
	title="${@: 1}" # get parameter from $1 to the last
	filename="$current_date-$title.$filetype"
	echo "ready to edit $filename";sleep 1
	vi "$filename"
	
else
	echo "usage: $0 TITLE"
	exit
fi

