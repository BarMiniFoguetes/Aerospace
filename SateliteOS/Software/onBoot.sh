su - www-data -c "cd /var/www/html; echo 1 > ./launch-status.txt; nohup python3 ./accel-detect-fall.py >/dev/null 2>&1 &"
