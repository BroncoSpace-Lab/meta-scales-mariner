#!/bin/sh

#GPIO=30
#GPIO_CHIP=1

# Ping loop — toggle every second
#while true; do
 #   gpioset --chip gpiochip$GPIO_CHIP $GPIO=1
    echo "Pet High"
    sleep 0.5
   # gpioset --chip gpiochip$GPIO_CHIP $GPIO=0
    sleep 0.5
    echo "Pet Low"
done

