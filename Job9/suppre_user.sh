i=$(cat Shell_Userlist.csv | wc -l)
for h in $(eval echo "{2..$i..1}");
	do
		test[$h]=$(sed -n "$h p" Shell_Userlist.csv)
		for k in {1..5..1}
do
			infos[$k]=$(echo ${test[$h]} | cut -d ',' -f$k)
			infos[$k]=$(echo ${infos[$k]} | cut -d ' ' -f$k)
done

use[$h]=${infos[2]}"-"${infos[3]}
echo ${use[$h]}
sudo userdel -r ${use[$h]} 
done
