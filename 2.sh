#!/bin/bash
work()
{
	class1_num=0
	class1_sum=0
	class2_num=0
	class2_sum=0
	class3_num=0
	class3_sum=0
	maxi=0;
	read ln1
	while ( [  -n "$ln1" ] ) do
		if ( [  -z "$ln1" ] ) then
			echo 111;
			break;
		fi
		name=`echo "$ln1"|cut -d ":" -f 1`
		class=`echo "$ln1"|cut -d ":" -f 2`
		soc=`echo "$ln1"|cut -d ":" -f 3`
		case "$class" in
			class1)
				((class1_num=class1_num+1))
				((class1_sum=class1_sum+soc))
				;;
			class2)
				((class2_num=class2_num+1))
				((class2_sum=class2_sum+soc))
				;;
			class3)
				((class3_num=class3_num+1))
				((class3_sum=class3_sum+soc))
				;;
		esac
		read ln1;
	done;
	((class1_avg=class1_sum/class1_num))
	((class2_avg=class2_sum/class2_num))
	((class3_avg=class3_sum/class3_num))
	echo "class1平均分$class1_avg"
	echo "class1人数$class1_num"
	echo "class2平均分$class2_avg"
	echo "class2人数$class1_num"
	echo "class3平均分$class3_avg"
	echo "class3人数$class1_num"
}

work<pc.txt
