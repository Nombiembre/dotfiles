#!/bin/bash
wifi=$(ip addr | grep "wlp4s0")

if [ "wifi" = "wlp4s0" ]; then
    echo "%{F#5c94e0} %{F#ffffff}$(ip addr | grep "wlp4s0" | grep "inet" | awk '{print $2}')%{u-}"
else
    echo "%{F#5c94e0} %{F#ffffff}$(ip addr | grep "eno1" | grep "inet" | awk '{print $2}')%{u-}"
fi