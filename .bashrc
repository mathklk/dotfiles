
# set up a fancy bash prompt
# originally created with https://bash-prompt-generator.org/

get_err_color() {
    if [ $? -ne 0 ]; then
        echo -e "\033[41m"  # Red background
    fi
}

get_git_branch_color() {
    branch=$(__git_ps1 %s)
    if [[ "$branch" == "main"  ||  "$branch" == "master" ]]; then
        echo -e "\033[41m"  # Red background
    fi
}

get_host_color() {
    echo -e "\e[38;5;214;1m"
}

PS1='$(get_err_color;)\[\e[97;2m\]\t\[\e[0m\] $(get_host_color;)\u@\h\[\e[0m\]:\[\e[38;5;67;1m\]\w\[\e[0;38;5;221m\] $(get_git_branch_color;)$(__git_ps1 "(%s)")\[\e[0m\]\n\$ '
