
alias neal='ne ~/.bash_aliases && source ~/.bash_aliases'
alias screen='screen -h 0'
alias sx='screen -x'
alias make='make -j`nproc`'

alias callgrind='valgrind --tool=callgrind'
alias cachegrind='valgrind --tool=cachegrind'
alias leakcheck='valgrind --leak-check=full --show-leak-kinds=all'

alias lns='echo first source file, then symlink'
alias pling='paplay /usr/share/sounds/freedesktop/stereo/complete.oga'
alias arp='sudo arp-scan --localnet --ignoredups'
alias ph='python3 -m http.server --bind 0.0.0.0 80'
alias psg='ps -e | grep -i'

cmm () {
    cmake $@ .. && make
}

mkcd () {
    mkdir "$1"
    cd "$1"
    return 0
}
