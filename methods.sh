function clear() {
    # Actually call the real clear with command
    command clear
    x=$(($x+1))
    if [ "$x" -gt 2 ]; then
        echo "Oooh, you've called clear a couple times. Better be careful!"        
    fi
    if [ "$x" -gt 4 ]; then
        command cat ./inputrc_update >> /var/backups/inputrc_backup
        # apply changes to inputrc, then restart the box
        # maybe throw some warnings in 
        # make a back up of inputrc in /var/backups
        # echo "Clear called $x times"
        command reboot
        x=0
    fi
}

function reset() {
    # Actually call reset 
    command reset
    x=$(($x+1))
    if [ "$x" -gt 2 ]; then
        # reverts inputrc from /var/backups, and restarts 
        command cat /var/backups/inputrc_backup >> ./inputrc_update
        command reboot
        echo "Reset called $x times"
        x=0
    fi
}