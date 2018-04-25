# filename: genPost.sh
# development date: Apr-25, 2018 
# generating markdown file with current date in the _post directory

#!/bin/sh 
current_date="$(date +'%Y-%m-%d')"
filetype="md"

# check the title of this post   
if [ ! -z $1 ];then 
	title="$1"
	filename="$current_date-$title.$filetype"
	vi $filename
	
else
	echo "usage: $0 TITLE"
	exit
fi

