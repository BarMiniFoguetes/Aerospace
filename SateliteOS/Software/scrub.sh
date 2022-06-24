
echo 15 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio15/direction; echo 1 > /sys/class/gpio/gpio15/value;
echo 68 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio68/direction; echo 1 > /sys/class/gpio/gpio68/value; 
sleep 0.1
echo 68 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio68/direction; echo 0 > /sys/class/gpio/gpio68/value; 
echo 15 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio15/direction; echo 0 > /sys/class/gpio/gpio15/value;
sleep 0.5
echo 15 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio15/direction; echo 1 > /sys/class/gpio/gpio15/value;
echo 68 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio68/direction; echo 1 > /sys/class/gpio/gpio68/value; 
sleep 0.1
echo 68 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio68/direction; echo 0 > /sys/class/gpio/gpio68/value; 
echo 15 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio15/direction; echo 0 > /sys/class/gpio/gpio15/value; 
sleep 0.5
echo 15 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio15/direction; echo 1 > /sys/class/gpio/gpio15/value;
echo 68 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio68/direction; echo 1 > /sys/class/gpio/gpio68/value; 
sleep 0.1
echo 68 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio68/direction; echo 0 > /sys/class/gpio/gpio68/value; 
echo 15 > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio15/direction; echo 0 > /sys/class/gpio/gpio15/value; 
sleep 0.5