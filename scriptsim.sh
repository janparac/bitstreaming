#!/bin/bash
	


echo -e "Welcome \n \n"

flagmulti=2;


while getopts ":a :s:" opt; do
  case $opt in
	a) flagmulti=1 ;;
	s) flagmulti=0 
	   inserito=$OPTARG ;;
	\?) echo "Invalid option -$OPTARG" 
	exit ;;
	:) echo "ERROR : Option -$OPTARG requires an argument." 
	exit ;;
  esac
done

if [ $flagmulti = 2 ] ; then
	echo -e "\n \n help: \n \n ARGUMENTS OR OPTIONS MISSING \n \n -a : automatic loading of all the files in the working directory \n -s <name_file> : loading of a single file <name_file> in the working directory \n \n" 
exit ;
fi	

echo "write the name of the TOP module (no extension)"
read top
echo "select the language (v / vhd)"


flag=0

while [ $flag = 0 ]; do

	read lin

	if [ $lin = v ] ; then
	comp=xvlog
	flag=1;
	elif [ $lin = vhd ]; then
	comp=xvhdl
	flag=1;
	else echo "non corretto riprova" 
	fi;
done



if [ $flagmulti = 1 ] ; then
	echo -e " \n \n caricamento multiplo... \n \n "	
	$comp -nolog ${PWD}/*.$lin ;
elif [ $flagmulti = 0 ] ; then
	echo -e " \n \n caricamento singolo... \n \n $OPTARG " 	
	$comp -nolog ${PWD}/$inserito ;

fi



#if [ $flagmulti = 1 ] || [ $flagmulti = 0 ] ; then
	xelab $top --debug all
	xsim work.$top -gui
	echo "do you want to remove .log,.web,.jou? (y/n)" 
	flagrisp=0
	while [ $flagrisp = 0 ]; do

		read risp

		if [ $risp = y ] ; then
		rm -rf ${PWD}/*.log ${PWD}/*.jou ${PWD}/*.pb ${PWD}/*.wdb xsim.dir
		flagrisp=1;
		echo -e " \n \n bye bye (deleted)"
		elif [ $risp = n ]; then
		echo -e " \n \n bye bye"
		flagrisp=1;
		else echo "answer not admitted" 
		fi;
	done
#else echo -e "\n \n"  ;
#fi






