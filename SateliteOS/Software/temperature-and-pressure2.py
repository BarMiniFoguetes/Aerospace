#!/usr/bin/env python

import time
from bmp280 import BMP280

try:
    from smbus2 import SMBus
except ImportError:
    from smbus import SMBus

# Initialise the BMP280
bus = SMBus(0)
bmp280 = BMP280(i2c_dev=bus)
bmp280.setup(mode="forced")

#while True:
temperature = bmp280.get_temperature()
pressure = bmp280.get_pressure()
#print(temperature, pressure)

print('BMP280\nTemperaure:{:05.2f}C \nPressao:{:05.2f}hPa'.format(temperature, pressure))
time.sleep(1)
