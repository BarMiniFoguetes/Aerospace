# Softwares

The current directory is actually the Apache root directory. All core software running on SateliteOS core are here. The daemon that is responsible by data aquisition is accel-detect-fall.py. To start this daemon after boot we add the following line in /etc/rc.local:
<br><b>nohup /var/www/html/onBoot.sh >/dev/null 2>&1 & </b><br><br>
The script onBoot.sh uses the correct user (www-data) to start the program and set to 1 the content of launch state file (launch-status.txt).<br><br>

