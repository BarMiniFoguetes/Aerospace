#for i in $(seq 0 34); do echo $i;echo $i > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio$i/direction; echo 1 > /sys/class/gpio//gpio$i/value; sleep 0.1; done; 
#for i in $(seq 8 8); do echo $i;echo $i > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio$i/direction; echo 0 > /sys/class/gpio//gpio$i/value; sleep 0.1; done; 

for i in $(seq 15 15); do echo $i;echo $i > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio$i/direction; echo 1 > /sys/class/gpio//gpio$i/value; sleep 0.1; done; 
for i in $(seq 15 15); do echo $i;echo $i > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio$i/direction; echo 0 > /sys/class/gpio//gpio$i/value; sleep 0.1; done; 

for i in $(seq 68 68); do echo $i;echo $i > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio$i/direction; echo 1 > /sys/class/gpio//gpio$i/value; sleep 0.1; done; 
for i in $(seq 68 68); do echo $i;echo $i > /sys/class/gpio/export 2> /dev/null ; echo out > /sys/class/gpio/gpio$i/direction; echo 0 > /sys/class/gpio//gpio$i/value; sleep 0.1; done; 

for i in $(seq 0 68); do echo $i;echo $i > /sys/class/gpio/export 2> /dev/null ; echo in > /sys/class/gpio/gpio$i/direction; echo 1 > /sys/class/gpio//gpio$i/value; sleep 0.1; done; 
#for i in $(seq 0 68); do echo $i;echo $i > /sys/class/gpio/export 2> /dev/null ; echo in > /sys/class/gpio/gpio$i/direction; echo 0 > /sys/class/gpio//gpio$i/value; sleep 0.1; done; 
