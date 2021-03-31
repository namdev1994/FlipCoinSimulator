Head=0
Tail=0
function flipCoin(){
		randm=$((RANDOM%2))
		if [ $randm -eq 1 ]
		then
				((Head++))
		else
				((Tail++))
		fi
}
while [ $Head -ne 21 -a $Tail -ne 21 ]
do
		flipCoin
done

if [ $Head -eq $Tail ]
then
		while [ $(($Head-$Tail)) -ne 2 -a $(($Tail-$Head)) -ne 2 ]
		do
				flipCoin
		done
elif [ $Head -gt $Tail ]
then
		echo "Head Win"
		echo "Difference:" $(($Head-$Tail))
elif [ $Tail -gt $Head ]
then
		echo "Tail win"
		echo "Difference:" $(($Tail-$Head))
fi
