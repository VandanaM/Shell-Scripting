#Exercise 6:
#Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. Also perform an ls command against the file or directory with the long listing option.

#!/bin/bash

read -p "Enter file name:" FILE

if [ -e /u01/appl/wlsofm/test/$FILE ]
then
echo "File/Directory exists"
else
echo "File does NOT exist"
fi
if [ -w /u01/appl/wlsofm/test/$FILE ]
then
echo "You have permissions to edit!"
fi
if [ -f /u01/appl/wlsofm/test/$FILE ]
then
echo "This is a regular file"
fi
if [ -d /u01/appl/wlsofm/test/$FILE ]
then
echo "This is a directory"
cd /u01/appl/wlsofm/test/$FILE
echo -e "Here are the contents of the directory:\n$(ls)"
fi
