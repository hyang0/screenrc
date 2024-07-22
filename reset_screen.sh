#!/bin/bash

RC_DIR=./


function restart_screen
{
    RC_NAME=$1
    screen -X -S $RC_NAME quit
    /bin/bash $RC_DIR/rc_job/${RC_NAME}_rc.sh
}


restart_screen s001

