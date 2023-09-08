#!/bin/bash

if [[ "$1" == "-rsync" ]];
then
    echo "start using scp synchronization"
    rsync  -rv  ./  root@101.35.171.230:/www/dev/3d-measure-api
else
    echo "start using scp synchronization"
    scp  -r  ./  root@101.35.171.230:/www/dev/3d-measure-api
fi