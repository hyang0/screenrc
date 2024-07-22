#!/bin/bash

RC_NAME=$1
RC_DIR="/screenjob"
if [ ! -d "$RC_DIR" ]; then
    RC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
fi

cp -fv ${RC_DIR}/template/x_rc.sh ${RC_DIR}/rc_job/${RC_NAME}_rc.sh
cp -fv ${RC_DIR}/template/x.sh ${RC_DIR}/rc_job/${RC_NAME}.sh
cmd=`echo sed -i "'s/RC_NAME=.*/RC_NAME=${RC_NAME}/'" ${RC_DIR}/rc_job/${RC_NAME}_rc.sh`
echo $cmd
eval $cmd

cmd1=`echo sed -i "'s@RC_DIR=.*@RC_DIR=${RC_DIR}@'" ${RC_DIR}/rc_job/${RC_NAME}_rc.sh`
echo $cmd1
eval $cmd1

