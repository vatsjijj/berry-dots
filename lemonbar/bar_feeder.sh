#!/bin/sh

# Date and time.
clock() {
        date +"%A, %b %-d. %-I:%M %P"
}

# Get battery.
battery() {
        cat /sys/class/power_supply/BAT1/capacity
}

# Commence, the bar.
while true; do
        BAR_INPUT="%{r}Battery: $(battery)% %{l}$(clock)"
        echo $BAR_INPUT
        sleep 1
done
