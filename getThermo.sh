let sum=0
let count=0

for i in $(cat /sys/class/thermal/thermal_zone*/temp); do
    if [ $i -gt 100 -a $i -lt 2000 ]; then
        ((sum += i));
        ((count++));
        # echo $i;
    fi
done

# echo "sum = $sum, count = $count"
echo $((sum / count / 10))
