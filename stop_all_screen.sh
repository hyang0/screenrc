#!/bin/bash

function stop_all_screen
{
    for item in `screen -ls| grep Detached| awk '{print $1}'`; do
        screen -X -S $item quit
    done
}

stop_all_screen

