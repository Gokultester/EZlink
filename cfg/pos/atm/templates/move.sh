for i in *
do
	NewFName2=`echo $i | cut -d'.' -f2`
	if [ $NewFName2 = "oar" ]
	then
		NewFName2=`echo $i | cut -d'_' -f1`
		if [ $NewFName2 == "RATNAKAR" ]
		then
			str1=`echo $i | cut -d'_' -f2`
			echo "str1=$str1"
			str2=`echo $i | cut -d'_' -f3`
			echo "str2=$str2"
			str3=`echo "DEFAULT_""$str1""_""$str2"`
			echo "str3=$str3"
			cp $i $str3
		fi		
	fi
done
