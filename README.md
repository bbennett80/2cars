# 2cars

If you have two cars supported by openpilot which are shared on one Comma.ai device, use this script to quickly change between each car.

After installing openpilot, you can SSH into your Comma device and rename openpilot to the name of the car for which you installed.  Install another openpilot branch for your second car and leave it named openpilot. Openpilot looks for "data/openpilot" for the car you want to use.

In car.sh, make sure to change CAR1 and CAR2 to the desired name for your openpilot install. For example, if you have a Toyota and Subaru vehicle, you could set 
CAR1="Toyota" and CAR2="Subaru". When you want to change from one car to another, simply SSH into your Comma device and run ./car.sh (it might need to be set as executable on your device. Use chmod +x car.sh). Whichever car is currently "openpilot," will be renamed to the car name and the second car will be renamed "openpilot." You should be able to now use the second car with your comma device.

