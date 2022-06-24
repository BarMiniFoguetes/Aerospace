# Satelite OS
Satelite OS is a complete solution of hardware and software that offer sensors, communication, interface and software libraries for those who wants to develop techologies for rockets, satelites and metereological baloons.<br><br>
To collect in real time all sensors we have a web interface that show all data available from sensors and also trigger the state to launch or scrub. When in launch mode all data is saved in a file and will offer a complete set of data from ground to apogee and landing.<br><br>
An algorithm detects apogee be reading accelerometers em looking for microgravity (near zero G) that happens when a rocket reach maximum height. After that the algorithm starts looking for spike in acceleration reading that happens in lading phase.<br><br>
<br><img src="./Image/SateliteOS-Interface.png" width=900><br>
<img src="./Hardware/prototype_.jpg" width=400> <img src="./Hardware/prototype.png" width=350 height=710><br>
<br> The solution has a web interface and is a ready to launch mission for rockets. When power on, the system enters in a launch mode and stores data
of sensors by an algorithm that detects apogy and landing, creating campains for future analisys. To power this system we use a set of 7 AAA bateries. The complete weight of hardware and batteries is around 165g.<br>
The hardware may be based on Raspberry Pi Zero V2 running Linux or Banana PI M2 Zero. A module called GY-91 that combines MPU9250 and BMP280 offers accelerometer, digital compass, gyroscope, barometric pressure and temperature readings.<br>
<br><img src="./Hardware/bananaPI-M2.jpg" width=300> 
<img src="./Hardware/RPI Zero V2.png" width=300> 
<img src="./Hardware/GY-91-MPU9250-BMP280.png" width=160><br>
A GSM module (SIM800L) can be useful for balloons that can travel long distances sending sms to inform data from sensors like location, high and many other parameters.
<br><img src="./Hardware/GSM-SMS-SIM800L.jpg" width=160><br>
The last module is the GPS (NEO6M) offering location and global time to help register the location.<br>
<img src="./Hardware/NEO6M-GPS-Module.jpg" width=260><br>

