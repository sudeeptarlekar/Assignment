#!bin/bash/
(
	echo ""
	echo "----------------------------------------------------------------------"
	echo "Log generated on : " 
	date
	echo ""  
	echo "You are on following hostname" 
	hostname 
	
	echo "" 
	echo "Version of your operation system is" 
	uname --version 

	echo "" 
	echo "Type of operating system" 
	uname -o 

	echo "" 
	echo "Complete information of Operating System" 
	uname -o ; uname --version 

	echo "" 
	echo "Full path of your home directory is" 
	echo ~ 

	echo "" 
	echo "Other users logged into your machine" 
	who 
	
	echo "" 
	echo "You belong to following groups" 
	groups 

	echo "" 
	echo "File located in your home directory and all its subdirectories" 
	find $HOME -type f 

	echo "-------------------------------------------------------------------------"
	echo ""
) | tee -a Assignment1.log

