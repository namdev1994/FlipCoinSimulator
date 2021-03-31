echo -e "enter the times to toss coin \c"
read num
Head=0
Tail=0

for ((i=0; i<$num; i++))
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		 ((Head++))
	else
		 ((Tail++))
	fi
done
echo "Head Wins for $Head times"
echo "Tails wins for $Tail times"
