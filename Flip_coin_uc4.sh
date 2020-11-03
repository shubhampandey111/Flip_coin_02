#! /bin/bash
head_count=0;
tail_count=0;
diff=0;
difference=0;
flipcoin()
{
#num=$(( RANDOM%3 ))

while [ $head_count -ne 21 ] && [ $tail_count -ne 21 ]
do
  num=$(( RANDOM % 2 ))

 if [[ $num -eq 0 ]]
 then
     tail_count=`expr $tail_count + 1`
     echo  $tail_count " Tails"
 fi
 if [[ $num -eq 1 ]]
 then

     head_count=`expr $head_count + 1`
     echo $head_count " Heads"
 fi

 if [[ $num -eq 1 ]] && [[ $num -eq 0 ]]
 then

     echo "it's a Tie Game"
 fi

done
echo "Tails ===> $tail_count"
echo "head ===> $head_count"
if [[ $tail_count -eq 21 ]]
 then
diff=$(( $tail_count-$head_count ))
     echo  $tail_count" Times Tail occur and Tail wins by $diff count"
fi
if [[ $head_count -eq 21 ]]
then
diff=$(( $head_count-$tail_count ))
     echo  $head_count" Times Head occur and Head wins by $diff count"
fi
if [[ $head_count -eq 21 ]] && [[ $tail_count -eq 21 ]]
then
     echo  "As its a tie the game continues unitll and unless the difference is of 2 or more than 2 "
fi
while [[ $difference -le 2 ]]
do
x=$(( $RANDOM % 2 ))
if [[ $x -eq 0 ]]
then

head_count=`expr $head_count + 1`
difference=$(( $head_count-$tail_count ))
#echo "Tail"

fi
if [[ $x -eq 1 ]]
then
#echo "Head "

tail_count=`expr $tail_count + 1`
difference=$(( $tail_count-$head_count ))
fi
done
}
flipcoin
