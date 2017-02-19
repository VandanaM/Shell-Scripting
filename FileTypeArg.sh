#Exercise 7:
#Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

#!/bin/bash

FILE=$1

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
