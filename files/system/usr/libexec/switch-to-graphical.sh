#!/usr/bin/env bash

if grep -qv "graphical.target" <<< "$(systemctl get-default)"; then
  systemctl set-default graphical.target
fi