# ! bin/bash

read
 case $REPLY in
   "cd")
      cd;;
   "ls")
      ls;;
   "pwd")
       pwd;;
   "history")
      history;;
   "man ls" )
      man ls ;;
esac

read -p " you want to know information from the text.sh script,
write --help " help
if [ "$help" = "--help" ]
then
echo
"Calculyator Option
1  line (please to write action)
write <*> to multiply
write </> to division
write <+> unary plus
write <-> unary minus
write <**> exponentiation
2 line․ (please write number1)
need to write first  the number
3 line ․(please write number2)
need to write second the number"
else
 echo "start calculator"
fi
read -p "please to write action: " action
read -p "please write number1: " num1
read -p "please write number2: " num2
if [ "$action" = "+" ]
 then
     echo $(($num1+$num2))
elif [ "$action" = "-" ]
 then
     echo $(($num1-$num2))
elif [ "$action" = "*" ]
 then
     echo $(($num1*$num2))
elif [ "$action" = "/" ]
 then
     echo $(($num1/$num2))
elif [ "$action" = "**" ]
 then
     echo $(($num1**$num2))
else
     echo "action is not found "
fi

if [ -d A/B/C ]
then
 echo "directories exist"
else
mkdir -p A/B/C
cd A/B/C
fi

func ()
{
    for file in *
    do
        if [ -d file ]
        then
            return
        fi
    done
}
echo "$file is a directory"
func
