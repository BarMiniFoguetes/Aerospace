<?php

$par=$_GET['CMD'];
$a=`uname -a`;
$b=`cat /proc/cpuinfo | head -n10`;
$c=`free -h`;
$d=`df -h | grep -v tmp`;
$e=`uptime`;
$f=`/opt/vc/bin/vcgencmd measure_temp | cut -f2 -d=  | cut -f1 -d\' |  tr '\n' ' '`;
$g=@(`cat /sys/class/thermal/thermal_zone0/temp`/1000);
#$g="";
#$h=`vcgencmd measure_volts core | cut -f2 -d=  | cut -f1 -dV |  tr '\n' ' '`;
#$gps=`/var/www/html/gps2.py`;  # time,lat,lon,altHAE  | 2021-05-23T19:33:55.000Z,-22.9590581,-43.2027764,85.772
$gyro=`python3 ./read-GY91.py`;
#$altitude=`python3 ./bmp180.py`;

#BMP280 faz leitura de 300hPa a 1100hPa que corresponde a 9000m e - 500m
$altitude=`python3 ./temperature-and-pressure2.py`;
@list($chip,$a1,$p1) = explode("\n",($altitude));
@list($tmp,$p1) = explode(":",($p1));
@list($p1,$tmp) = explode("h",($p1));
$altitude=number_format( (50952-log($p1)*7356),1);
@list($tmp,$a1) = explode(":",($a1));
@list($a1,$tmp) = explode("C",($a1));
#echo "[[$a1 - $p1]]\n"; 

if ($par == 1){ $cmd=`/var/www/html/pyGPIO2/examples/lift.py`;echo "$cmd:Liftoff...\n"; }
#echo "[$par] $gps";
@list($detect,$time,$lat,$slat,$long,$slong,$qual,$num_sat,$hdop,$alt)=explode(",",$gps);
@list($L1,$L2) = explode(".",($lat*1));
$lat = substr($L1,0,2)."º".substr($L1,2,2)."'".substr($L2,0,2)."\"";
@list($L1,$L2) = explode(".",($long*1));
$long = substr($L1,0,2)."º".substr($L1,2,2)."'".substr($L2,0,2)."\"";

$time2=substr($time,0,2).":".substr($time,2,2).":".substr($time,4,2);
#echo "<h2> RPI Zero W</h2><pre>$a\n$b\n$c\n$d\nUptime:$e\nTemperatura GPU:$f"."ºC\nTemperatura CPU:$g ºC\n";
#echo "Core:$h volts\n\n";
#if ($lat > 0) {$slat="N";} else  {$slat="S";} 
#if ($long > 0) {$slong="L";} else  {$slong="O";} 
#echo "Data:$time2 UTC\nLatitude:$lat $slat\nLongitude:$long $slong\nAltitude:$alt\n";

echo $gyro."\n";
#echo "{'ax':{'value':'10','type':'integer'}}";
#echo "Altitude: ".$altitude." m\n";
#echo "Pressão: ".$p1." hPa\n";
#echo "Temperatura: ".$a1." °C\n";
?>