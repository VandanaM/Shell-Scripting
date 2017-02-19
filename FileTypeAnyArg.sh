#Exercise 8:
#Modify the previous script to accept an unlimited number of files and directories as arguments. Hint: You'll want to use a special variable.

#!/bin/bash

#read -p "Enter file name:" FILE
FILES=$@

for FILE in $FILES
do
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
done
