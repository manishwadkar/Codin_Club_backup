#!/bin/bash 

read -p "Enter no of individuals whose birth month is calculated: " num

declare -a month_arr

declare -A birth_month_d

for (( i=1 ; i<=50 ; i++ ))
do
	rand_month=$((RANDOM % 12 + 1))
	month_arr[i]=$rand_month
done

printf "\n"
echo "List of $num individuals born in specific months (1:JAN ,2:FEB  , ..... , 12:DEC): "
printf "\n"
echo ${month_arr[@]}

count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
count9=0
count10=0
count11=0
count12=0

for (( i=1 ; i<=50 ; i++ ))
do
	if [ ${month_arr[i]} -eq 1 ]
	then
		month="JAN"
		if [ $count1 -eq 0 ]
		then
			value1="Person-$i"
			birth_month_d[$month]=$value1
			(( count1++ ))
		else
			value1="$value1 Person-$i"
			birth_month_d[$month]=$value1
		fi

	elif [ ${month_arr[i]} -eq 2 ]
        then
                month="FEB"
                if [ $count2 -eq 0 ]
                then
                        value2="Person-$i"
                        birth_month_d[$month]=$value2
                        (( count2++ ))
                else
                        value2="$value2 Person-$i"
                        birth_month_d[$month]=$value2
                fi


	elif [ ${month_arr[i]} -eq 3 ]
        then
                month="MAR"
                if [ $count3 -eq 0 ]
                then
                        value3="Person-$i"
                        birth_month_d[$month]=$value3
                        (( count3++ ))
                else
                        value3="$value3 Person-$i"
                        birth_month_d[$month]=$value3
                fi


	elif [ ${month_arr[i]} -eq 4 ]
        then
                month="APR"
                if [ $count4 -eq 0 ]
                then
                        value4="Person-$i"
                        birth_month_d[$month]=$value4
                        (( count4++ ))
                else
                        value4="$value4 Person-$i"
                        birth_month_d[$month]=$value4
                fi


	elif [ ${month_arr[i]} -eq 5 ]
        then
                month="MAY"
                if [ $count5 -eq 0 ]
                then
                        value5="Person-$i"
                        birth_month_d[$month]=$value5
                        (( count5++ ))
                else
                        value5="$value5 Person-$i"
                        birth_month_d[$month]=$value5
                fi


	elif [ ${month_arr[i]} -eq 6 ]
        then
                month="JUN"
                if [ $count6 -eq 0 ]
                then
                        value6="Person-$i"
                        birth_month_d[$month]=$value6
                        (( count6++ ))
                else
                        value6="$value6 Person-$i"
                        birth_month_d[$month]=$value6
                fi


	elif [ ${month_arr[i]} -eq 7 ]
        then
                month="JUL"
                if [ $count7 -eq 0 ]
                then
                        value7="Person-$i"
                        birth_month_d[$month]=$value7
                        (( count7++ ))
                else
                        value7="$value7 Person-$i"
                        birth_month_d[$month]=$value7
                fi


	elif [ ${month_arr[i]} -eq 8 ]
        then
                month="AUG"
                if [ $count8 -eq 0 ]
                then
                        value8="Person-$i"
                        birth_month_d[$month]=$value8
                        (( count8++ ))
                else
                        value8="$value8 Person-$i"
                        birth_month_d[$month]=$value8
                fi


	elif [ ${month_arr[i]} -eq 9 ]
        then
                month="SEPT"
                if [ $count9 -eq 0 ]
                then
                        value9="Person-$i"
                        birth_month_d[$month]=$value9
                        (( count9++ ))
                else
                        value9="$value9 Person-$i"
                        birth_month_d[$month]=$value9
                fi


	elif [ ${month_arr[i]} -eq 10 ]
        then
                month="OCT"
                if [ $count10 -eq 0 ]
                then
                        value10="Person-$i"
                        birth_month_d[$month]=$value10
                        (( count10++ ))
                else
                        value10="$value10 Person-$i"
                        birth_month_d[$month]=$value10
                fi


	elif [ ${month_arr[i]} -eq 11 ]
        then
                month="NOV"
                if [ $count11 -eq 0 ]
                then
                        value11="Person-$i"
                        birth_month_d[$month]=$value11
                        (( count11++ ))
                else
                        value11="$value11 Person-$i"
                        birth_month_d[$month]=$value11
                fi


	elif [ ${month_arr[i]} -eq 12 ]
        then
                month="DEC"
                if [ $count12 -eq 0 ]
                then
                        value12="Person-$i"
                        birth_month_d[$month]=$value12
                        (( count12++ ))
                else
                        value12="$value12 Person-$i"
                        birth_month_d[$month]=$value12
                fi


	else
		echo "Invalid month"
	fi
done

printf "\n"
echo "Representation of people born in same month: "
printf "\n"
for key in ${!birth_month_d[@]}
do
	echo $key " : " ${birth_month_d[$key]}
done
