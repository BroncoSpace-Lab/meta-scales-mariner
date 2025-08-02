#!/bin/sh

GPIO=30
GPIO_PATH="/sys/class/gpio/gpio${GPIO}"

# Export GPIO if needed
if [ ! -e "$GPIO_PATH" ]; then
    echo "$GPIO" > /sys/class/gpio/export
    sleep 0.5
fi

# Set direction to out
echo "pet" > "$GPIO_PATH/direction"

# Ping loop — toggle every second
while true; do
    echo 1 > "$GPIO_PATH/value"
    sleep 0.5
    echo 0 > "$GPIO_PATH/value"
    sleep 0.5
done

