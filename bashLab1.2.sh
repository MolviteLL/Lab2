way=$1
f_size=$2

if [ -d "$way" ]; then
	echo | find "$way" -size -$f_size > resultbash1.2.txt
else
	echo "Данной папки нет!"
fi
