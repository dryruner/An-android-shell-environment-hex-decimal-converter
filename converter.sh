#!/system/bin/sh

# input hex value, output (echo) decimal value
function convert_16_to_10()
{
	local num
	let num=16#$1
	echo $num
}

# assert 0 <= num <= 15
function print_base()
{
	local num=$1
	if [[ $num -le 15 && $num -ge 10 ]];then
		case $num in
			10) echo -n a;;
			11) echo -n b;;
			12) echo -n c;;
			13) echo -n d;;
			14) echo -n e;;
			15) echo -n f;;
		esac
	else
		echo -n $num
	fi
}

function convert_10_to_16()
{
	echo -n 0x
	
	local num=$1
	local factor=1
	while [[ $factor -le $num ]]
	do
		let factor=factor*16
	done
	
	let factor=factor/16
	while [[ $factor -gt 0 ]]
	do
		let temp=num/factor
		print_base $temp
		let num=num-temp*factor
		let factor=factor/16
	done
	
	echo
}

#convert_16_to_10 $1
convert_10_to_16 $1
