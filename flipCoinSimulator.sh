Head=0
Tail=0
while [ $Head -ne 21 -a $Tail -ne 21 ]
do
		randm=$((RANDOM%2))
		if [ $randm -eq 1 ]
		then
				((Head++))
		else
				((Tail++))
		fi
done

if [ $Head -eq $Tail ]
then
		echo"Tie $Head And $Tail "
elif [ $Head -gt $Tail ]
then
		echo "Head Win"
		echo "Difference:" $(($Head-$Tail))
elif [ $Tail -gt $Head ]
then
		echo "Tail win"
		echo "Difference:" $(($Tail-$Head))
fi
