<?php
$cmd=$_GET['cmd'];
if ($cmd == "stop") {
 $gyro=`echo 0 > ./launch-status.txt `;
# $gyro=`killall python3 `;
 $gyro=`./scrub.sh `;
 echo "{\"OK\"}";
}

if ($cmd == "unload") {
 $gyro=`echo 0 > ./launch-status.txt `;
 $gyro=`killall python3 `;
 $gyro=`./scrub.sh `;
 echo "{\"true\"}";
}

if ($cmd == "load") {
 echo "{\"true\"}";
  $gyro=`nohup python3 ./accel-detect-fall.py &`;
}

if ($cmd == "start") {
  $gyro=`echo 1 > ./launch-status.txt `;
 echo "{\"OK\"}";
}

if ($cmd == "reset") {
  $gyro=`echo "" > ./accel.txt `;
 echo "{\"OK\"}";
}

if ($cmd == "status") {
 $stat=`cat ./launch-status.txt `;
 if ($stat == "1") {
   echo "{\"true\"}";
 } else { echo "{\"false\"}";}
}

if ($cmd == "isloaded") {
 $stat=`ps aux | grep accel | grep -v grep `;
 if ($stat <> "") {
   echo "{\"true\"}";
 } else { echo "{\"false\"}";}
}

?>