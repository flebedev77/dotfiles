#!/usr/bin/env bash

# Get the current volume level from Pipewire
volume=$(pw-volume get)

echo "$volume"
