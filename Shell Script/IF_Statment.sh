#/bin/sh
#if statment EX
echo "Same number Move"
echo -n "Insert number"
read su
if [ "$su" -eq 1 ];
then echo "Move 1"
elif [ "$su" -eq 2 ];
then echo "Move 2"
else
 echo "Move 3"
fi

