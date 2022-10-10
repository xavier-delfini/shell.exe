case $2 in
	+)
		let RESULTAT=$1+$3
		;;
		
	-)
		let RESULTAT=$1-$3
		;;
		
	x)
		let RESULTAT=$1*$3
		;;
		
	/)
		let RESULTAT=$1/$3
		;;
	*)
		echo "Entrée incorrecte, veuillez entrer + pour une addition, - pour une soustraction x pour une multiplacation et / pour une division"
		;; 
esac
echo $RESULTAT
