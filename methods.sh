function clear() {
    command clear
    x=$(($x+1))
    if [ "$x" -gt 2 ]; then
        echo "Oooh, you've called clear a couple times. Better be careful!"        
    fi
    if [ "$x" -gt 4 ]; then
        command setxkbmap -variant "dvorak"
        echo "Look, I told you to be careful. Can you figure out a way to reset your keyboard? HINT: You have a dvorak layout"

        x=0
    fi
}

function reset() {
    command reset
    x=$(($x+1))
    if [ "$x" -gt 1 ]; then
        echo "You're on the right track. Keep at it to reset your keyboard!"
    if [ "$x" -gt 2 ]; then
        command setxkbmap -variant ""
        echo "You did it! But did you learn your lesson?"
        x=0
    fi
}
