#!/bin/sh 

# filename: updatePost.sh
# date: Apr.25, 2018 
# version: 0.1 as initial 
# automatically commit and push to github
 
# check the parameter 
if [ -z $1 ]; then 
	echo "usage: $0 MESSAGE\n"
	echo "MESSAGE should have what is difference. \nthanks."
else
	MESSAGE="'${@: 1}'" 
	git add . 
	git commit -m $MESSAGE 
	git push
fi 

 
