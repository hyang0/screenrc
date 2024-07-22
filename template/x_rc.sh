#!/bin/bash

RC_NAME=speedtest_001
RC_DIR="/screenjob"
cmd="/bin/bash ${RC_DIR}/rc_job/${RC_NAME}.sh"
SCREEN=/usr/bin/screen
$SCREEN -dmS $RC_NAME
$SCREEN -x -S $RC_NAME -p 0 -X stuff "$cmd"
$SCREEN -x -S $RC_NAME -p 0 -X stuff "\n"

