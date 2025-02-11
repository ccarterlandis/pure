function _pure_prompt_ssh_user
    set --local username (whoami) # current user name
    set --local username_color (_pure_set_color magenta) # default color

    if test "$username" = "root"
        set username_color (_pure_set_color red) # different color for root
    end

    echo "$username_color$username"
end
