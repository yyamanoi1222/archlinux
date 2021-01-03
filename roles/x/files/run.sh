#!/bin/bash

while read line
do
  xfconf-query -c xfce4-keyboard-shortcuts -p "$(echo $line | awk '{print $1}')" -s "$(echo $line | awk '{$1=""; print $0}')" -n -t string
done < keyboard-shortcuts.text

while read line
do
  xfconf-query -c keyboards -p "$(echo $line | awk '{print $1}')" -s $(echo $line | awk '{$1=""; print $0}') -n -t int
done < keyboards.text

while read line
do
  xfconf-query -c xfce4-panel -p "$(echo $line | awk '{print $1}')" -s $(echo $line | awk '{$1=""; print $0}') -n -t int
done < panel.text

while read line
do
  xfconf-query -c xsettings -p "$(echo $line | awk '{print $1}')" -s "$(echo $line | awk '{$1=""; print $0}' | sed 's/^[ \t]*//' )" -n -t string
done < xsettings.text

while read line
do
  xfconf-query -c xfwm4 -p "$(echo $line | awk '{print $1}')" -s $(echo $line | awk '{$1=""; print $0}') -n -t string
done < xfwm4.text
