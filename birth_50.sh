declare -A dict
declare -A di
for (( i=1;i<=50;i++ ))
do
month=`shuf -i 1-12 -n 1`
year=`shuf -i 92-93 -n 1`
dob="\n\t$month-$year [$i th person] "
dict[month_k]=$month
dict[year_k]=$year
dict[dob_k]=$dob
		if [[ "${dict[month_k]}" == "12" ]]
		then
			di["DEC"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "11" ]]
		then
			di["NOV"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "10" ]]
		then
			di["OCT"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "9" ]]
		then
			di["SEP"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "8" ]]
		then
			di["AUG"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "7" ]]
		then
			di["JUL"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "6" ]]
		then
			di["JUN"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "5" ]]
		then
			di["MAY"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "4" ]]
		then
			di["APR"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "3" ]]
		then
			di["MAR"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "2" ]]
		then
			di["FEB"]+=${dict[dob_k]}
		fi

		if [[ "${dict[month_k]}" == "1" ]]
		then
			di["JAN"]+=${dict[dob_k]}
		fi
done

echo -e "\n\t\t--JAN--\n"
echo -e "\t${di[JAN]}\n"

echo -e "\n\t\t--FEB--\n"
echo -e "\t${di[FEB]}\n"

echo -e "\n\t\t--MAR--\n"
echo -e "\t${di[MAR]}\n"

echo -e "\n\t\t--APR--\n"
echo -e "\t${di[APR]}\n"

echo -e "\n\t\t--MAY--\n"
echo -e "\t${di[MAY]}\n"

echo -e "\n\t\t--JUN--\n"
echo -e "\t${di[JUN]}\n"

echo -e "\n\t\t--JUL--\n"
echo -e "\t${di[JUL]}\n"

echo -e "\n\t\t--AUG--\n"
echo -e "\t${di[AUG]}\n"

echo -e "\n\t\t--SEP--\n"
echo -e "\t${di[SEP]}\n"

echo -e "\n\t\t--OCT--\n"
echo -e "\t${di[OCT]}\n"

echo -e "\n\t\t--NOV--\n"
echo -e "\t${di[NOV]}\n"

echo -e "\n\t\t--DEC--\n"
echo -e "\t${di[DEC]}\n"
