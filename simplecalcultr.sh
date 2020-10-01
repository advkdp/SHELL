read -p "enter num1 " a
read -p "enter num2 " b
read -p "enter your options(1.Add, 2.Sub, 3.Mul, 4.Div): " opt

case $opt in
	1)
		echo "you selected addition"
		echo "the addition is: $((a+b))"
		;;
	2)
		echo "you selected sub"
		echo "the sub is: $((a-b))"
		;;
	3)
		echo "you selected multi"
		echo "the mul is: $((a*b))"
		;;
	4)
		echo "you selected Div"
		echo "the div is: $((a/b))"
		;;
	*)
		echo "you selecetd invalid option"
		;;
esac	
