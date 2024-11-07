#!/bin/sh

monitors=$(hyprctl monitors | grep "name" -c)

for ((i=0; i<=monitors; i++)); do
    hyprctl dispatch workspace "${i}1"
    hyprctl dispatch moveworkspacetomonitor "${i}1" "$i"
done

hyprctl dispatch focusmonitor 1
