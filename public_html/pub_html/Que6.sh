#!bin/bash/

val=1;
b=1;
x=`find . -type f`
(
	echo ""
	echo "---------------------------"
	echo "Copying first four files into public_html folder"

	for files in $x
	do
	if [ $val -gt 4 ]
	then
		exit
	fi
	cp $files public_html
	val=`expr $val + $b`
	done
	echo "Copying done"
	echo "--------------------------------------------"
	echo ""

) | tee -a Assignment1.log

#cp `ls|head -4` public_html
