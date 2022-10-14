i=$(cat Shell_Userlist.csv | wc -l)
for h in $(eval echo "{2..$i..1}");
	do
	recup[$h]=$(sed -n "$h p" Shell_Userlist.csv)
	for k in {1..5..1}
	do
		infos[$k]=$(echo ${recup[$h]} | cut -d ',' -f$k)
		infos[$k]=$(echo ${infos[$k]} | cut -d ' ' -f$k)
	done
	user[$h]=${infos[2]}"-"${infos[3]}
	t=${infos[5]}
	case $t in
		Admin*)
			sudo useradd -m -u ${infos[1]} -p ${infos[4]} --gid root ${user[$h]}
			echo "Rooted"
			;;
		*)
			sudo useradd -m -u ${infos[1]} -p ${infos[4]} ${user[$h]}
			echo "User"
		;;
	esac
done
