randm=$((RANDOM%2))
if [ $randm -eq 1 ]
then
	echo "Head As a Winner"
else
	echo "Tail As a Winner"
fi
