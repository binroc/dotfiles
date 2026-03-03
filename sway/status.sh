#!/bin/sh

while :; do
  BAT=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null)
  STAT=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null)

  if [ "$STAT" = "Charging" ]; then
    [ "$BAT" = "100" ] && SYM=" TOP " || SYM=" CHG "
  elif [ "$STAT" = "Discharging" ]; then
    SYM="DISCH"
  else
    SYM=""
  fi

  echo "${BAT}% ${SYM} | $(date +'%Y-%m-%d %H:%M:%S')"
  sleep 1
done
