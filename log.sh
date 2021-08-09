#!/bin/bash

not_logged="nano vi vim"    #user configurable commands that should not be logged.
file_name="commands.sh"     #user configurable file name where commands that are logged should be saved to.

sentinel=0
for w in $not_logged
do
    if [ "$w" == $1 ]
    then
        sentinel=1
        break
    fi
done

$@
exit_code=$?
touch $file_name
if [ "$sentinel" == 0 ] && [ "$exit_code" == 0 ]
then
    echo $@ >> $file_name
elif [ "$sentinel" == 0 ]
then
    echo "Not logging since command has a fault."
else
    echo "Not logging since command is in list of commands not to be logged."
fi;